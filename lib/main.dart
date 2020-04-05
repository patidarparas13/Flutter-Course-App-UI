import 'dart:ui';
import 'new_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  final appTitle = 'Course UI';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
      theme: ThemeData(
        primaryColor:Colors.white
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {

  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
            },
          ),
        ],
        elevation: 0.0,
      ),
  drawer: Drawer(
           child: ListView(
             children:<Widget>[
               UserAccountsDrawerHeader(
                 accountName: Text("Paras Patidar"),
                 accountEmail: Text("patidarparas13@gmail.com"),
                 currentAccountPicture: CircleAvatar(
                   backgroundColor: Theme.of(context).platform==TargetPlatform.iOS?Colors.deepPurple:Colors.blue,
                   child:Text("PP")
                 ),
                 otherAccountsPictures: <Widget>[
                   CircleAvatar(
                     backgroundColor:Theme.of(context).platform==TargetPlatform.iOS?Colors.deepPurple:Colors.blue,
                     child: Text("RP"),
                   )
                 ],
               ),
               ListTile(
                 title: Text("Dashboard"),
                 trailing: Icon(Icons.account_circle),
                 onTap: (){
                   Navigator.of(context).pop();
                   Navigator.of(context).push(MaterialPageRoute(
                     builder: (BuildContext context)=> NewPage("Dashboard")
                   ));
                   },
                 ),
                 ListTile(
                 title: Text("Explore"),
                 trailing: Icon(Icons.explore),
                 onTap: (){
                   Navigator.of(context).pop();
                   Navigator.of(context).push(MaterialPageRoute(
                     builder: (BuildContext context)=> NewPage("Explore")
                   ));
                   },
                 ),
                 Divider(),
                 ListTile(
                 title: Text("Close"),
                 trailing: Icon(Icons.close),
                 onTap: ()=>Navigator.of(context).pop(),
                 ),
             ]
           ),
         ),
  body:Container(
    color: Colors.white,
    child: Column(
      children:<Widget>[
        Expanded(flex: 3,
                child: Row(
          children: <Widget>[
          Expanded(flex: 6,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10,2,25,0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                Expanded(flex: 2,
                                  child: Container(
                    child: Text("Hello, Paras",
                    style: TextStyle(
                      fontSize:27.0,
                      fontWeight:FontWeight.w700,
                    ),
                    ),
            ),
                ),
                Expanded(flex: 1,
                                  child: Container(
                    child: Text("Your Courses",
                    style: TextStyle(
                      fontSize:20.0,
                      fontWeight:FontWeight.w700,
                    ),
                    ),
            ),
                ),
           Expanded(flex: 1,
                        child: Padding(
               padding: const EdgeInsets.fromLTRB(0.0,10.0,0.0,10.0),
               child: LinearProgressIndicator(
                value:0.7,
                valueColor:AlwaysStoppedAnimation<Color>(Colors.orange),
          ),
             ),
           ),
          Expanded(flex: 1,
                      child: Padding(
              padding: const EdgeInsets.fromLTRB(0.0,0.0,0.0,0.0),
              child: Container(
                child:Text("Overall Progress",
                style: TextStyle(
                  fontSize:12.0,
                ),
                )
              ),
            ),
          )
              ]
            ),
          ),
          ),
          Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10,10,25,10),
                  child: Container(
                    decoration: BoxDecoration(
    image: const DecorationImage(
      image: AssetImage("assets/paras1.jpg"),
      fit: BoxFit.cover,
    ),
    borderRadius: BorderRadius.circular(12),
  ),
                    ),
                )
                  ),
      ],
    ),
        ),
          Expanded(flex: 7,
                    child: Row(
        children: <Widget>[
        Expanded(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child:CustomScrollView(
  primary: false,
  slivers: <Widget>[
    SliverPadding(
      padding: const EdgeInsets.all(5),
      sliver: SliverGrid.count(
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            child: Center(
              child: Text("Kotlin",
              style: TextStyle(
                color: Colors.white,
                fontSize:24,
                fontWeight: FontWeight.bold
              ),),
            ),
            decoration: BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [Colors.green[100], Colors.green[900]]),
    borderRadius: BorderRadius.circular(12),),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Center(
              child: Text("JavaScript",
              style: TextStyle(
                color: Colors.white,
                fontSize:24,
                fontWeight: FontWeight.bold
              ),),
            ),
            decoration: BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [Colors.blue[100], Colors.blue[900]]),
    borderRadius: BorderRadius.circular(12),),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Center(
              child: Text("Python",
              style: TextStyle(
                color: Colors.white,
                fontSize:24,
                fontWeight: FontWeight.bold
              ),),
            ),
            decoration: BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [Colors.yellow[100], Colors.yellow[900]]),
    borderRadius: BorderRadius.circular(12),),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Center(
              child: Text("C++",
              style: TextStyle(
                color: Colors.white,
                fontSize:24,
                fontWeight: FontWeight.bold
              ),),
            ),
            decoration: BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [Colors.red[100], Colors.red[900]]),
    borderRadius: BorderRadius.circular(12),),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Center(
              child: Text("Java",
              style: TextStyle(
                color: Colors.white,
                fontSize:24,
                fontWeight: FontWeight.bold
              ),),
            ),
            decoration: BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [Colors.purple[100], Colors.purple[900]]),
    borderRadius: BorderRadius.circular(12),),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Center(
              child: Text("Flutter",
              style: TextStyle(
                color: Colors.white,
                fontSize:24,
                fontWeight: FontWeight.bold
              ),),
            ),
            decoration: BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [Colors.brown[100], Colors.brown[900]]),
    borderRadius: BorderRadius.circular(12),),
          ),
        ],
      ),
    ),
  ],
) ,
        ),
        ),
      ],
    ),
          )
      ]
    ),
  ),
  bottomNavigationBar: BottomNavigationBar(
    backgroundColor: Colors.white,
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(MdiIcons.home,
          color: Colors.blue[900],),
          title: Text("")
          ),
          BottomNavigationBarItem(icon: Icon(MdiIcons.compass,
          color: Colors.blue[900],
          size: 60.0,
          ),
          title: Text(""),),
          BottomNavigationBarItem(icon: Icon(MdiIcons.bellOutline,
          color: Colors.blue[900],
          ),
          title: Text(""))
        ],
        elevation: 0.0,
        ),
);
  }
}