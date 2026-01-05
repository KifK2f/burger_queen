import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp(appTitle: "Burger Queen"));
}

class MyApp extends StatelessWidget {
  final String appTitle;
  const MyApp({super.key, required this.appTitle});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: const Icon(Icons.home),
        backgroundColor: const Color(0xFFFF99C8),
        centerTitle: true,
        actions: const [
           Icon(Icons.account_circle_rounded),
        ],
      ),

      body: SingleChildScrollView(
       scrollDirection: Axis.vertical,
        child: Column(
          children: [

            //Section Restaurant le plus proche
          Container(
                  color: const Color(0xFFFF99C8),
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  child:
                  Padding(
                      padding: EdgeInsets.all(10),
                    child: Card(
                      margin: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Padding(
                              padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                        Icons.location_pin,
                                        size: 30,
                                    ),
                                    Text(
                                        "Mon restaurant le plus proche",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                        "4km"
                                    ),
                                  ],
                                ),

                                Padding(
                                  padding: EdgeInsets.all(2),

                                  child: SizedBox(
                                    height: 50,
                                    child: Card(
                                      // margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                      color: Colors.pink,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.touch_app,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            "Commander",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 17
                                            ),
                                          ),
                                        ],
                                      ),

                                    ),),
                                  ),

                              ],
                            ),
                          ),


                        ],
                      ),
                    ),
                  ),

                ),

            //Section En ce moment
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                        "En ce moment",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 25,
                        color: Colors.brown,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                ),

                Row(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [

                       Container(
                          height: 500,
                          width: MediaQuery.of(context).size.width,
                          child: Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 8,
                            margin: EdgeInsets.fromLTRB(30,0,30,30),
                            // margin: EdgeInsets.all(30),
                            child: Image.asset(
                              "assets/images/layer-burger.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        Container(
                            height: 500,
                          // color: Colors.yellow,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "une petite faim?",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700
                                ),
                              ),
                              Spacer(
                                flex: 3,
                              ),                              Text(
                                "Venez personnaliser votre Burger",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w700,
                                  backgroundColor: Colors.pink,
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              )
                            ],
                          ),
                        ),

                      ],
                    ),

                  ],
                ),
              ],
            ),


        //Section des burgers
                Container(
                  color: Colors.lightGreen,
                  width: MediaQuery.of(context).size.width,
                  height: 400,
                  child:  Column(
                    children: [

                   Wrap(
                          children: [
                            Container(),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Chaud devant",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.brown,
                                  fontWeight: FontWeight.w700
                              ),
                            ),

                          ],
                        ),   Wrap(
                          children: [
                            Container(),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Le meilleur de nos burgers à portée de clic",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),

                          ],
                        ),




                            Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child:  Row(
                                            children: [
                                              Card(
                                                clipBehavior: Clip.antiAlias,
                                                elevation: 8,
                                                // margin: EdgeInsets.fromLTRB(30,0,30,30),
                                                margin: EdgeInsets.all(20),
                                                child: Image.asset(
                                                  "assets/images/twins.jpg",
                                                  fit: BoxFit.cover,
                                                  width: 200,
                                                  height: 200,
                                                ),
                                              ),

                                                  Card(
                                                clipBehavior: Clip.antiAlias,
                                                elevation: 8,
                                                // margin: EdgeInsets.fromLTRB(30,0,30,30),
                                                margin: EdgeInsets.all(20),
                                                child: Image.asset(
                                                  "assets/images/twins.jpg",
                                                  fit: BoxFit.cover,
                                                  width: 200,
                                                  height: 200,
                                                ),
                                              ),

                                                      Card(
                                                clipBehavior: Clip.antiAlias,
                                                elevation: 8,
                                                // margin: EdgeInsets.fromLTRB(30,0,30,30),
                                                margin: EdgeInsets.all(20),
                                                child: Image.asset(
                                                  "assets/images/twins.jpg",
                                                  fit: BoxFit.cover,
                                                  width: 200,
                                                  height: 200,
                                                ),
                                              ),

                                                  Card(
                                                clipBehavior: Clip.antiAlias,
                                                elevation: 8,
                                                // margin: EdgeInsets.fromLTRB(30,0,30,30),
                                                margin: EdgeInsets.all(20),
                                                child: Image.asset(
                                                  "assets/images/twins.jpg",
                                                  fit: BoxFit.cover,
                                                  width: 200,
                                                  height: 200,
                                                ),
                                              ),

                                                                                            ],

                                          ),
                                        )
                                    ),
                          ],


                  ),
                ),
                Container(
                  color: Colors.red,
                  height: 128,
                ),
                Container(
                  color: Colors.brown,
                  height: 254,
                ),
                Container(
                  color: Colors.red,
                  height: 128,
                ),
          ],
        ),
      ),

    );
  }
}
