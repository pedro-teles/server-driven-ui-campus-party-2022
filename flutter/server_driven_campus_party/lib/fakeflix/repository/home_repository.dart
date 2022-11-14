import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:server_driven_campus_party/fakeflix/model/HomeScreenPresentation.dart';

import 'model/home.dart';

class HomeRepository {
  Future<HomeScreenPresentation> fetchHomeScreen() async {
    final response = await http.get(Uri.parse('http://192.168.15.72:5000/fakeflix/en-us/home'));
    final body = jsonDecode(response.body);
    final home = Home.fromJson(body);

    return HomeScreenPresentation(home.allSections());
  } 
}
