import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/address/bloc/AddressBloc.dart';

import '../../../address/bloc/AddressEvent.dart';
import '../../../address/bloc/AddressState.dart';
import '../../../address/model/Address.dart';

class AppbarTitle extends StatelessWidget {
  const AppbarTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AddressBloc()..add(AddressFetched()),
      child: BlocBuilder<AddressBloc, AddressState>(
        builder: (context, state) {
          if (state is AddressStateFetchedSuccess) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      // deliverto3TX (814:6504)
                      // margin: EdgeInsets.fromLTRB(0, 1, 7.5, 0),
                      child: Text(
                        'Deliver to',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          height: 1.2230001177,
                          color: Color(0xff8b9099),
                        ),
                      ),
                    ),
                  ],
                ),
                BlocBuilder<AddressBloc, AddressState>(builder: (context, state) {
                  if (state is AddressStateFetchedSuccess) {
                    return DropdownButton<Address>(
                      isExpanded: true,
                      value: state.addresses[0],
                      icon: const Icon(
                        Icons.arrow_downward,
                        size: 15,
                      ),
                      elevation: 16,
                      style: const TextStyle(color: Colors.deepPurple),
                      onChanged: (Address? value) {
                        context.read<AddressBloc>().add(AddressDefaultUpdated(choiceAddress: value!));
                      },
                      items: state.addresses.map<DropdownMenuItem<Address>>((Address value) {
                        return DropdownMenuItem<Address>(
                          value: value,
                          child: Center(
                            child: Text(
                              "${value.street} ${value.commune_ward} ${value.district} ${value.city}",
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
                    );
                  }

                  return Text("Loading....");
                }),
              ],
            );
          }
          return Column();
        },
      ),
    );
  }
}
