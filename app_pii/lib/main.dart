import 'package:flutter/material.dart';

import 'package:app_pii/home.dart';
import 'package:app_pii/videos/a.dart';
import 'package:app_pii/videos/b.dart';
import 'package:app_pii/videos/c.dart';
import 'package:app_pii/videos/d.dart';
import 'package:app_pii/videos/e.dart';
import 'package:app_pii/videos/f.dart';
import 'package:app_pii/videos/g.dart';
import 'package:app_pii/videos/h.dart';
import 'package:app_pii/videos/i.dart';
import 'package:app_pii/videos/j.dart';
import 'package:app_pii/videos/k.dart';
import 'package:app_pii/videos/l.dart';
import 'package:app_pii/videos/m.dart';
import 'package:app_pii/videos/n.dart';
import 'package:app_pii/videos/ñ.dart';
import 'package:app_pii/videos/o.dart';
import 'package:app_pii/videos/p.dart';
import 'package:app_pii/videos/q.dart';
import 'package:app_pii/videos/r.dart';
import 'package:app_pii/videos/s.dart';
import 'package:app_pii/videos/t.dart';
import 'package:app_pii/videos/u.dart';
import 'package:app_pii/videos/v.dart';
import 'package:app_pii/videos/w.dart';
import 'package:app_pii/videos/x.dart';
import 'package:app_pii/videos/y.dart';
import 'package:app_pii/videos/z.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Lenguaje de señas',
      debugShowCheckedModeBanner: false,
      home: Principal(),
      routes: {
        'VideoA': (BuildContext context) => VideoA(),
        'VideoB': (BuildContext context) => VideoB(),
        'VideoC': (BuildContext context) => VideoC(),
        'VideoD': (BuildContext context) => VideoD(),
        'VideoE': (BuildContext context) => VideoE(),
        'VideoF': (BuildContext context) => VideoF(),
        'VideoG': (BuildContext context) => VideoG(),
        'VideoH': (BuildContext context) => VideoH(),
        'VideoI': (BuildContext context) => VideoI(),
        'VideoJ': (BuildContext context) => VideoJ(),
        'VideoK': (BuildContext context) => VideoK(),
        'VideoL': (BuildContext context) => VideoL(),
        'VideoM': (BuildContext context) => VideoM(),
        'VideoN': (BuildContext context) => VideoN(),
        'Letra': (BuildContext context) => Letra(),
        'VideoO': (BuildContext context) => VideoO(),
        'VideoP': (BuildContext context) => VideoP(),
        'VideoQ': (BuildContext context) => VideoQ(),
        'VideoR': (BuildContext context) => VideoR(),
        'VideoS': (BuildContext context) => VideoS(),
        'VideoT': (BuildContext context) => VideoT(),
        'VideoU': (BuildContext context) => VideoU(),
        'VideoV': (BuildContext context) => VideoV(),
        'VideoW': (BuildContext context) => VideoW(),
        'VideoX': (BuildContext context) => VideoX(),
        'VideoY': (BuildContext context) => VideoY(),
        'VideoZ': (BuildContext context) => VideoZ(),
      },
    );
  }
}