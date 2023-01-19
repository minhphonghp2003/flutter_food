import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:food/address/bloc/AddressEvent.dart';
import 'package:food/address/bloc/AddressState.dart';

import '../model/Address.dart';
import '../repository.dart';

class AddressBloc extends Bloc<AddressEvent, AddressState> {
  final _storage = new FlutterSecureStorage();
  AddressRepository _repository = new AddressRepository();
  AddressBloc() : super(AddressStateInitial()) {
    on<AddressFetched>(_fetchAddress);
    on<AddressUpdated>(_updateAddress);
    on<AddressCreated>(_createAddress);
    on<AddressDeleted>(_deleteAddress);
  }

  Future<String?> _getToken() async {
    String? login_cookie = await _storage.read(key: "login_cookie");
    String? token = jsonDecode(login_cookie!)["token"];
    return token;
  }

  _deleteAddress(AddressDeleted event, emit) async {
    String? token = await _getToken();
    await _repository.deleteAddress(token!, event.address.id!);
    emit(AddressStateDeletedSuccess(deletedAddr: event.address));
  }

  _createAddress(AddressCreated event, emit) async {
    String? token = await _getToken();
    Map<dynamic, dynamic> response = await _repository.createAddress(token!, event.address);
    if (!response.containsKey("error")) {
      emit(AddressStateCreatedSuccess());
    }
  }

  _updateAddress(AddressUpdated event, emit) async {
    String? token = await _getToken();
    await _repository.updateAddress(token!, event.choiceAddress.id!);
    add(AddressFetched());
  }

  _fetchAddress(event, emit) async {
    String? token = await _getToken();
    List<Address> addresses;
    try {
      addresses = await _repository.getAddress(token!);
      if (addresses.length == 0) {
        emit(AddressStateEmpty());
      } else {
        for (int i = 0; i < addresses.length; i++) {
          if (addresses[i].isDefault!) {
            _swap(addresses, 0, i);
            break;
          }
        }
        emit(AddressStateFetchedSuccess(addresses: addresses));
      }
    } catch (e) {
      emit(AddressStateFetchedFailure());
    }
  }

  void _swap<T>(List<T> list, firstIndx, secondIndx) {
    T temp = list[firstIndx];
    list[firstIndx] = list[secondIndx];
    list[secondIndx] = temp;
  }
}

// void main() async {
//   String token =
//       "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ImZhYzc1YWQ2LWE1Y2MtNDczZC1iMDBjLWE1ZTQ0NWM3OGQ4MSIsInJvbGUiOiJjdXN0b21lciIsInVzZXJuYW1lIjoidXNlcjYiLCJpYXQiOjE2NzM1ODg5NTF9.pvG7fEopK5eGUn1Hoojv8xxkYYI7KZqMKgUrmZg-T9z94ILZm5cvYXW9WE7bCbL4BK9dpS6nNWBMbvFC4woxghzJGpS3U66WuLXnTotU3KlSPM5yK_OGNPVa0K9fNA17dZcAsMD7eewlMBSOw_HonZXNveJ9JdvAUvQWsOnim7Y";
//   AddressBloc bloc = new AddressBloc();
//   bloc.add(AddressFetched(token: token));
//   await Future.delayed(Duration(seconds: 3));
//
//   print(bloc.state); // 1
// }
