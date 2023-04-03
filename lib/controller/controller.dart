import 'package:http/http.dart' as http;

const String baseUrl = "";
const String postUrl = "https://fakestoreapi.com/products";

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



