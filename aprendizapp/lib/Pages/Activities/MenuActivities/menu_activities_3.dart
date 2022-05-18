import 'package:aprendizapp/Libraries/Globals/GlobalsLibrary.dart';
import 'package:aprendizapp/Libraries/Widgets/WidgetLibrary.dart';
import 'package:flutter/material.dart';

class MenuActivityThird extends StatefulWidget {
  const MenuActivityThird({Key? key}) : super(key: key);

  @override
  State<MenuActivityThird> createState() => _MenuActivityThirdState();
}

class _MenuActivityThirdState extends State<MenuActivityThird> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          app_bar(context, 'Reconocimiento de comportamiento', 'menu3', 'pop'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              Card(
                elevation: 1,
                color: Colors.white,
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          'Actividad 1',
                          style: TextStyle(fontSize: 20, color: secondaryColor),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          IconButton(
                            color: secondaryColor,
                            icon: const Icon(Icons.edit),
                            tooltip: 'Realizar actividad',
                            onPressed: () {
                              Navigator.pushNamed(context, '/activity/third');
                            },
                          ),
                          IconButton(
                            color: secondaryColor,
                            icon: const Icon(Icons.info),
                            tooltip: 'Información de la actividad',
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 1,
                color: Colors.white,
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          'Actividad 2',
                          style: TextStyle(fontSize: 20, color: secondaryColor),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          IconButton(
                            color: secondaryColor,
                            icon: const Icon(Icons.edit),
                            tooltip: 'Realizar actividad',
                            onPressed: () {},
                          ),
                          IconButton(
                            color: secondaryColor,
                            icon: const Icon(Icons.info),
                            tooltip: 'Información de la actividad',
                            onPressed: () {},
                          ),
                        ],
                      ),
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
