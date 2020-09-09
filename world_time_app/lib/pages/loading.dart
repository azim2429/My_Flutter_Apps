import 'package:flutter/material.dart';
import 'package:worldtimeapp/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {


   void setupWorldTime() async{
     WorldTime intstance = WorldTime(location: 'Mumbai',flag: 'india.png',url:'Asia/Kolkata');
     await intstance.getTime();
     Navigator.pushReplacementNamed(context, '/home',arguments: {
       'location':intstance.location,
       'flag':intstance.flag,
       'time':intstance.time,
       'isDaytime' : intstance.isDaytime,
     });
   }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(
          backgroundColor: Colors.blue,
        body:Center(
          child: SpinKitFadingCube(
            color: Colors.white,
            size: 80.0,
          ),
        )

      ),
    );
  }
}
