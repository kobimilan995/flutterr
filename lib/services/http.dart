import 'package:http/http.dart' as http;

String _url = 'https://staging.sportyfriends.com/';

class HttpService {
  static get(url) {
    return http.get(_url+url);
  }
}