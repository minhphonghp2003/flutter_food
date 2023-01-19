import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/address/bloc/AddressBloc.dart';
import 'package:food/address/bloc/AddressState.dart';
import 'package:food/address/model/Address.dart';
import 'package:food/address/presentation/widget/AddressForm.dart';

class CreateAddressPage extends StatefulWidget {
  CreateAddressPage({Key? key, this.action = "create", this.address}) : super(key: key);
  String action;
  Address? address;

  @override
  State<CreateAddressPage> createState() => _CreateAddressPageState();
}

class _CreateAddressPageState extends State<CreateAddressPage> {
  @override
  void initState() {
    super.initState();
  }

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
            BlocBuilder<AddressBloc, AddressState>(builder: (context, state) {
              if (state is AddressStateCreatedSuccess) {
                return Center(
                  child: Container(
                    // autogroupkm37cfk (W759DFpi4sneC5W488kM37)
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 34),
                    width: double.infinity,
                    child: Container(
                      // addnewaddressq2i (814:4425)
                      // margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                      child: Text(
                        'Address added successfully',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          // fontWeight: FontWeight.w400,
                          height: 1.2575,
                          color: Colors.redAccent,
                        ),
                      ),
                    ),
                  ),
                );
              }
              return Text("");
            }),
            AddressForm()
          ],
        ),
      ),
    );
  }
}
