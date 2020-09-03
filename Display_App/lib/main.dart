import 'package:flutter/material.dart';

void main()=> runApp(MaterialApp (
home:Test(),
));
class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
    int age = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
      appBar:AppBar(
        title: Text('Nav-Bar'),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
        elevation: 0.0,
      ),
      floatingActionButton:FloatingActionButton(
        onPressed: (){
          setState(() {
            age++;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.cyan,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:<Widget> [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("images/azim.jpg"),
                radius: 45.0,
              ),
            ),
            Divider(
              height: 90.0,
              color: Colors.blue[800],
            ),
            Text(
              "NAME",
              style: TextStyle(
                color:Colors.white,
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight:FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              "Abdul Azim",
              style: TextStyle(
                color:Colors.lightBlue[100],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(
              height: 20.0,
              color: Colors.blue[800],
            ),
            SizedBox(height: 30.0,),
            Text(
              "Age",
              style: TextStyle(
                color:Colors.white,
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight:FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              "$age",
              style: TextStyle(
                color:Colors.lightBlue[100],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            Divider(
              height: 50.0,
              color: Colors.blue[800],
            ),
            Text(
              "Gender",
              style: TextStyle(
                color:Colors.white,
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight:FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              "Male",
              style: TextStyle(
                color:Colors.lightBlue[100],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Center(
              child: Row(
                children:<Widget> [
                  Icon(
                    Icons.email,
                    color: Colors.amber,
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    "abdulazim0402@gmail.com",
                    style: TextStyle(
                      letterSpacing: 2.0,
                      color:Colors.lightBlueAccent,
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



