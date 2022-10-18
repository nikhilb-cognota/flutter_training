import 'dart:async';
import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../../core/constants/api_endpoints.dart';
import '../models/user_model.dart';

class UsersController extends GetxController {
  final users = <User>[].obs;

  Future<List<User>> getUsers() {
    final completer = Completer<List<User>>();

    final url = Uri.https(
      ApiEndpoints.baseUrl,
      ApiEndpoints.getUsers,
      {},
    );

    http.get(url).then((response) {
      print(response.statusCode);
      print(response.body);

      if (response.statusCode >= 200 && response.statusCode < 300) {
        final jsonBody = jsonDecode(response.body);

        print('jsonBody datatype: ${jsonBody.runtimeType}');

        // List<Map<String, dynamic>>

        // true/false
        final dataValue = response.body;

        // {"id": 0, "name": "abc"}
        final dataObject = User.fromMap(jsonBody[0]);

        // [{"id": 0, "name": "abc"}, {"id": 1, "name": "xyz"}]
        final dataList =
            (jsonBody as List).map((e) => User.fromMap(e)).toList();

        users.clear();

        users.addAll(dataList);

        completer.complete(dataList);
      } else if (response.statusCode >= 300 && response.statusCode < 400) {
        print('Redirect error');

        completer.completeError(response.statusCode);
      } else if (response.statusCode >= 400 && response.statusCode < 500) {
        print('Authentication error');
        completer.completeError(response.statusCode);
      } else {
        // response.statusCode >= 500

        print('Internal server error');
        completer.completeError(response.statusCode);
      }
    }).catchError((e) {
      print(e);

      completer.completeError(e);
    });

    return completer.future;
  }

  Future<List<User>> createUser() {
    final completer = Completer<List<User>>();

    final url = Uri.parse(
      'https://' + ApiEndpoints.baseUrl + '/' + ApiEndpoints.createUser,
    );

    http.post(
      url,
      body: {"name": "abc xyz", "mobile": "988761234"},
    ).then((response) {
      print(response.statusCode);
      print(response.body);

      if (response.statusCode >= 200 && response.statusCode < 300) {
        final jsonBody = jsonDecode(response.body);

        print('jsonBody datatype: ${jsonBody.runtimeType}');

        // List<Map<String, dynamic>>

        // true/false
        final dataValue = response.body;

        // {"id": 0, "name": "abc"}
        final dataObject = User.fromMap(jsonBody[0]);

        // [{"id": 0, "name": "abc"}, {"id": 1, "name": "xyz"}]
        final dataList =
            (jsonBody as List).map((e) => User.fromMap(e)).toList();

        users.clear();

        users.addAll(dataList);

        completer.complete(dataList);
      } else if (response.statusCode >= 300 && response.statusCode < 400) {
        print('Redirect error');

        completer.completeError(response.statusCode);
      } else if (response.statusCode >= 400 && response.statusCode < 500) {
        print('Authentication error');
        completer.completeError(response.statusCode);
      } else {
        // response.statusCode >= 500

        print('Internal server error');
        completer.completeError(response.statusCode);
      }
    }).catchError((e) {
      print(e);

      completer.completeError(e);
    });

    return completer.future;
  }
}
