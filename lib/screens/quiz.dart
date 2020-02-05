import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Padding(

              padding: const EdgeInsets.all(15.0),
              child: Center(
                child: Text(
                  'This is where the question text will go',
                  style: GoogleFonts.lato(fontSize: 25.0, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(5.0),
              child: FlatButton(
                child: Text('True',style: TextStyle(color: Colors.white,fontSize: 20.0),),
                color: Colors.blue,
                onPressed: () {},
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(5.0),
              child: FlatButton(
                child: Text(
                  'False',
                  style: TextStyle(color: Colors.white,fontSize: 20.0),
                ),
                color: Colors.red,
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
