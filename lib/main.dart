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
                                    Icon(Icons.location_pin),
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
                                    height: 60,
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
                                                fontSize: 15
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
                Container(
                  color: Colors.orange,
                  height: 254,
                ),
                Container(
                  color: Colors.lightGreen,
                  height: 454,
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
