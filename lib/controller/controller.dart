import 'package:http/http.dart' as http;

const String baseUrl = "";
const String postUrl = "https://gorest.co.in/public/v2/users";

class GetData {
  var client = http.Client();
  Future<String?> get() async {
    final uri = Uri.parse(baseUrl);
    final response = await client.get(uri);

    if (response.statusCode == 200) {
      return response.body;

    } else {
      //throw exception
    }
    return null;
  }
}

// class PostData {
//   var client = http.Client();
//   Future<String?> post() async {
//     var _payload = json.encode(object);
//     final uri = Uri.parse(postUrl);
//     final response = await client.post(
//       uri,
//       body: _payload,
//     );
//
//     if (response.statusCode == 201) {
//       return response.body;
//     } else {
//       //throw exception
//     }
//     return null;
//   }
// }
