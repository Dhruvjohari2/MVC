import 'package:http/http.dart' as http;

class PostController {
  Future<Object?> getPostList() async {
    var url = Uri.https('reqres.in', '/api/users');

    final response = await http.post(url, body: {
      "name": "Dhruv",
      "job" :  "Application Developer"
    });

    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    if (response.statusCode == 201) {
      return response.body;
    }
    return null;
  }
}
