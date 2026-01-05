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
                  child: Card(
                    child:  const Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.location_pin),
                              Spacer(),
                              Text(
                                "Mon restaurant le plus proche",
                                style: TextStyle(
                                    color: Colors.lightBlue,
                                ),
                              ),
                              Spacer(),
                              Text(
                                "4km",
                                style: TextStyle(
                                    color: Colors.lightBlue,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 24,
                                backgroundImage: AssetImage("assets/images/surf.jpg"),
                              ),
                              Spacer(),
                              Text(
                                "Friedo TheCodeHunter",
                                style: TextStyle(
                                    color: Colors.lightBlue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),
                              ),
                            ],
                          ),

                        ],
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
