import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:food/authenticate/presentation/widget/CustomImputField.dart';
import 'package:food/foodlist/presentation/widget/CustomFloatingButton.dart';
import 'package:http/http.dart' as http;

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

class AddressPage extends StatefulWidget {
  AddressPage({Key? key}) : super(key: key);

  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
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
      child: Container(
        // addnewaddressk7k (814:4397)
        padding: EdgeInsets.fromLTRB(26, 37, 24, 33),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: ListView(
          children: [
            Center(
              child: Container(
                // autogroupkm37cfk (W759DFpi4sneC5W488kM37)
                margin: EdgeInsets.fromLTRB(0, 0, 0, 34),
                width: double.infinity,
                child: Container(
                  // addnewaddressq2i (814:4425)
                  // margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: Text(
                    'Add new address',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      height: 1.2575,
                      color: Color(0xff111719),
                    ),
                  ),
                ),
              ),
            ),
            Form(
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
                        field: "Street (Include house number)", controller: street, validator: null, icon: Icons.location_on, isPassword: false),
                    CustomFloatingButtonExtend(
                        child: Text("Confirm"),
                        backgroundColor: Colors.redAccent,
                        onPressed: () {
                          try {
                            print("${chosenWard!["name"]}, ${chosenDistrict!["name"]}, ${chosenCity!["name"]}, ${street.text}");
                          } catch (e) {
                            print(e);
                          }
                        })
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
