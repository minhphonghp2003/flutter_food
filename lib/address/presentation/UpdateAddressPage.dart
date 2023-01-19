import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/address/model/Address.dart';
import 'package:food/address/presentation/widget/AddressForm.dart';

import '../bloc/AddressBloc.dart';
import '../bloc/AddressState.dart';

class UpdateAddressPage extends StatefulWidget {
  UpdateAddressPage({Key? key, required this.address}) : super(key: key);
  String action = "update";
  Address address;

  @override
  State<UpdateAddressPage> createState() => _UpdateAddressPageState();
}

class _UpdateAddressPageState extends State<UpdateAddressPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AddressBloc(),
      child: Scaffold(
        body: SafeArea(
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
                        'Update address',
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
                            'Address updated successfully',
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
                AddressForm(
                  action: widget.action,
                  address: widget.address,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
