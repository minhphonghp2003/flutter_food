import 'dart:convert';

import 'package:http/http.dart' as http;

import 'model/Address.dart';

class AddressProvider {
  var host = '192.168.1.3:3000';
  var path = 'v1/customer';
  http.Client client;
  AddressProvider({required this.client});
  Future<List<Address>> getAddress(String token) async {
    var response = await client.get(Uri.http(host, "$path/address"), headers: {
      "token": token,
    });
    var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes)) as List<dynamic>;
    List<Address> addresses = [];
    for (var i = 0; i < decodedResponse.length; i++) {
      Map<dynamic, dynamic> addr = decodedResponse[i];
      addresses.add(Address.fromJson(addr));
    }
    return addresses;
  }

  Future<void> updateAddress(String token, String addressId) async {
    await client.put(Uri.http(host, "$path/defaultaddress"), headers: {
      "token": token,
    }, body: {
      "address": addressId
    });
  }

  Future<Map<dynamic, dynamic>> createAddress(String token, Address addressDetail) async {
    var response = await client.post(Uri.http(host, "$path/address"), headers: {"token": token}, body: addressDetail.toJson());
    var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes)) as Map;
    return decodedResponse;
  }

  Future<void> deleteAddress(String token, String addressId) async {
    await client.delete(Uri.http(host, "$path/address"), headers: {"token": token}, body: {'id': addressId});
  }
}

// void main() async {
//   //eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ImZhYzc1YWQ2LWE1Y2MtNDczZC1iMDBjLWE1ZTQ0NWM3OGQ4MSIsInJvbGUiOiJjdXN0b21lciIsInVzZXJuYW1lIjoidXNlcjYiLCJpYXQiOjE2NzM1ODg5NTF9.pvG7fEopK5eGUn1Hoojv8xxkYYI7KZqMKgUrmZg-T9z94ILZm5cvYXW9WE7bCbL4BK9dpS6nNWBMbvFC4woxghzJGpS3U66WuLXnTotU3KlSPM5yK_OGNPVa0K9fNA17dZcAsMD7eewlMBSOw_HonZXNveJ9JdvAUvQWsOnim7Y
//
//   String token =
//       "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjkwNWYyNGFiLTgxN2QtNGVkNi1iMGM4LTU0ZjQ5MWYwOWIyNCIsInVzZXJuYW1lIjoiQSIsImlhdCI6MTY3MTM3NzQ1NH0.E5QDYog_M35gt3E11gPSU1s33meQ-1ufJGKAIwWNwb0_8mTQupVcEf0qKVfeqYkAPnVMFi7iG3rfOVtTvdlLYFhnMba-3TAhVjFjR7mGrnW14G-EI6G_VQa3sx4rj6mXgYUqqyObfhODhuw-8r4louSOxa7LZz7uE1sKHWZ1Q0U";
//   AddressProvider provider = new AddressProvider(client: http.Client());
//   List<Address> addrs = await provider.getAddress(token);
//   print(addrs);
// }
