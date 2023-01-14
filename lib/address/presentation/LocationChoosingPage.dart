import 'package:flutter/material.dart';
import 'package:food/address/presentation/widget/CustomListViewOfTitle.dart';

class LocationChoosingPage extends StatelessWidget {
  LocationChoosingPage({Key? key, required this.locations}) : super(key: key);
  List<dynamic> locations;

  @override
  Widget build(BuildContext context) {
    return CustomListViewBuilder(
      titles: locations,
    );
  }
}
