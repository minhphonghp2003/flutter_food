import '../model/Address.dart';

abstract class AddressState {}

class AddressStateInitial extends AddressState {}

class AddressStateEmpty extends AddressState {}

class AddressStateFetchedSuccess extends AddressState {
  List<Address> addresses;
  AddressStateFetchedSuccess({required this.addresses});
}

class AddressStateFetchedFailure extends AddressState {}
