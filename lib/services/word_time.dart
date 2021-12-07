import 'dart:convert';
import 'package:http/http.dart' as http;

class WorldTime {
  WorldTime({required this.location, required this.urlLocation});

  String location;
  String urlLocation;
  String time = "";

  Future<void> getTime() async {
    try {
      var url = Uri.parse('https://worldtimeapi.org/api/timezone/$urlLocation');
      var response = await http.get(url);

      Map data = jsonDecode(response.body);

      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);

      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      // ignore: avoid_print
      print(now);
      time = now.toString();
    } catch (error) {
      // ignore: avoid_print
      print('caught error : $error');
      time = 'could not get time data';
    }
  }
}
