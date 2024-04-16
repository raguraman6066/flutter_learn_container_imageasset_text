import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("container with gradient"),
              Container(
                alignment: Alignment.center,
                // transform: Matrix4.rotationX(5),
                margin: EdgeInsets.only(left: 50),
                padding: EdgeInsets.all(30),
                width: 400,
                height: 200,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.pink,
                      Colors.purple,
                      Colors.black,
                      Colors.green
                    ],
                    stops: [0.2, 0.5, 0.8, 1],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                  ),
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(300),
                  border: Border.all(
                    width: 2,
                    color: Colors.black,
                  ),
                ),
                child: Text(
                  "hello world welcome",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      decoration: TextDecoration.lineThrough,
                      decorationColor: Colors.white,
                      decorationStyle: TextDecorationStyle.dashed,
                      letterSpacing: 10,
                      wordSpacing: 10),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text("boxshadow"),
              Container(
                height: 200,
                width: 200,
                child: Icon(Icons.android),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.green.shade200,
                          spreadRadius: 1,
                          blurRadius: 10,
                          offset: Offset(10, 10)),//x and y axis
                      BoxShadow(
                          color: Colors.yellow.shade200,
                           blurRadius: 10,//important to blur color
                          spreadRadius: 1,
                         
                          offset: Offset(-10, -10)),
                    ],
                    color: Colors.white,//important to set color in box shadow
                    borderRadius: BorderRadius.circular(100)),
              ),
              SizedBox(
                height: 30,
              ),
              Text("network image"),
              Container(
                width: 300,
                height: 300,
                color: Colors.amber,
                //  child: Image.network(
                child: Image.asset(
                  "assets/assetimg.jpg",
                  //  "https://learnpainless.com/static/a6877f114582a95b2d7f8f234bbb4cfb/f3c99/how-to-open-image-with-image-picker-crop-and-save-in-flutter.jpg",
                  //   alignment: Alignment.topLeft,
                  // color: Colors.amber,
                  colorBlendMode: BlendMode.colorBurn,
                  // fit: BoxFit.fill,
                  repeat: ImageRepeat.repeatX,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text("decoration image"),
              Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(150),
                    color: Colors.orange,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          "https://upload.wikimedia.org/wikipedia/commons/thumb/4/41/Sunflower_from_Silesia2.jpg/1280px-Sunflower_from_Silesia2.jpg",
                        )
                        //  image: AssetImage(
                        // "assets/assetimg.jpg",
                        // ),
                        )),
              ),
              SizedBox(
                height: 30,
              ),
              Text("clip oval image"),
              Container(
                color: Colors.orange,
                width: 300,
                height: 300,
                child: ClipOval(
                  child: Image.asset("assets/assetimg.jpg",fit: BoxFit.fill,),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
