import 'package:flutter/material.dart';


class Principal extends StatelessWidget{

  @override
  Widget build(BuildContext context){


    return Scaffold(
        appBar: AppBar(
          title: Text('Lenguaje Dactilologico Boliviano', 
            style:TextStyle(
              color: Colors.black
            )
          ),
          backgroundColor: Color(0xffAEA8A7),
          brightness: Brightness.light,
          elevation: 0,
        ),
        body: Container(
          padding: EdgeInsets.only(
            top: 130,
            bottom: 10,
            right: 10,
            left: 10
          ),
          decoration: BoxDecoration(
            image: new DecorationImage(image: new AssetImage('assets/fondo.png'),
              alignment: Alignment.topCenter
            ),
          ),
          child: ListView(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: GestureDetector(
                          onTap: () => Navigator.pushNamed(context, 'VideoA'),
                          child: SizedBox(
                            width: 150,
                            height: 150,
                            child: Center( 
                              child: Image.asset('assets/foto/a.PNG', scale: 0.5),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: GestureDetector(
                          onTap: () => Navigator.pushNamed(context, 'VideoB'),
                          child: SizedBox(
                            width: 150,
                            height: 150,
                            child: Center( 
                              child: Image.asset('assets/foto/b.PNG', scale: 0.5),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),

               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: GestureDetector(
                          onTap: () => Navigator.pushNamed(context, 'VideoC'),
                          child: SizedBox(
                            width: 150,
                            height: 150,
                            child: Center( 
                              child: Image.asset('assets/foto/c.PNG', scale: 0.5),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: GestureDetector(
                          onTap: () => Navigator.pushNamed(context, 'VideoD'),
                          child: SizedBox(
                            width: 150,
                            height: 150,
                            child: Center( 
                              child: Image.asset('assets/foto/d.PNG', scale: 0.5),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: GestureDetector(
                          onTap: () => Navigator.pushNamed(context, 'VideoE'),
                          child: SizedBox(
                            width: 150,
                            height: 150,
                            child: Center( 
                              child: Image.asset('assets/foto/e.PNG', scale: 0.5),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: GestureDetector(
                          onTap: () => Navigator.pushNamed(context, 'VideoF'),
                          child: SizedBox(
                            width: 150,
                            height: 150,
                            child: Center( 
                              child: Image.asset('assets/foto/f.PNG', scale: 0.5),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: GestureDetector(
                          onTap: () => Navigator.pushNamed(context, 'VideoG'),
                          child: SizedBox(
                            width: 150,
                            height: 150,
                            child: Center( 
                              child: Image.asset('assets/foto/g.PNG', scale: 0.5),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: GestureDetector(
                          onTap: () => Navigator.pushNamed(context, 'VideoH'),
                          child: SizedBox(
                            width: 150,
                            height: 150,
                            child: Center( 
                              child: Image.asset('assets/foto/h.PNG', scale: 0.5),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: GestureDetector(
                          onTap: () => Navigator.pushNamed(context, 'VideoI'),
                          child: SizedBox(
                            width: 150,
                            height: 150,
                            child: Center( 
                              child: Image.asset('assets/foto/i.PNG', scale: 0.5),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: GestureDetector(
                          onTap: () => Navigator.pushNamed(context, 'VideoJ'),
                          child: SizedBox(
                            width: 150,
                            height: 150,
                            child: Center( 
                              child: Image.asset('assets/foto/j.PNG', scale: 0.5),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: GestureDetector(
                          onTap: () => Navigator.pushNamed(context, 'VideoK'),
                          child: SizedBox(
                            width: 150,
                            height: 150,
                            child: Center( 
                              child: Image.asset('assets/foto/k.PNG', scale: 0.5),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: GestureDetector(
                          onTap: () => Navigator.pushNamed(context, 'VideoL'),
                          child: SizedBox(
                            width: 150,
                            height: 150,
                            child: Center( 
                              child: Image.asset('assets/foto/l.PNG', scale: 0.5),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: GestureDetector(
                          onTap: () => Navigator.pushNamed(context, 'VideoM'),
                          child: SizedBox(
                            width: 150,
                            height: 150,
                            child: Center( 
                              child: Image.asset('assets/foto/m.PNG', scale: 0.5),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: GestureDetector(
                          onTap: () => Navigator.pushNamed(context, 'VideoN'),
                          child: SizedBox(
                            width: 150,
                            height: 150,
                            child: Center( 
                              child: Image.asset('assets/foto/n.PNG', scale: 0.5),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: GestureDetector(
                          onTap: () => Navigator.pushNamed(context, 'Letra'),
                          child: SizedBox(
                            width: 150,
                            height: 150,
                            child: Center( 
                              child: Image.asset('assets/foto/ñ.PNG', scale: 0.5),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: GestureDetector(
                          onTap: () => Navigator.pushNamed(context, 'VideoO'),
                          child: SizedBox(
                            width: 150,
                            height: 150,
                            child: Center( 
                              child: Image.asset('assets/foto/o.PNG', scale: 0.5),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: GestureDetector(
                          onTap: () => Navigator.pushNamed(context, 'VideoP'),
                          child: SizedBox(
                            width: 150,
                            height: 150,
                            child: Center( 
                              child: Image.asset('assets/foto/p.PNG', scale: 0.5),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: GestureDetector(
                          onTap: () => Navigator.pushNamed(context, 'VideoQ'),
                          child: SizedBox(
                            width: 150,
                            height: 150,
                            child: Center( 
                              child: Image.asset('assets/foto/q.PNG', scale: 0.5),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: GestureDetector(
                          onTap: () => Navigator.pushNamed(context, 'VideoR'),
                          child: SizedBox(
                            width: 150,
                            height: 150,
                            child: Center( 
                              child: Image.asset('assets/foto/r.PNG', scale: 0.5),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: GestureDetector(
                          onTap: () => Navigator.pushNamed(context, 'VideoS'),
                          child: SizedBox(
                            width: 150,
                            height: 150,
                            child: Center( 
                              child: Image.asset('assets/foto/s.PNG', scale: 0.5),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: GestureDetector(
                          onTap: () => Navigator.pushNamed(context, 'VideoT'),
                          child: SizedBox(
                            width: 150,
                            height: 150,
                            child: Center( 
                              child: Image.asset('assets/foto/t.PNG', scale: 0.5),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: GestureDetector(
                          onTap: () => Navigator.pushNamed(context, 'VideoU'),
                          child: SizedBox(
                            width: 150,
                            height: 150,
                            child: Center( 
                              child: Image.asset('assets/foto/u.PNG', scale: 0.5),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: GestureDetector(
                          onTap: () => Navigator.pushNamed(context, 'VideoV'),
                          child: SizedBox(
                            width: 150,
                            height: 150,
                            child: Center( 
                              child: Image.asset('assets/foto/v.PNG', scale: 0.5),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: GestureDetector(
                          onTap: () => Navigator.pushNamed(context, 'VideoW'),
                          child: SizedBox(
                            width: 150,
                            height: 150,
                            child: Center( 
                              child: Image.asset('assets/foto/w.PNG', scale: 0.5),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: GestureDetector(
                          onTap: () => Navigator.pushNamed(context, 'VideoX'),
                          child: SizedBox(
                            width: 150,
                            height: 150,
                            child: Center( 
                              child: Image.asset('assets/foto/x.PNG', scale: 0.5),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: GestureDetector(
                          onTap: () => Navigator.pushNamed(context, 'VideoY'),
                          child: SizedBox(
                            width: 150,
                            height: 150,
                            child: Center( 
                              child: Image.asset('assets/foto/y.PNG', scale: 0.5),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: GestureDetector(
                          onTap: () => Navigator.pushNamed(context, 'VideoZ'),
                          child: SizedBox(
                            width: 150,
                            height: 150,
                            child: Center( 
                              child: Image.asset('assets/foto/z.PNG', scale: 0.5),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  
                ],
              ),
            
            ],
          ),
        ),
      );
  } 

}