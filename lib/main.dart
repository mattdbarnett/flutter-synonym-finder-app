import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    final _panelHeightOpen = MediaQuery.of(context).size.height * .80;
    final _panelHeightClosed = MediaQuery.of(context).size.height * .08;
    return Scaffold(
      body: SlidingUpPanel(
        maxHeight: _panelHeightOpen,
        minHeight: _panelHeightClosed,

        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
        ),

        panel: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                      top: 50,
                      left: 50,
                    ),
                    child: const Icon(
                      Icons.search,
                      size: 40,
                      color: Colors.black26,
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(
                        top: 50,
                        right: 50
                      ),
                      width: 275,
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter Word Here',
                        ),
                        style: TextStyle(
                            fontSize: 18,
                        ),
                      )
                    )
                  )
                ],
              )
            ],
          )
        ),

        collapsed: const Icon(
          Icons.keyboard_arrow_down,
          size: 40,
          color: Colors.black26,
        ),

        body: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    top: 50,
                    left: 50,
                  ),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      icon: const Icon(
                        Icons.settings,
                        size: 40,
                        color: Colors.black26,
                      ),
                      onPressed: () {
                        // do something
                      },
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.only(
                    top: 50,
                    right: 50,
                  ),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      icon: const Icon(
                        Icons.share,
                        size: 40,
                        color: Colors.black26,
                      ),
                      onPressed: () {
                        // do something
                      },
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    'Welcome',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    'Swipe up to begin',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black45,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              )
            ),
          ],
        )
      ),
    );
  }
}
