// 'package:http/http.dart' import 'dart:async';
// import 'dart:convert';

// as http;
// class homeBloc {
//   list<PostItem>_listPost = [];

//   final _listPostController = StreamController<List<PostItem>>.broadcast();
//   Sink get _listPostSink => _listPostController.sink;
//   Stream<List<PostItem>> get stream => _listPostController.stream;

//   void getListPost() async {
//     try {
//       final url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
//       final reponse = await http.get(url);
//       final json =jsonDecode(reponse.body) as List;
//       _listPost = json.map((e) => PostItem.fromJson(e)).toList();
//       await Future.delayed(Duration(seconds: 3));
//       _listPostSink.add(_listPost);
//     } catch(e) {
//       print(e.toString());
//     }
//   }
//   void dispose() {}
// }


