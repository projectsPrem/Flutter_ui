

import'package:flutter/material.dart';
import 'package:flutter/services.dart';
import'package:flutter_icons/flutter_icons.dart';
import'package:google_fonts/google_fonts.dart';

class DashboardScreen extends StatefulWidget{
  @override
  _DashboardScreenState createState() => new _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen>{
@override
  Widget build(BuildContext context){
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
//    systemNavigationBarColor: Colors.transparent,
  ));
  return new Scaffold(

    backgroundColor: Colors.grey[100],
    appBar: AppBar(

      title: new FlutterLogo(
        colors: Colors.green,
  size: 25.0,
      ),
      elevation: 1.0,
      centerTitle: true,
      leading: IconButton(
          icon: Icon(Feather.arrow_left,size: 24.0,color: Colors.black87,),
          onPressed:()=> {}),
      actions: <Widget>[
        IconButton(
          icon: Icon(Ionicons.md_menu,size: 24.0,color: Colors.black87),
          onPressed: ()=>{},
        )
      ],
    ),
    body: new ListView(
      shrinkWrap: true,
      children: <Widget>[
        Stack(
          children: <Widget>[
            new Container(             //2nd part
              alignment: Alignment(0.0,-0.40),

              height: 100.0,
              color: Colors.white,
                child: new Text("Get Coaching",style: GoogleFonts.montserrat(fontSize: 24.0),),
            ),
            new Container(
              height: 120.0,
              margin: EdgeInsets.fromLTRB(20.0, 80.0, 20.0, 0.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: [BoxShadow(
                  blurRadius: 4.0,
                color: Colors.black12
                )]
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Stack(
                    
                    children: <Widget>[
                      Container(      //text box
                        padding: EdgeInsets.fromLTRB(25.0, 24.0, 5.0, 5.0),
                        child: new Text("You Have",
                          style: GoogleFonts.nunito(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),)
                      ),
                      Container(
                          padding: EdgeInsets.fromLTRB(25.0, 40.0, 5.0, 15.0),
                          child: new Text("256",
                              style: GoogleFonts.nunito(
                                  fontSize: 34.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87),)
                      )
                    ],
                  ),
                  SizedBox(width: 80.0,),
                  Container(
                    height: 50.0,
                    width: 125.0,decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0) ,
                    color: Colors.greenAccent[100].withOpacity(0.4),),

                      child: InkWell(
                        splashColor: Colors.greenAccent,
                        onTap:(){print("buy 1");},

                          child: new Center(child: new Text("Buy more",
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            color: Colors.green),
                    ),
                    ),
                    ),
                  ),

                ],
              ),
            )
          ],
        ),
        SizedBox(height:20.0),
        new  Container(
          padding: EdgeInsets.only(left:25.0,right:25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              InkWell(

                onTap:(){print("hello");},
                child:new Text("MY COACHES" ,
                  style: GoogleFonts.nunito(
                  fontSize: 11.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),),),

              InkWell(
splashColor: Colors.green[100],
                onTap:(){print("hello");},
                child:new Text("VIEW PAST SESSIONS" ,
                  style: GoogleFonts.nunito(
                      fontSize: 11.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),),),
            ],
          ),
        ),
SizedBox(height: 8.0),
        GridView.count(
primary: false,
          shrinkWrap: true,
            crossAxisCount: 2,
        crossAxisSpacing: 2.0,
        mainAxisSpacing: 4.0,



          children: <Widget>[
                                _buildCard("andrea", "online", 1),
            _buildCard("jane", "Away", 2),
            _buildCard("john", "Away", 3),_buildCard("wiktoria", "online", 4),
            _buildCard("andrea", "online", 5),
            _buildCard("jane", "online", 6),
            _buildCard("john", "online", 7),_buildCard("wiktoria", "Away", 8),
          ],
        )
      ],
    ),
  );
}

Widget _buildCard(String name, String status,int index ){
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
    ),
    elevation: 4.0,
    child: Column(
      children: <Widget>[
        SizedBox(height: 12.0,),
        Stack(
          children: <Widget>[
            Container(
              height: 60.0,
              width: 60.0,
              decoration:BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(30.0),
              image: DecorationImage(
                  image: NetworkImage("https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg-1024x683.jpg"),fit: BoxFit.cover,
              )
              )
            ),

            Container(
              margin: EdgeInsets.only(left: 45.0),
              height: 16.0,
              width: 16.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: status=="Away" ? Colors.amber:Colors.green,
              border: Border.all(
                style: BorderStyle.solid,
                width: 2.0,
                color: Colors.white
              ),
              ),

            )

          ],
        ),

        SizedBox(height: 8.0,),
        Text(name,
            style: GoogleFonts.nunito(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Colors.black87)),
        SizedBox(height: 4.0,),
        Text(status,
            style: GoogleFonts.nunito(
                fontSize: 12.0,
                fontWeight: FontWeight.w700,
                color: Colors.black38)
        ),
        SizedBox(height:12.0),
        Expanded(flex: 1,
          child: Container(
            width: 175.0,
            decoration: BoxDecoration(
              color: status=="Away"?Colors.grey: Colors.green,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0)
              )
            ),
            child: new Center(child:Text("Request",
              style: GoogleFonts.montserrat(
                fontSize: 15.0,
                fontWeight: FontWeight.w500,
                color: Colors.white),),
          ),),
        )

      ],
    ),
    margin: index.isEven ? EdgeInsets.fromLTRB(10.0,0.0, 25.0, 10.0):EdgeInsets.fromLTRB(25.0,0.0, 5.0, 10.0),
  );

}

}