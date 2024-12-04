// ignore_for_file: file_names

import 'package:app/Screens/Favorite.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../Models/Favs.dart';
import '../Profile/profile.dart';

class FavSearch extends SearchDelegate{

  
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: (){
            query = '';
          },
          icon: const Icon(Icons.clear)
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: (){
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back_outlined)
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return StreamBuilder<List<Favs>>( // builder is called according to latest snapshot
        stream: readFavourites(query: query),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(
              child: Text("Error occured!"),
            );
          } else if (snapshot.hasData) {
            final favs = snapshot.data!; // data passed in Favs favs
            return
              ListView(
                children: favs.map(buildFavs).toList(),
              );


          } else if (!snapshot.hasData) {
            return const Center(
              child: Text("Empty"),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        }
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return StreamBuilder<List<Favs>>( // builder is called according to latest snapshot
        stream: readFavourites(query: query),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(
              child: Text("Error occured!"),
            );
          } else if (snapshot.hasData) {
            final favs = snapshot.data!; // data passed in Favs favs
            return
              ListView(
                children: favs.map(buildFavs).toList(),
              );


          } else if (!snapshot.hasData) {
            return const Center(
              child: Text("Empty"),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        }
    );
  }
  Stream<List<Favs>> // receive a sequence of events
  readFavourites({required String? query}) {
    return FirebaseFirestore.instance.collection('users').doc(user.uid).collection(
          'Favorite').where('title', isEqualTo: query)
          .snapshots().map((snapshot) =>
      snapshot.docs.map((doc) =>
      Favs.fromJson(doc.data()))
          .toList());
  }
  Widget buildFavs(Favs favs) {
    return FavoriteData(
      title: favs.title!,
      image: favs.image!,
      time: favs.time!.toString(),
      servings: favs.servings!.toString(),
      docId: favs.id,
      c: 1,
      info: favs.info!,
      isVeg: favs.isVeg,
    );
  }

}