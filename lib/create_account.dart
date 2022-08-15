import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}
    
      GestureDetector(
        onTap: () {
          if (name.text == null || name.text.length == 0){
            return;
          }
          Navigator.pop(context, name.text);
        },


          child: Container(
        width: 350.0,
        height: 50.0,
        child: Center(
            child: Text(
          "Next",
          style: TextStyle(
              color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.bold),
        )),
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(7.0)),
      ))
    ]);
  }
}
