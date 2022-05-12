import 'package:aprendizapp/Libraries/Globals/GlobalsLibrary.dart';
import 'package:aprendizapp/Libraries/Widgets/WidgetLibrary.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: app_bar(context, 'Inicio', 'home', ''),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              Text(
                'Bienvenido de vuelta Jon Lecuona',
                style: TextStyle(fontSize: 30, color: secondaryColor),
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                elevation: 1,
                color: Colors.white, //secondaryColor,
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        height: 200,
                        decoration: BoxDecoration(
                          color: secondaryColor,
                          image: const DecorationImage(
                            image: AssetImage('assets/images/imagen1.png'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          'Aprender a mirar el mundo',
                          style: TextStyle(fontSize: 20, color: secondaryColor),
                          textAlign: TextAlign.left,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 1,
                color: Colors.white, //secondaryColor,
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        height: 200,
                        decoration: BoxDecoration(
                          color: secondaryColor,
                          image: const DecorationImage(
                            image: AssetImage('assets/images/imagen2.png'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          'Una herramienta para estudiar nuestro sistema',
                          style: TextStyle(fontSize: 20, color: secondaryColor),
                          textAlign: TextAlign.left,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 1,
                color: Colors.white, //secondaryColor,
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        height: 200,
                        decoration: BoxDecoration(
                          color: secondaryColor,
                          image: const DecorationImage(
                            image: AssetImage('assets/images/imagen3.png'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          'Reconocimiento de comportamiento',
                          style: TextStyle(fontSize: 20, color: secondaryColor),
                          textAlign: TextAlign.left,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
