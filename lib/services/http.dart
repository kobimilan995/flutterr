import 'package:http/http.dart' as http;

//add real api url
String _url = 'test';

class HttpService {
  static get(url) {
    return http.get(_url+url);
  }
}