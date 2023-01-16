import 'package:food/address/model/Address.dart';

abstract class AddressEvent {}

class AddressFetched extends AddressEvent {}

class AddressUpdated extends AddressEvent {
  Address choiceAddress;
  AddressUpdated({required this.choiceAddress});
}

class AddressCreated extends AddressEvent {
  Address address;
  AddressCreated({required this.address});
}
