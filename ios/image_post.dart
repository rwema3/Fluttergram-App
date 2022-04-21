import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'main.dart';
import 'dart:async';
import 'profile_page.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'comment_screen.dart';
import 'package:flare_flutter/flare_actor.dart';

class ImagePost extends StatefulWidget {
  const ImagePost(
      {this.mediaUrl,
      this.username,
      this.location,
      this.description,
      this.likes,
      this.postId,
      this.ownerId});

  factory ImagePost.fromDocument(DocumentSnapshot document) {
    return ImagePost(
      username: document['username'],
      location: document['location'],
      mediaUrl: document['mediaUrl'],
      likes: document['likes'],
      description: document['description'],
      postId: document.id,
      ownerId: document['ownerId'],
    );
  }

  factory ImagePost.fromJSON(Map data) {
    return ImagePost(
      username: data['username'],
      location: data['location'],
      mediaUrl: data['mediaUrl'],
      likes: data['likes'],
      description: data['description'],
      ownerId: data['ownerId'],
      postId: data['postId'],
    );
  }

  int getLikeCount(var likes) {
    if (likes == null) {
      return 0;
    }
// issue is below
    var vals = likes.values;
    int count = 0;
    for (var val in vals) {
      if (val == true) {
        count = count + 1;
      }
    }

    return count;
  }

  final String mediaUrl;
  final String username;
  final String location;
  final String description;
  final likes;
  final Str
        
        
        
       
      
        
 
   
  