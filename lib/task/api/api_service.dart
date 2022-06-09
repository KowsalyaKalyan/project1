import '../../allpackages.dart';
import 'package:http/http.dart' as http;

class service {
  Future<Model> httpFunc() async {
    var response =
        await http.get(Uri.parse('https://reqres.in/api/users?page=2'));

    if (response.statusCode == 200) {
      return Model.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }
}
