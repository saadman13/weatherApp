import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper{

  NetworkHelper(this.url);

  // url for the location that's weather will be fetched
  final String url;

  Future getData() async{
    http.Response response = await http.get(url);
    if(response.statusCode == 200) {
      String data = response.body;
      var decodedData = jsonDecode(data);
      return decodedData;
    }// if
    else{
      print(response.statusCode);
    }// else
  }// getData
}