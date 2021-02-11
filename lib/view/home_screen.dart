import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:getit_v2/data/meme.dart';
import 'package:getit_v2/model/domain_controller.dart';

import '../locator.dart';




class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}




class _HomeScreenState extends State<HomeScreen> {
  Meme visibleMeme;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: visibleMeme != null
            ? Center(
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Category ${visibleMeme.category}",
                        style: TextStyle(fontSize: 32, color: Colors.blueAccent),
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        padding: EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[300]),
                        ),
                        /// child: Image.network(visibleMeme.imageUrl),   /// [server data: imageUrl]
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        "Caption ${visibleMeme.caption}",
                        style: TextStyle(fontSize: 20, color: Colors.amber),
                      ),
                    ],
                  ),
                ),
              ),
            )
            : Center(child: Text("No loaded data yet...")),
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.track_changes),
        onPressed: () async {
          /// [5. Locale the service with GetIt and call getNextMeme]
          // <Which type>
          // locator.get<DomainController>().getNextMeme();
          Meme meme = await locator.get<DomainController>().getNextMeme();
          /// [7. Use setS to update the visibleMeme]
          setState(() {
            visibleMeme = meme;
          });
        },
      ),
    );
  }
}