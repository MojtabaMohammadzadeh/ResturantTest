
import 'dart:convert';

import 'package:http/http.dart' as http;
class ApiProvider {



  String baseUrl = "https://hotelsa.smbm.ir/api/service";

  Future<http.Response> get(String endpoint) async {
    final response = await http.get(Uri.parse('$baseUrl/$endpoint'));



    return response;

  }

  Future<http.Response> post(String endpoint, {Map<String, String>? data}) async {
    final response = await http.post(Uri.parse('$baseUrl/$endpoint'), body: data);
    return response;
  }

  // Add other HTTP methods (PUT, DELETE, etc.) as needed.

  // Helper method to extract data from response body as a Map
  Map<String, dynamic> extractData(http.Response response) {
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load data');
    }
  }
}

