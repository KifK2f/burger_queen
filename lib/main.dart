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
                  width: MediaQuery.of(context).size.width,
                  height: 370,
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
                      Spacer(),

                            Padding(
                                        padding: const EdgeInsets.all(0),
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child:  Row(
                                            children: [

                                              //Burger Twins
                                              Card(
                                                clipBehavior: Clip.antiAlias,
                                                margin: const EdgeInsets.fromLTRB(15,0,35,10),
                                                // margin: EdgeInsets.all(10),
                                                child: Column(

                                                  children: [
                                                    Image.asset(
                                                      "assets/images/twins.jpg",
                                                      fit: BoxFit.fitWidth,
                                                      width: 280,
                                                      height: 200,
                                                    ),

                                                Container(
                                                  color: const Color(0xFFFF99C8),
                                                  width: 280,
                                                  child: Padding(
                                                    padding: const EdgeInsets.fromLTRB(10,0,10,25),
                                                    child: Column(
                                                      children: [
                                                      Text(
                                                        "Twins",
                                                        style: TextStyle(
                                                            fontSize: 25,
                                                            color: Colors.brown,
                                                            fontWeight: FontWeight.w700
                                                        ),
                                                      ), Text(
                                                        "Le burger des jumeaux qui font la paire",
                                                        style: TextStyle(
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.w400
                                                        ),
                                                      ),
                                                  ],),
                                                  ),
                                                ),

                                                  ],
                                                ),
                                              ),

                                              // Burger Big Queen
                                                    Card(
                                                clipBehavior: Clip.antiAlias,
                                                margin: const EdgeInsets.fromLTRB(15,0,35,10),
                                                // margin: EdgeInsets.all(10),
                                                child: Column(

                                                  children: [
                                                    Image.asset(
                                                      "assets/images/big-queen.jpg",
                                                      fit: BoxFit.fitWidth,
                                                      width: 280,
                                                      height: 200,
                                                    ),

                                                Container(
                                                  color: const Color(0xFFFF99C8),
                                                  width: 280,
                                                  child: Padding(
                                                    padding: const EdgeInsets.fromLTRB(10,0,10,25),
                                                    child: Column(
                                                      children: [
                                                      Text(
                                                        "Big Queen",
                                                        style: TextStyle(
                                                            fontSize: 25,
                                                            color: Colors.brown,
                                                            fontWeight: FontWeight.w700
                                                        ),
                                                      ), Text(
                                                        "Pour celles qui portent la couronne à la maison",
                                                        style: TextStyle(
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.w400
                                                        ),
                                                      ),
                                                  ],),
                                                  ),
                                                ),

                                                  ],
                                                ),
                                              ),

                                                    //Burger Egg Bacon
                                                    Card(
                                                clipBehavior: Clip.antiAlias,
                                                margin: const EdgeInsets.fromLTRB(15,0,35,10),
                                                // margin: EdgeInsets.all(10),
                                                child: Column(

                                                  children: [
                                                    Image.asset(
                                                      "assets/images/egg-bacon-burger.jpg",
                                                      fit: BoxFit.fitWidth,
                                                      width: 280,
                                                      height: 200,
                                                    ),

                                                Container(
                                                  color: const Color(0xFFFF99C8),
                                                  width: 280,
                                                  child: Padding(
                                                    padding: const EdgeInsets.fromLTRB(10,0,10,25),
                                                    child: Column(
                                                      children: [
                                                      Text(
                                                        "Egg Bacon ",
                                                        style: TextStyle(
                                                            fontSize: 25,
                                                            color: Colors.brown,
                                                            fontWeight: FontWeight.w700
                                                        ),
                                                      ), Text(
                                                        "Le burger des lève tôt\n",
                                                        style: TextStyle(
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.w400
                                                        ),
                                                      ),
                                                  ],),
                                                  ),
                                                ),

                                                  ],
                                                ),
                                              ),

                                                    //Burger Prince
                                                    Card(
                                                clipBehavior: Clip.antiAlias,
                                                margin: const EdgeInsets.fromLTRB(15,0,35,10),
                                                // margin: EdgeInsets.all(10),
                                                child: Column(

                                                  children: [
                                                    Image.asset(
                                                      "assets/images/prince.jpg",
                                                      fit: BoxFit.fitWidth,
                                                      width: 280,
                                                      height: 200,
                                                    ),

                                                Container(
                                                  color: const Color(0xFFFF99C8),
                                                  width: 280,
                                                  child: Padding(
                                                    padding: const EdgeInsets.fromLTRB(10,0,10,25),
                                                    child: Column(
                                                      children: [
                                                      Text(
                                                        "Prince",
                                                        style: TextStyle(
                                                            fontSize: 25,
                                                            color: Colors.brown,
                                                            fontWeight: FontWeight.w700
                                                        ),
                                                      ), Text(
                                                        "Le préféré des futurs rois\n",
                                                        style: TextStyle(
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.w400
                                                        ),
                                                      ),
                                                  ],),
                                                  ),
                                                ),

                                                  ],
                                                ),
                                              ),

                                                    //Burger Cheese
                                                    Card(
                                                clipBehavior: Clip.antiAlias,
                                                margin: const EdgeInsets.fromLTRB(15,0,35,10),
                                                // margin: EdgeInsets.all(10),
                                                child: Column(

                                                  children: [
                                                    Image.asset(
                                                      "assets/images/cheese.jpg",
                                                      fit: BoxFit.fitWidth,
                                                      width: 280,
                                                      height: 200,
                                                    ),

                                                Container(
                                                  color: const Color(0xFFFF99C8),
                                                  width: 280,
                                                  child: Padding(
                                                    padding: const EdgeInsets.fromLTRB(10,0,10,25),
                                                    child: Column(
                                                      children: [
                                                      Text(
                                                        "Cheese",
                                                        style: TextStyle(
                                                            fontSize: 25,
                                                            color: Colors.brown,
                                                            fontWeight: FontWeight.w700
                                                        ),
                                                      ), Text(
                                                        "Le classique pour les fans de fromage\n",
                                                        style: TextStyle(
                                                          fontSize: 13,
                                                          fontWeight: FontWeight.w400
                                                        ),
                                                      ),
                                                  ],),
                                                  ),
                                                ),

                                                  ],
                                                ),
                                              ),
                                                                                                                                            ],

                                          ),
                                        )
                                    ),
                          ],


                  ),
                ),


        //Section de accompagnements
            //Section Restaurant le plus proche
        Container(
              // color: const Color(0xFFFF99C8),
              height: 481,
              width: MediaQuery.of(context).size.width,
              child:
              Column(
                children: [
                  Wrap(
                    children: [
                      Container(),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Les accompagnements",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.brown,
                            fontWeight: FontWeight.w700
                        ),
                      ),

                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.all(0),
                    child: Card(
                      color: Color.fromRGBO(230, 230, 230, 1.0),
                      elevation: 8,
                      margin: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [

                                //Accoompagnement Frites classique
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                      CircleAvatar(
                                        radius: 45,
                                        backgroundImage: AssetImage("assets/images/fries.jpg"),
                                      ),
                                    Text(
                                      "Frites classique",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.pink,
                                      ),
                                    ),
                                  ],
                                ),
                                Divider(
                                  height: 15,
                                ),

                                //Accoompagnement Frites de patate douce
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                      CircleAvatar(
                                        radius: 45,
                                        backgroundImage: AssetImage("assets/images/patate-douce.jpg"),
                                      ),
                                    Text(
                                      "Frites de patate douce",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.pink,
                                      ),
                                    ),
                                  ],
                                ),
                                Divider(
                                  height: 15,
                                ),


                                //Accoompagnement Poutine
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                      CircleAvatar(
                                        radius: 45,
                                        backgroundImage: AssetImage("assets/images/poutine.jpg"),
                                      ),
                                    Text(
                                      "Poutine",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.pink,
                                      ),
                                    ),
                                  ],
                                ),
                                Divider(
                                  height: 15,
                                ),

                                //Accoompagnement Potatoes
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                      CircleAvatar(
                                        radius: 45,
                                        backgroundImage: AssetImage("assets/images/potatoes.jpg"),
                                      ),
                                    Text(
                                      "Potatoes",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.pink,
                                      ),
                                    ),
                                  ],
                                ),

                              ],
                            ),
                          ),


                        ],
                      ),
                    ),
                  ),
                ],
              ),

            ),

        //Section des boissons
        Container(
          width: MediaQuery.of(context).size.width,
          height: 370,
          child:  Column(
            children: [
              Wrap(
                children: [
                  Container(),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Une petite soif?",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.brown,
                        fontWeight: FontWeight.w700
                    ),
                  ),

                ],
              ),
              Container(
                color: const Color(0xFFFF99C8),
                width: MediaQuery.of(context).size.width,
                child: Padding(
                    // padding: const EdgeInsets.fromLTRB(10,15,90,15),
                    padding: const EdgeInsets.all(0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child:  Row(
                        children: [

                          //Boisson Le classique
                          Container(
                            margin: const EdgeInsets.fromLTRB(10,10,15,10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                      Image.asset(
                                        "assets/images/classic-cola.jpg",
                                        fit: BoxFit.cover,
                                        width: 150,
                                        height: 280,
                                      ),
                                    Container(
                                      // color: Colors.yellow,
                                      height: 280,
                                      child: Text(
                                        "Le classique",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.pinkAccent,
                                            fontWeight: FontWeight.w700
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

//Boisson Le classique
                          Container(
                            margin: const EdgeInsets.fromLTRB(10,10,15,10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                      Image.asset(
                                        "assets/images/classic-cola.jpg",
                                        fit: BoxFit.cover,
                                        width: 150,
                                        height: 280,
                                      ),
                                    Container(
                                      // color: Colors.yellow,
                                      height: 280,
                                      child: Text(
                                        "Le classique",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.pinkAccent,
                                            fontWeight: FontWeight.w700
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

//Boisson Le classique
                          Container(
                            margin: const EdgeInsets.fromLTRB(10,10,15,10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                      Image.asset(
                                        "assets/images/classic-cola.jpg",
                                        fit: BoxFit.cover,
                                        width: 150,
                                        height: 280,
                                      ),
                                    Container(
                                      // color: Colors.yellow,
                                      height: 280,
                                      child: Text(
                                        "Le classique",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.pinkAccent,
                                            fontWeight: FontWeight.w700
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

//Boisson Le classique
                          Container(
                            margin: const EdgeInsets.fromLTRB(10,10,15,10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                      Image.asset(
                                        "assets/images/classic-cola.jpg",
                                        fit: BoxFit.cover,
                                        width: 150,
                                        height: 280,
                                      ),
                                    Container(
                                      // color: Colors.yellow,
                                      height: 280,
                                      child: Text(
                                        "Le classique",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.pinkAccent,
                                            fontWeight: FontWeight.w700
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

//Boisson Le classique
                          Container(
                            margin: const EdgeInsets.fromLTRB(10,10,15,10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                      Image.asset(
                                        "assets/images/classic-cola.jpg",
                                        fit: BoxFit.cover,
                                        width: 150,
                                        height: 280,
                                      ),
                                    Container(
                                      // color: Colors.yellow,
                                      height: 280,
                                      child: Text(
                                        "Le classique",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.pinkAccent,
                                            fontWeight: FontWeight.w700
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

//Boisson Le classique
                          Container(
                            margin: const EdgeInsets.fromLTRB(10,10,15,10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                      Image.asset(
                                        "assets/images/classic-cola.jpg",
                                        fit: BoxFit.cover,
                                        width: 150,
                                        height: 280,
                                      ),
                                    Container(
                                      // color: Colors.yellow,
                                      height: 280,
                                      child: Text(
                                        "Le classique",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.pinkAccent,
                                            fontWeight: FontWeight.w700
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),



                        ],

                      ),
                    )
                ),
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
