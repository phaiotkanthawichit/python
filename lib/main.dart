import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() {
    return MainPageState();
  }
}

class MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My python "),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(
                  child: Text('PyThon',
                      style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[900],
                      )),
                ),
                Icon(
                  Icons.add_alert_outlined,
                  size: 100,
                  color: Colors.red,
                )
              ],
            ),
          ],
        )
        
       floatingActionButton: FloatingActionButton(
        child: Text('Help'),
        onPressed: () {
          print("Click Help");
        },
      ),
    
   );
  }
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Python",
      home: MainPage(),
    );
  }
}

void main() {
  runApp(App());
}
