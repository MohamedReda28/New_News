import 'dart:convert';

import 'package:http/http.dart' as http;


class Api {
 Future<dynamic> get({required String url}) async {
    http.Response response = await http.get(Uri.parse(url));
    return jsonDecode(response.body);
  }
}
