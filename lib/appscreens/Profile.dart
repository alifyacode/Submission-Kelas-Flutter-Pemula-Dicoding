import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 30.0),
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  image: DecorationImage(
                    image: AssetImage('images/myphoto.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
                Container(
                    margin: EdgeInsets.only(top: 30.0),
                    child: Text(
                      'Alifya Putri Aisyka',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight:FontWeight.bold ,
                        fontFamily: 'ABeeZee',
                      ),
                    ),
                  ),
                Container(
                    margin: EdgeInsets.only(top: 30.0),
                    child: Text(
                      'alifyaputriaisyka2004@gmail.com',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30.0,
                        fontFamily: 'Padauk',
                      ),
                    ),
                  ),
                ]
            )
        )
    ));
  }
}
