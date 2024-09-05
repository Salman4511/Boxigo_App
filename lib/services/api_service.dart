import 'dart:convert';
import 'package:boxigo_app/models/cust_estimate_model/cust_estimate_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = 'http://test.api.boxigo.in/sample-data/';

  Future<CustEstimateModel> getData() async {
    try {
      final response = await http.get(Uri.parse(baseUrl));

      if (response.statusCode == 200) {
        final parsedData =
            CustEstimateModel.fromJson(jsonDecode(response.body));
        return parsedData;
      } else {
        throw Exception(
            'Failed to load data. Status code: ${response.statusCode}');
      }
    } catch (error) {
      print('Error occurred: $error');
      throw Exception('Failed to fetch data');
    }
  }
}
