import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:food/authenticate/presentation/widget/CustomBackButton.dart';
import 'package:food/authenticate/presentation/widget/CustomImputField.dart';
import 'package:food/foodlist/presentation/widget/CustomFloatingButton.dart';
import 'package:http/http.dart' as http;

Future<List<dynamic>> fetchProvince() async {
  var client = http.Client();
  final response = await client.get(Uri.http('vn-public-apis.fpo.vn', 'provinces/getAll', {"limit": "-1"}));
  if (response.statusCode == 200) {
    return json.decode(response.body)["data"]["data"];
  } else {
    throw Exception('Failed to fetch data');
  }
}

class AddressPage extends StatelessWidget {
  AddressPage({Key? key}) : super(key: key);
  TextEditingController city = TextEditingController();
  TextEditingController commune_ward = TextEditingController();
  TextEditingController street = TextEditingController();
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
            Container(
              // autogroupkm37cfk (W759DFpi4sneC5W488kM37)
              margin: EdgeInsets.fromLTRB(0, 0, 102.5, 34),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      // group18071WWE (814:4430)
                      // margin: EdgeInsets.fromLTRB(0, 0, 56.5, 0),
                      child: CustomBackButton(
                    onPressed: () {},
                  )),
                  Container(
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
                ],
              ),
            ),
            // CustomInputField(field: "City", controller: city, validator:null, icon: Icons.location_city, isPassword: false)
            // CustomInputField(field: "Commune/Ward", controller: commune_ward, validator:null, icon: Icon., isPassword: false)
            Form(
                key: _formKey,
                child: Column(
                  children: [
                    CustomInputField(
                        field: "Street (Include house number)", controller: street, validator: null, icon: Icons.location_on, isPassword: false),
                    Container(
                      width: double.infinity,
                      child: Row(
                        children: [
                          CustomInputField(field: "City/Province", controller: city, validator: null, icon: Icons.location_city, isPassword: false),
                          CustomFloatingButtonExtend(child: Text("Select city/province"), backgroundColor: Colors.white, onPressed: () {})
                        ],
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
