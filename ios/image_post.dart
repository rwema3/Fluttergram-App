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
      
       

      
    
       
      
    
  

  
     
    
 

  
    
    
         
      
    

  

  
        
        
        
       
      
        
 
   
  