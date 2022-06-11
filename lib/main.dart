import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffF2EBE9),
        primaryColor: const Color(0xffF2EBE9),
        brightness: Brightness.light,
        textTheme: TextTheme(
          headline1: GoogleFonts.raleway(
              fontSize: 30, color: const Color(0xff621148), letterSpacing: -0.5),
          subtitle1: GoogleFonts.raleway(
              fontSize: 16, color: const Color(0xFFD102F5), letterSpacing: 0.15),
          bodyText1: GoogleFonts.raleway(
              fontSize: 16, color: Colors.black, letterSpacing: 0.5),
          caption: GoogleFonts.raleway(
              fontSize: 15, color: Colors.grey, letterSpacing: 0.5),
          button: GoogleFonts.raleway(
              fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
        ),
      ),
      home: const MyStatefulWidget(),
    );
  }
}




class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2EBE9),
      appBar: AppBar(
        title: const Text(
          'BottomNavigationBar Sample',
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: const Color(0xffEDDDD9),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xffF2EBE9),
        items: 
          const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'People',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}










/*
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

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

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffEDDDD9),
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text(
          "Athena",
          style: TextStyle(color: Color(0xff621148), fontWeight: FontWeight.bold),
        ),
      ),
      body: FooterView(
        footer: Footer(
          padding: const EdgeInsets.all(10.0),
          backgroundColor: const Color(0xffEDDDD9),
          child: const Text('I am a Customizable footer!!'),
        ),
        flex: 1,
        children: const <Widget>[
          Padding(
            padding: EdgeInsets.only(top:200.0),
            child: Center(
              child: Text('Scrollable View'),
            ),
          ),
        ], //default flex is 2
      ),
    );
  }
}
*/
