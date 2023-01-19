import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

import '../../../authenticate/presentation/widget/CustomImputField.dart';
import '../../../foodlist/presentation/widget/CustomFloatingButton.dart';
import '../../bloc/AddressBloc.dart';
import '../../bloc/AddressEvent.dart';
import '../../model/Address.dart';

Future<List<dynamic>> fetchLocation(int code, String type) async {
  var client = http.Client();
  if (code == 0) {
    final response = await client.get(Uri.http('vn-public-apis.fpo.vn', 'provinces/getAll', {"limit": "-1"}));
    if (response.statusCode == 200) {
      return json.decode(response.body)["data"]["data"];
    } else {
      throw Exception('Failed to fetch data');
    }
  } else if (type == "district") {
    final response = await client.get(Uri.http('vn-public-apis.fpo.vn', 'districts/getByProvince', {"limit": "-1", "provinceCode": "${code}"}));
    if (response.statusCode == 200) {
      return json.decode(response.body)["data"]["data"];
    } else {
      throw Exception('Failed to fetch data');
    }
  } else if (type == "ward") {
    final response = await client.get(Uri.http('vn-public-apis.fpo.vn', 'wards/getByDistrict', {"limit": "-1", "districtCode": "${code}"}));
    if (response.statusCode == 200) {
      return json.decode(response.body)["data"]["data"];
    } else {
      throw Exception('Failed to fetch data');
    }
  }
  return [];
}

class AddressForm extends StatefulWidget {
  AddressForm({Key? key, this.action = "create", this.address}) : super(key: key);
  String action;
  Address? address;

  @override
  State<AddressForm> createState() => _AddressFormState();
}

class _AddressFormState extends State<AddressForm> {
  TextEditingController street = TextEditingController();
  List<dynamic>? cities;
  List<dynamic>? districts;
  List<dynamic>? commune_wards;

  Map<dynamic, dynamic>? chosenCity;
  Map<dynamic, dynamic>? chosenDistrict;
  Map<dynamic, dynamic>? chosenWard;

  void fetchCity() async {
    var response = await fetchLocation(0, "city");
    setState(() {
      cities = response;
      chosenCity = cities![0];
      chooseCity(chosenCity);
    });
  }

  void fetchDistrict(int code) async {
    var response = await fetchLocation(code, "district");
    setState(() {
      districts = response;
      chosenDistrict = districts![0];
      chooseDistrict(chosenDistrict);
    });
  }

  void fetchWard(int code) async {
    var response = await fetchLocation(code, "ward");
    setState(() {
      commune_wards = response;
      chosenWard = commune_wards![0];
      chooseWard(chosenWard);
    });
  }

  void chooseCity(Map<dynamic, dynamic>? chosen) {
    setState(() {
      chosenCity = chosen;
      fetchDistrict(int.parse(chosen!["code"]));
    });
  }

  void chooseDistrict(Map<dynamic, dynamic>? chosen) {
    setState(() {
      chosenDistrict = chosen;
      fetchWard(int.parse(chosen!["code"]));
    });
  }

  void chooseWard(Map<dynamic, dynamic>? chosen) {
    setState(() {
      chosenWard = chosen;
    });
  }

  @override
  void initState() {
    super.initState();
    fetchCity();
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Form(
          key: _formKey,
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(flex: 1, child: Text("City/Province")),
                  Expanded(
                    flex: 2,
                    child: Container(
                        margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
                        child: DropdownButton<dynamic>(
                          underline: SizedBox(),
                          // isExpanded: true,
                          // list.where((e) => e["value"] > 10).toList();
                          value: chosenCity,
                          icon: const Icon(
                            Icons.arrow_downward,
                            size: 15,
                          ),
                          elevation: 16,
                          style: const TextStyle(color: Colors.deepPurple),
                          onChanged: (dynamic? value) {
                            chooseCity(value);
                          },
                          items: cities?.map<DropdownMenuItem<dynamic>>((dynamic value) {
                            return DropdownMenuItem<dynamic>(
                              value: value,
                              child: Center(
                                child: Text(
                                  "${value["name"]}",
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    height: 1.2230000814,
                                    color: Color(0xfffe724c),
                                  ),
                                ),
                              ),
                            );
                          }).toList(),
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(flex: 1, child: Text("District")),
                  Expanded(
                    flex: 2,
                    child: Container(
                        margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
                        child: DropdownButton<dynamic>(
                          underline: SizedBox(),
                          // isExpanded: true,
                          value: chosenDistrict,
                          icon: const Icon(
                            Icons.arrow_downward,
                            size: 15,
                          ),
                          elevation: 16,
                          style: const TextStyle(color: Colors.deepPurple),
                          onChanged: (dynamic? value) {
                            chooseDistrict(value);
                          },
                          items: districts?.map<DropdownMenuItem<dynamic>>((dynamic value) {
                            return DropdownMenuItem<dynamic>(
                              value: value,
                              child: Center(
                                child: Text(
                                  "${value["name"]}",
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    height: 1.2230000814,
                                    color: Color(0xfffe724c),
                                  ),
                                ),
                              ),
                            );
                          }).toList(),
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(flex: 1, child: Text("Commune/Ward")),
                  Expanded(
                    flex: 2,
                    child: Container(
                        margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
                        child: DropdownButton<dynamic>(
                          // isExpanded: true,
                          underline: SizedBox(),
                          value: chosenWard,
                          icon: const Icon(
                            Icons.arrow_downward,
                            size: 15,
                          ),
                          elevation: 16,
                          style: const TextStyle(color: Colors.deepPurple),
                          onChanged: (dynamic? value) {
                            chooseWard(value);
                          },
                          items: commune_wards?.map<DropdownMenuItem<dynamic>>((dynamic value) {
                            return DropdownMenuItem<dynamic>(
                              value: value,
                              child: Center(
                                child: Text(
                                  "${value["name"]}",
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    height: 1.2230000814,
                                    color: Color(0xfffe724c),
                                  ),
                                ),
                              ),
                            );
                          }).toList(),
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              CustomInputField(
                  field: "Street (Include house number)",
                  controller: street,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please input a street";
                    }
                    return null;
                  },
                  icon: Icons.location_on,
                  isPassword: false),
              CustomFloatingButtonExtend(
                  child: Text("Confirm"),
                  backgroundColor: Colors.redAccent,
                  onPressed: () {
                    if (widget.action == 'create') {
                      createAddress(_formKey, context, street.text, chosenWard!["type"] + " " + chosenWard!["name"],
                          chosenDistrict!["type"] + " " + chosenDistrict!["name"], chosenCity!["type"] + " " + chosenCity!["name"]);
                    }
                    if (widget.action == 'update') {
                      print("update address ${widget.address}");
                    }
                  })
            ],
          )),
    );
  }
}

void createAddress(dynamic formKey, BuildContext context, String street, String ward, String district, String city) {
  if (formKey.currentState!.validate()) {
    Address address = new Address(street: street, district: district, city: city, commune_ward: ward);
    context.read<AddressBloc>().add(AddressCreated(address: address));
  }
}
