import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat_model.dart';

class ChatScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: dummyData.length,
        itemBuilder:(context,index){
          return new Column(
            children: <Widget>[
              new Divider(height: 10,),
              new ListTile(
                leading: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  backgroundImage: new NetworkImage(dummyData[index].avatarUrl),
                ),
                title: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text(
                      dummyData[index].name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    new Text(
                      dummyData[index].time,
                      style: TextStyle(fontSize: 14 , color: Colors.grey),
                    )
                  ],
                ),
                subtitle: new Container(
                  padding: const EdgeInsets.only(top: 5),
                  child: new Text(
                    dummyData[index].message,
                    style: TextStyle(color: Colors.grey,fontSize: 15),
                  ),
                ),
              )


            ],

          );

        });
  }

}