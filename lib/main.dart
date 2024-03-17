import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'modules.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: const Text('AppBar Demo'),
        backgroundColor: Colors.blueGrey,
      ),*/
      body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.blue,
                    padding: const EdgeInsets.only(top: 20),
                    child: const Row(
                      children:[
                        SizedBox(width: 15),
                        BarIcon(icon: CupertinoIcons.cloud_bolt_rain),
                        SizedBox(width: 7),
                        Text('9°',
                            style: TextStyle(color: Colors.white)),
                        SizedBox(width: 15),
                        BarIcon(icon: CupertinoIcons.wind),
                        SizedBox(width: 7),
                        Text('73',
                        style: TextStyle(color: Colors.white)),
                        Spacer(),
                        Icon(CupertinoIcons.person,
                        color: Colors.white),
                        SizedBox(width: 15),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    //padding: EdgeInsets.all(10),
                    color: Colors.blue,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        RowContainer(
                          icon: CupertinoIcons.qrcode,
                          text: 'Придбати QR-квиток',
                        ),
                        RowContainer(
                          icon: Icons.credit_card,
                          text: 'Транспортна карта',
                        ),
                        RowContainer(
                          icon: Icons.alarm,
                          text: 'Погодинне паркування',
                        ),
                        RowContainer(
                          icon: Icons.question_mark,
                          text: 'Часті питання',
                        ),
                        RowContainerLast(text: 'Більше сервісів', icon: Icons.add),
                      ],
                    ),
                  ),
                  ),
                Expanded(
                  flex: 7,
                  child: Stack(
                    children:[ Container(
                      padding: const EdgeInsets.only(bottom: 20, left: 20, right:20),
                      child: ListView(
                        children:[
                          const Text('Сьогодні:',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          RowWidget(
                              mainText: 'QR-квитки',
                              helpText:'Ви використали квиток',
                              icon: CupertinoIcons.qrcode,
                              color: Colors.black,
                              background: Colors.grey.shade300,
                          ),
                          RowWidget(
                              mainText: 'QR-квитки',
                              helpText:'Ви придбали 1 квиток',
                              icon: CupertinoIcons.qrcode,
                              color: Colors.black,
                              background: Colors.grey.shade300,
                          ),
                          const SizedBox(height: 20,),
                          const Text('15 березня:',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          RowWidget(
                              mainText: '14:16 відбій тривоги',
                              helpText:'Небезпека тривала 33 хвилини',
                              icon: CupertinoIcons.exclamationmark_octagon,
                              color: Colors.deepOrange,
                            background: Colors.orangeAccent,
                          ),
                          RowWidget(
                            mainText: '13:42 повітряна тривога!',
                            helpText:'Прямуйте до укриття та чекайте на відбій.',
                            icon: CupertinoIcons.exclamationmark_octagon,
                            color: Colors.deepOrange,
                            background: Colors.orangeAccent,
                          ),
                          RowWidget(
                            mainText: '06:16 відбій тривоги',
                            helpText:'Небезпека тривала 8 хвилин',
                            icon: CupertinoIcons.exclamationmark_octagon,
                            color: Colors.deepOrange,
                            background: Colors.orangeAccent,
                          ),
                          RowWidget(
                            mainText: '06:07 повітряна тривога!',
                            helpText:'Прямуйте до укриття та чекайте на відбій.',
                            icon: CupertinoIcons.exclamationmark_octagon,
                            color: Colors.deepOrange,
                            background: Colors.orangeAccent,
                          ),
                        ],
                      ),
                    ),
                      Positioned(
                        bottom: 30,
                        left: MediaQuery.of(context).size.width * 0.3,
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: MediaQuery.of(context).size.height * 0.1,
                          child: FloatingActionButton(onPressed: (){},
                              backgroundColor: Colors.blue,
                              shape: const CircleBorder(),
                              child: const Text('K',
                              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),)
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
      ),
    );
  }
}


