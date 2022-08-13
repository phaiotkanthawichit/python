import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() {
    return MainPageState();
  }
}

class MainPageState extends State<MainPage> {

  var ctl_product = TextEditingController();
  var ctl_price = TextEditingController();
  var ctl_qty = TextEditingController();
  var result = '------ Result --------';


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
          Padding(
            padding: EdgeInsets.fromLTRB(50, 10, 10, 10),
            child: Image.asset('images/logo.png'),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
            child: Image.asset('images/logo.png'),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
            child: TextField(
              controller: ctl_product,
              decoration: InputDecoration(
                  labelText: 'สินค้า', border: OutlineInputBorder()),
            ),
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
            child: TextField(
              controller: ctl_qty,
              decoration: InputDecoration(
                  labelText: 'จำนวน', border: OutlineInputBorder()),
            ),
          ),


          Padding(
            padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
            child: TextField(
              controller: ctl_price,
              decoration: InputDecoration(
                  labelText: '@ ราคา', border: OutlineInputBorder()),
            ),
          ),

        ],
      ),



      floatingActionButton: FloatingActionButton(
        child: Text('Click'),
        onPressed: () {
          print('Cilck print');
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
