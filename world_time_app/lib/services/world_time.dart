import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';
class WorldTime{

  String location;
  String time;
  String flag;
  String url;
  bool isDaytime;
  WorldTime({this.location,this.flag,this.url});

  Future<void> getTime() async {
    try{
      Response response = await get('http://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode(response.body);
      //print(data);

      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1,3);
      String offset1 = data['utc_offset'].substring(4,);
//    print(datetime);
      //print(offset1);
      DateTime now = DateTime.parse(datetime);
      now =  now.add(Duration(hours:int.parse(offset)));
      now =  now.add(Duration(minutes:int.parse(offset1)));

      isDaytime = now.hour > 7 && now.hour < 20 ? true : false;
      time = DateFormat.jm().format(now);

    }
    catch(e){
      print("Error:$e");
      time = "Could Not get time";
    }

  }
}

