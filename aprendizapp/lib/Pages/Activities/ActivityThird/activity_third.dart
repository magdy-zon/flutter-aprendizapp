// ignore_for_file: unnecessary_const

import 'dart:math';

import 'package:aprendizapp/Libraries/Globals/GlobalsLibrary.dart';
import 'package:aprendizapp/Libraries/Widgets/WidgetLibrary.dart';
import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';

class ActivityThird extends StatefulWidget {
  const ActivityThird({Key? key}) : super(key: key);

  @override
  State<ActivityThird> createState() => _ActivityThirdState();
}

class _ActivityThirdState extends State<ActivityThird> {
  int number = 0;
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: app_bar(context, 'Actividad 1', 'menu3', 'pop'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              Text(
                'Indentificar comportamiento',
                style: TextStyle(fontSize: 20, color: secondaryColor),
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Realiza el gesto de zoom out en la pantalla',
                style: TextStyle(fontSize: 15, color: secondaryColor),
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                elevation: 2,
                child: SizedBox(
                  width: double.infinity,
                  height: 500,
                  child: CustomPaint(
                    willChange: true,
                    painter: OpenPainter(number: number),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          number++;
                        });
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  MaterialButton(
                    onPressed: () {
                      print("Circle button pressed");
                    },
                    color: secondaryColor,
                    textColor: Colors.white,
                    child: const Icon(
                      Icons.edit,
                    ),
                    padding: const EdgeInsets.all(20),
                    shape: const CircleBorder(),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Stepper(
                currentStep: _index,
                onStepCancel: () {
                  if (_index > 0) {
                    setState(() {
                      _index -= 1;
                    });
                  }
                },
                onStepContinue: () {
                  if (_index <= 0) {
                    setState(() {
                      _index += 1;
                    });
                  }
                },
                onStepTapped: (int index) {
                  setState(() {
                    _index = index;
                  });
                },
                steps: <Step>[
                  Step(
                    title: const Text('Pregunta 1'),
                    content: Container(
                      alignment: Alignment.centerLeft,
                      child: Column(children: <Widget>[
                        const Text('¿Qué notas?¿Qué te puedes preguntar?'),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 16),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Respuesta',
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                  Step(
                    title: const Text('Pregunta 2'),
                    content: Container(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        children: <Widget>[
                          const Text(
                              '¿Cuántos circulos aparecen en la primera interacción?'),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 16),
                              child: Row(
                                children: const <Widget>[
                                  const GroupButton(
                                    isRadio: true,
                                    buttons: [
                                      "1",
                                      "2",
                                      "3",
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class OpenPainter extends CustomPainter {
  int number;
  OpenPainter({required this.number});
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = secondaryColor
      ..style = PaintingStyle.fill;
    //in this point occurs the magic
    canvas.drawCircle(const Offset(50, 50), 15, paint1);
    var total = double.infinity;

    for (var i = 0; i < number; i++) {
      var cx = Random().nextDouble() + Random().nextInt(200) + 100;
      var cy = Random().nextDouble() + Random().nextInt(200) + 100;
      canvas.drawCircle(Offset(cx, cy), 15, paint1);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
