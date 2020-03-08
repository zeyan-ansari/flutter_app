import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/quizpage.dart';
import 'package:flutter_app/splash.dart';



class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  List<String> images =[
        "images/py.png",
        "images/java.png",
        "images/js.png",
        "images/linux.png",
        "images/cpp.png",
        "images/success.png"
  ];

  Widget customcard(String langname, String image){
    return Padding(
      padding: EdgeInsets.all(25.0,),

      child: InkWell(onTap: (){
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context)=> getjson(),
        ));
      },
        child: Material(color:Colors.deepOrange,elevation: 35.0,
      borderRadius: BorderRadius.circular(250.0),
      child: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 30.0),
              child: Material(
                elevation: 7.0,
                borderRadius: BorderRadius.circular(100.0),
                child: Container(
                  height: 200.0,
                  width: 200.0,
                  child: ClipOval(
                    child:Image(
                    fit: BoxFit.contain,
                      image: AssetImage(
                        image,

                      ),
                    ),
                    ),
                ),
              ),
            ),
            Center(
              child: Text(
                langname, style: TextStyle(fontSize: 25.0,
              color: Colors.black,
              fontFamily: 'Alike',
              fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "This is python masterclass quizz app",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                  fontFamily: 'Quando'
                ),
                maxLines: 5,
                textAlign: TextAlign.justify,
              ),
            )
          ],
        ),
      ),
      ),),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitDown,DeviceOrientation.portraitUp]);
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.orange,
        title: Center(child: Text(
        "Quizstar",style: TextStyle(fontFamily: 'Satisfy',fontWeight: FontWeight.bold ,color: Colors.black,fontSize: 25.0)),
    )),
            body: ListView(children: <Widget>[
              customcard("Python", images[0]),
              customcard("Java", images[1]),
              customcard("javascripts", images[2]),
              customcard("c++", images[3]),
              customcard("c", images[4]),
    ],),
    );
  }
}
