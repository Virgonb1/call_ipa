import 'dart:convert';
import 'package:http/http.dart' as http;

enum APIMethod { post, get }

final networkService = NetworkService();

class NetworkService {
  Future requestData({
    required String url,
    APIMethod method = APIMethod.get,
  }) async {
    try {
      final apiUrl = Uri.parse(url);
      http.Response response;
      switch (method) {
        case APIMethod.get:
          response = await http.get(apiUrl);
          break;
        case APIMethod.post:
          response = await http.post(apiUrl);
          break;
      }

      final jsonData = jsonDecode(response.body);
      return jsonData;
    } catch (e) {}
  }
}
