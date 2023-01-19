import 'package:food/address/dataProvider.dart';
import 'package:food/address/model/Address.dart';
import 'package:http/http.dart' as http;

class AddressRepository {
  AddressProvider _addressProvider = new AddressProvider(client: http.Client());

  Future<List<Address>> getAddress(String token) async {
    return await _addressProvider.getAddress(token);
  }

  Future<void> updateAddress(String token, String addressId) async {
    await _addressProvider.updateAddress(token, addressId);
  }

  Future<Map<dynamic, dynamic>> createAddress(String token, Address address) async {
    return await _addressProvider.createAddress(token, address);
  }

  Future<void> deleteAddress(String token, String id) async {
    return await _addressProvider.deleteAddress(token, id);
  }
}
//
// void main() async {
//   //eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ImZhYzc1YWQ2LWE1Y2MtNDczZC1iMDBjLWE1ZTQ0NWM3OGQ4MSIsInJvbGUiOiJjdXN0b21lciIsInVzZXJuYW1lIjoidXNlcjYiLCJpYXQiOjE2NzM1ODg5NTF9.pvG7fEopK5eGUn1Hoojv8xxkYYI7KZqMKgUrmZg-T9z94ILZm5cvYXW9WE7bCbL4BK9dpS6nNWBMbvFC4woxghzJGpS3U66WuLXnTotU3KlSPM5yK_OGNPVa0K9fNA17dZcAsMD7eewlMBSOw_HonZXNveJ9JdvAUvQWsOnim7Y
//
//   String token =
//       "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjkwNWYyNGFiLTgxN2QtNGVkNi1iMGM4LTU0ZjQ5MWYwOWIyNCIsInVzZXJuYW1lIjoiQSIsImlhdCI6MTY3MTM3NzQ1NH0.E5QDYog_M35gt3E11gPSU1s33meQ-1ufJGKAIwWNwb0_8mTQupVcEf0qKVfeqYkAPnVMFi7iG3rfOVtTvdlLYFhnMba-3TAhVjFjR7mGrnW14G-EI6G_VQa3sx4rj6mXgYUqqyObfhODhuw-8r4louSOxa7LZz7uE1sKHWZ1Q0U";
//   AddressRepository repo = new AddressRepository();
//   List<Address> addrs = await repo.getAddress(token);
//   print(addrs);
// }
