import "package:flutter/material.dart";
import 'package:cloud_firestore/cloud_firestore.dart';
import 'main.dart'; //for currentuser & google signin instance
import 'models/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EditProfilePage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController bioController = TextEditingController();

  changeProfilePhoto(BuildContext parentContext) {
    return showDialog(
      context: parentContext,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Change Photo'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(
                    'Changing your profile photo has not been implemented yet'),
              ],
            ),
          ),
        );
      },
    );
  }

  applyChanges() {
    FirebaseFirestore.instance
        .collection('insta_users')
        .doc(currentUserModel.id)
        .update({
      "displayName": nameController.text,
      "bio": b
                )
              )
            ],
          );
        });
  }

  void _logout(BuildContext context) async {
    print("logout");
    await auth.signOut();
    await googleSignIn.signOut();

    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();

    currentUserModel = null;

    Navigator.pop(context);
  }
}
