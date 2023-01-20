import 'package:food/address/model/Address.dart';

abstract class AddressEvent {}

class AddressFetched extends AddressEvent {}

class AddressDefaultUpdated extends AddressEvent {
  Address choiceAddress;
  AddressDefaultUpdated({required this.choiceAddress});
}

class AddressCreated extends AddressEvent {
  Address address;
  AddressCreated({required this.address});
}

class AddressDeleted extends AddressEvent {
  Address address;
  AddressDeleted({required this.address});
}

class AddressUpdated extends AddressEvent {
  Address address;
  AddressUpdated({required this.address});
}
