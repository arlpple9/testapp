import 'package:http/http.dart' as http;
import 'dart:convert';

// ignore: camel_case_types
class Database_Manager {
 
   Future<String> getData() async{
    var url = 'https://chiquititawardrobe.000webhostapp.com/get.php';
    http.Response response = await http.get(url);
    var data = jsonDecode(response.body);

    return data.toString();
  }

}
