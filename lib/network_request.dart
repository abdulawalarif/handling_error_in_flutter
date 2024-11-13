// fetch_network_data.dart
import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:handling_error_in_flutter/user_model.dart';
import 'package:http/http.dart' as http;


const url = 'https://jsonplaceholder.typicode.com/users';
typedef EitherUserList = Future<Either<String, List<User>>>;

class FetchNetworkData {
  EitherUserList getReq() async {
    try {
      var response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final List<dynamic> jsonList = json.decode(response.body);
        final List<User> users =
            jsonList.map((json) => User.fromJson(json)).toList();
        return right(users);
      }
      throw 'Some unexpected error occurred!';
    } catch (e) {
      return left(e.toString());
    }
  }
}
