import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/address/bloc/AddressBloc.dart';
import 'package:food/address/bloc/AddressEvent.dart';
import 'package:food/address/bloc/AddressState.dart';
import 'package:food/address/presentation/UpdateAddressPage.dart';
import 'package:food/foodlist/presentation/widget/CustomFloatingButton.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../model/Address.dart';

class DeliveryPage extends StatefulWidget {
  DeliveryPage({Key? key}) : super(key: key);

  @override
  State<DeliveryPage> createState() => _DeliveryPageState();
}

class _DeliveryPageState extends State<DeliveryPage> {
  List<Address>? addresses;

  RefreshController _refreshController = RefreshController(initialRefresh: false);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AddressBloc()..add(AddressFetched()),
      child: Scaffold(
          floatingActionButton: CustomFloatingButton(
              backgroundColor: Colors.white,
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Done",
                style: TextStyle(color: Colors.black45),
              )),
          body: SafeArea(
            child: Column(
              children: [
                BlocBuilder<AddressBloc, AddressState>(builder: (context, state) {
                  if (state is AddressStateFetchedSuccess) {
                    addresses = state.addresses;
                  } else if (state is AddressStateDeletedSuccess) {
                    addresses!.remove(state.deletedAddr);
                  } else {
                    addresses = [];
                  }
                  return Expanded(
                    child: SmartRefresher(
                      enablePullDown: true,
                      header: WaterDropMaterialHeader(),
                      controller: _refreshController,
                      onRefresh: () {
                        context.read<AddressBloc>().add(AddressFetched());
                        _refreshController.refreshCompleted();
                      },
                      child: ListView.builder(
                        itemCount: addresses?.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(
                                "${addresses?[index].street} ${addresses?[index].commune_ward} ${addresses?[index].district} ${addresses?[index].city}"),
                            trailing: SizedBox(
                              width: 130,
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: 30,
                                    child: CustomFloatingButton(
                                      backgroundColor: Colors.white,
                                      onPressed: () {
                                        context.read<AddressBloc>().add(AddressDeleted(address: addresses![index]));
                                      },
                                      child: Icon(
                                        Icons.delete,
                                        color: Colors.redAccent,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                    child: CustomFloatingButton(
                                      backgroundColor: Colors.white,
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => UpdateAddressPage(
                                                    address: addresses![index],
                                                  )),
                                        );
                                      },
                                      child: Icon(
                                        Icons.edit,
                                        color: Colors.blueAccent,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  );
                }),
              ],
            ),
          )),
    );
  }
}
