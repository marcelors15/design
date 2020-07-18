import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(CustomFonts());

class CustomFonts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Fonts',
      // To use a font as the default, set the fontFamily property as part of
      // the app’s theme. The value provided to fontFamily must match the
      // family name declared in the pubspec.yaml.
      /// Set Raleway as the default app font.
      theme: ThemeData(fontFamily: 'Raleway'),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // The AppBar uses the app-default Raleway font.
      appBar: AppBar(title: Text('Custom Fonts')),
      body: Center(
        child: Column(children: <Widget>[
          // This Text widget uses the RobotoMono font.
          Text(
            'Roboto Mono Sample',
            style: TextStyle(fontFamily: 'RobotoMono'),
            // If a TextStyle object specifies a weight or style for which there is no
            // exact font file, the engine uses one of the more generic files for the
            // font and attempts to extrapolate outlines for the requested weight and style.
          ),
          Text(
            'GoogleFonts with the default TextStyle',
            style: GoogleFonts.lato(),
          ),
          Text(
            'GoogleFonts with an existing TextStyle',
            style: GoogleFonts.lato(
                textStyle: TextStyle(color: Colors.blue, letterSpacing: .5)),
          ),
        ]),
      ),
    );
  }
}
