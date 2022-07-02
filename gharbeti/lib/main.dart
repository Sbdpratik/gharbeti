import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gharbeti/pages/DetailPage.dart';
import 'package:gharbeti/pages/Foodtab.dart';
import 'package:gharbeti/pages/HomePage.dart';
import 'package:gharbeti/pages/login.dart';
import 'package:gharbeti/pages/rooms.dart';
import 'package:gharbeti/pages/sign_up.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GharBeti',
      initialRoute: "/home",
      getPages: [
        GetPage(name: "/", page: () => MyApp()),
        GetPage(name: "/login", page: () => Login()),
        GetPage(name: "/rooms", page: () => RoomsPage()),
        GetPage(name: "/signup", page: () => SignUp()),
        GetPage(name: "/detail", page: () => DetailPage("ss", 150, "sss")),
        GetPage(name: "/home", page: () => HomePage()),
        GetPage(name: "/food", page: () => Foodtab()),
      ],
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const SignUp(),
      // home: const MyHomePage(title: 'GharBeti'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    double W = MediaQuery.of(context).size.width;
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end:
              Alignment(0.8, 0.0), // 10% of the width, so there are ten blinds.
          colors: <Color>[Color(0xffffffff), Color(0xffffffff)],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          // leading: Text(widget.title,
          //     style: const TextStyle(color: Colors.green, fontSize: 26.0),
          //     textAlign: TextAlign.left),
          title: SizedBox(
            width: 250.0,
            child: AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'GharBeti',
                  textStyle: const TextStyle(
                      color: Color.fromARGB(255, 27, 218, 125),
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold),
                ),
              ],
              repeatForever: true,
            ),
          ),
          backgroundColor: Colors.transparent,
          foregroundColor: const Color.fromARGB(255, 0, 0, 0),
          elevation: 0,
          leadingWidth: 150.0,
          actions: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: AnimSearchBar(
                width: 400,
                textController: textController,
                rtl: true,
                helpText: "Search Room, Flat, Appartment, House...",
                onSuffixTap: () {
                  setState(() {
                    textController.clear();
                  });
                },
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 10.0),
                CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: 5,
                  ),
                  items: [
                    Container(
                      color: const Color.fromRGBO(255, 87, 34, 1),
                      child: SizedBox(
                        width: W,
                      ),
                    ),
                    Container(
                      color: const Color.fromARGB(255, 34, 255, 82),
                      child: SizedBox(
                        width: W,
                      ),
                    ),
                    Container(
                      color: const Color.fromARGB(255, 34, 13, 222),
                      child: SizedBox(
                        width: W,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                RichText(
                  text: const TextSpan(
                    // Note: Styles for TextSpans must be explicitly defined.
                    // Child text spans will inherit styles from parent
                    style: const TextStyle(
                      fontSize: 14.0,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      const TextSpan(
                          text: 'Explore',
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.bold)),
                      const TextSpan(
                          text: ' GharBeti',
                          style: TextStyle(
                              color: Color.fromARGB(255, 27, 218, 125),
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const SizedBox(height: 10.0),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    Container(
                      height: 100,
                      width: 200,
                      color: Colors.lightGreenAccent,
                      child: const Text("Data"),
                    ),
                    const SizedBox(width: 10.0),
                    Container(
                      color: Colors.lightGreenAccent,
                      height: 100,
                      width: 200,
                      child: const Text("Data"),
                    ),
                    const SizedBox(width: 10.0),
                    Container(
                      color: Colors.lightGreenAccent,
                      height: 100,
                      width: 200,
                      child: const Text("Data"),
                    ),
                    const SizedBox(width: 10.0),
                    Container(
                      color: Colors.lightGreenAccent,
                      height: 100,
                      width: 200,
                      child: const Text("Data"),
                    ),
                    const SizedBox(width: 10.0),
                    Container(
                      color: Colors.lightGreenAccent,
                      height: 100,
                      width: 200,
                      child: const Text("Data"),
                    ),
                  ]),
                )
              ]),
        ),
      ),
    );
  }
}
