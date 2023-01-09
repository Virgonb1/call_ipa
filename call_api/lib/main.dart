import 'package:call_api/network/network_service.dart';

final networkService = NetworkService();

Future callAPI() async {
  final data = await networkService.requestData(
      url: 'https://jsonplaceholder.typicode.com/posts');
  print(data);
}

void main() async {
  await callAPI();
}
