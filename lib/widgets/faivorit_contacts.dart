import 'package:chat_ui/models/message_model.dart';
import 'package:chat_ui/screens/chat_screen.dart';
import 'package:flutter/material.dart';

class FaivoritContacts extends StatefulWidget {
  FaivoritContacts({Key key}) : super(key: key);

  @override
  _FaivoritContactsState createState() => _FaivoritContactsState();
}

class _FaivoritContactsState extends State<FaivoritContacts> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Favorite Contacts',
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 18.0,
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.more_horiz),
                      onPressed: () {},
                      iconSize: 30.0,
                      color: Colors.blueGrey,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 120.0,
            // color: Colors.blue,
            child: ListView.builder(
              padding: EdgeInsets.only(left: 10.0),
              scrollDirection: Axis.horizontal,
              itemCount: favorites.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => ChatScreen(
                              user: favorites[index],
                            ),
                          ),
                        ),
                        child: CircleAvatar(
                          radius: 35.0,
                          backgroundImage:
                              AssetImage(favorites[index].imageUrl),
                        ),
                      ),
                      SizedBox(height: 6.0),
                      Text(
                        favorites[index].name,
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
