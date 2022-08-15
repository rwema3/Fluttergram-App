import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(width: 1.0, color: Colors.black26),
              borderRadius: BorderRadius.circular(7.0)),
          child: TextField(
            controller: name,
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: const EdgeInsets.all(10.0),
                labelText: "Username",
                labelStyle: TextStyle(fontSize: 15.0)),
          ),
        ),
      ),
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
