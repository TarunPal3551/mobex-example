import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskidream/routes/app_routes.dart';

import 'package:taskidream/utils/constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Constants.primary,
      debugShowCheckedModeBanner: false,
      theme: FlexThemeData.light(
        scheme: FlexScheme.jungle,
        primary: Constants.primary,
        secondary: Constants.secondaryColor,
        transparentStatusBar: true,
        lightIsWhite: true,
        textTheme: TextTheme().copyWith(
          headline1: GoogleFonts.montserrat(
              color: Constants.textColorTitle,
              letterSpacing: 1.0,
              fontSize: 20,
              fontWeight: FontWeight.w800),
          headline2: GoogleFonts.montserrat(
              color: Constants.textColorTitle,
              fontSize: 18,
              fontWeight: FontWeight.w700),
          headline3: GoogleFonts.montserrat(
              color: Constants.textColorTitle,
              fontSize: 16,
              fontWeight: FontWeight.w600),
          headline4: GoogleFonts.montserrat(
              color: Constants.textColorTitle,
              fontSize: 14,
              fontWeight: FontWeight.w500),
          headline5: GoogleFonts.montserrat(
              color: Constants.textColorTitle,
              fontSize: 12,
              fontWeight: FontWeight.w400),
          headline6: GoogleFonts.montserrat(
              color: Constants.textColorTitle,
              fontSize: 10,
              fontWeight: FontWeight.w300),
          subtitle1: GoogleFonts.montserrat(
              color: Constants.textColorDescription,
              fontSize: 14,
              fontWeight: FontWeight.normal),
          subtitle2: GoogleFonts.montserrat(
              color: Constants.textColorDescription,
              fontSize: 12,
              fontWeight: FontWeight.normal),
          bodyText1: GoogleFonts.montserrat(
              color: Constants.textColorSubTitle,
              fontSize: 16,
              fontWeight: FontWeight.normal),
          bodyText2: GoogleFonts.montserrat(
              color: Constants.textColorSubTitle,
              fontSize: 14,
              fontWeight: FontWeight.normal),
          caption: GoogleFonts.montserrat(
              color: Constants.textHintColor,
              fontSize: 12,
              fontWeight: FontWeight.normal),
          button: GoogleFonts.montserrat(
            color: Constants.white,
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
        colors: const FlexSchemeColor(
          primary: Constants.primary,
          primaryVariant: Constants.primary,
          secondary: Constants.secondaryColor,
          secondaryVariant: Constants.blue,
        ),
        appBarStyle: FlexAppBarStyle.material,
      ),
      // The Mandy red, dark theme.
      darkTheme: FlexThemeData.dark(
          scheme: FlexScheme.jungle,
          primary: Constants.primary,
          secondary: Constants.secondaryColor,
          textTheme: TextTheme().copyWith(
            headline1: GoogleFonts.montserrat(
                color: Constants.white,
                fontSize: 20,
                fontWeight: FontWeight.w800),
            headline2: GoogleFonts.montserrat(
                color: Constants.white,
                fontSize: 18,
                fontWeight: FontWeight.w800),
            headline3: GoogleFonts.montserrat(
                color: Constants.white,
                fontSize: 16,
                fontWeight: FontWeight.w800),
            headline4: GoogleFonts.montserrat(
                color: Constants.white,
                fontSize: 14,
                fontWeight: FontWeight.w800),
            headline5: GoogleFonts.montserrat(
                color: Constants.white,
                fontSize: 12,
                fontWeight: FontWeight.w800),
            headline6: GoogleFonts.montserrat(
                color: Constants.textColorTitle,
                fontSize: 10,
                fontWeight: FontWeight.w800),
            subtitle1: GoogleFonts.montserrat(
                color: Constants.textHintColor,
                fontSize: 14,
                fontWeight: FontWeight.normal),
            subtitle2: GoogleFonts.montserrat(
                color: Constants.textHintColor,
                fontSize: 12,
                fontWeight: FontWeight.normal),
            bodyText1: GoogleFonts.montserrat(
                color: Constants.textColorDescriptionLight,
                fontSize: 16,
                fontWeight: FontWeight.normal),
            bodyText2: GoogleFonts.montserrat(
                color: Constants.textColorDescriptionLight,
                fontSize: 14,
                fontWeight: FontWeight.normal),
            caption: GoogleFonts.montserrat(
              color: Constants.textHintColor,
              fontSize: 12,
              fontWeight: FontWeight.normal,
            ),
            button: GoogleFonts.montserrat(
              color: Constants.white,
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
          ),
          colors: const FlexSchemeColor(
              primary: Constants.primary,
              primaryVariant: Constants.primary,
              secondary: Constants.secondaryColor,
              secondaryVariant: Constants.blue),
          appBarStyle: FlexAppBarStyle.material),
      // Use dark or light theme based on system setting.
      themeMode: ThemeMode.light,
      onGenerateRoute: (settings) {
        assert(false, 'Implementation ${settings.name}');
        return null;
      },
      initialRoute: Routes.splashScreen,
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

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
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
