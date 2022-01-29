import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white ,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                FlatButton(
                  onPressed: (){},
                  child: Text('FlatButton'),
                  color: Colors.amber,
                  textColor: Colors.black,
                ),
                OutlineButton(
                  onPressed: (){},
                  child: Text('OutlinedButton'),
                  textColor: Colors.black,
                ),
                RaisedButton(
                  onPressed: (){},
                  child: Text('Raisebutton'),
                  color: Colors.blue,
                  textColor: Colors.black,
                  elevation: 20,
                ),
              ],
            ),
            Switch(
              onChanged: (IsEnable){},
              value: true,
            ),
            Slider(
              onChanged: (value){},
              value: 30,
              min: 1,
              max: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image(
                image: NetworkImage('https://cdn.pixabay.com/photo/2021/09/18/20/50/truffles-6636081_960_720.jpg'),
                height: 200,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  hintText: 'type your name',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'type your password',
                  border: OutlineInputBorder(),
                ),
              ),
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.access_time),
        backgroundColor: Colors.black,
      ),
    );
  }
}

