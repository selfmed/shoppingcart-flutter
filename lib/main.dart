import 'package:flutter/material.dart';

void main() => runApp(ShoppingApp());

class ShoppingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: ShoppingPage(),
          ),
        ),
      ),
    );
  }
}

class ShoppingPage extends StatefulWidget {
  @override
  _ShoppingPageState createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<ShoppingPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.desktop_windows,
                  color: Colors.white,
                  size: 180,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Windows Desktop',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.orange.shade700),
              ),
              child: Text(
                'Add To Cart',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                ),
              ),
              onPressed: (){

              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.orange.shade200),
              ),
              child: Text(
                'Next Item',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
              onPressed: () {
                //The Next Item Button clicked
              },
            ),
          ),
        ),
      ],
    );
  }
}
