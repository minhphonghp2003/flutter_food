import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/address/presentation/CreateAddressPage.dart';

import 'bloc/AddressBloc.dart';

class Delivery extends StatelessWidget {
  const Delivery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AddressBloc(),
      child: AddressPage(),
    );
  }
}
