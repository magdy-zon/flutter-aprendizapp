import 'package:flutter/material.dart';
import 'package:aprendizapp/Libraries/Globals/GlobalsLibrary.dart';

class Consider extends StatefulWidget {
  const Consider({Key? key}) : super(key: key);
  @override
  _ConsiderState createState() => _ConsiderState();
}

class _ConsiderState extends State<Consider> {
  int _currentStep = 0;
  StepperType stepperType = StepperType.horizontal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stepper(
              type: stepperType,
              currentStep: _currentStep,
              onStepTapped: (step) => tapped(step),
              onStepContinue: continued,
              onStepCancel: cancel,
              controlsBuilder: (BuildContext context,
                  {VoidCallback? onStepContinue, VoidCallback? onStepCancel}) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    TextButton(
                      onPressed: onStepCancel,
                      child: const Icon(
                        Icons.arrow_back_ios,
                        size: 30.0,
                      ),
                    ),
                    TextButton(
                      onPressed: onStepContinue,
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        size: 30.0,
                      ),
                    ),
                  ],
                );
              },
              steps: <Step>[
                Step(
                  title: const Text(''),
                  content: SizedBox(
                    height: MediaQuery.of(context).size.height - 250,
                    child: Column(
                      children: <Widget>[
                        const Text(
                          'Ayúdanos a responder',
                          style: TextStyle(fontSize: 25),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          '¿Has usado antes alguna simulación, página web o App para aprender matemáticas?',
                          style: TextStyle(fontSize: 25),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              height: 50,
                              child: ElevatedButton(
                                child: const Text(
                                  'Si',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                onPressed: () {
                                  continued();
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: secondaryColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 50,
                              child: ElevatedButton(
                                child: const Text(
                                  'No',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                onPressed: () {
                                  continued();
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: secondaryColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  isActive: _currentStep >= 0,
                  state: _currentStep >= 0
                      ? StepState.complete
                      : StepState.disabled,
                ),
                Step(
                  title: const Text(''),
                  content: SizedBox(
                    height: MediaQuery.of(context).size.height - 250,
                    child: Column(
                      children: <Widget>[
                        const Text(
                          'Ayúdanos a responder',
                          style: TextStyle(fontSize: 25),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          '¿Qué herramientas tecnológicas has usado para resolver problemas de matemáticas?',
                          style: TextStyle(fontSize: 25),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(),
                        ),
                      ],
                    ),
                  ),
                  isActive: _currentStep >= 1,
                  state: _currentStep >= 1
                      ? StepState.complete
                      : StepState.disabled,
                ),
                Step(
                  title: const Text(''),
                  content: SizedBox(
                    height: MediaQuery.of(context).size.height - 250,
                    child: Column(
                      children: <Widget>[
                        const Text(
                          'Ayúdanos a responder',
                          style: TextStyle(fontSize: 25),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Describe un caso en donde la tecnología haga uso de las matemáticas para resolver problemas de la vida cotidiana.',
                          style: TextStyle(fontSize: 25),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(),
                        ),
                      ],
                    ),
                  ),
                  isActive: _currentStep >= 2,
                  state: _currentStep >= 2
                      ? StepState.complete
                      : StepState.disabled,
                ),
                Step(
                  title: const Text(''),
                  content: SizedBox(
                    height: MediaQuery.of(context).size.height - 250,
                    child: Column(
                      children: <Widget>[
                        const Text(
                          'Ayúdanos a responder',
                          style: TextStyle(fontSize: 25),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          '¿Por qué la tecnología te puede ayudar a resolver situaciones de la vida cotidiana?',
                          style: TextStyle(fontSize: 25),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(),
                        ),
                      ],
                    ),
                  ),
                  isActive: _currentStep >= 3,
                  state: _currentStep >= 3
                      ? StepState.complete
                      : StepState.disabled,
                ),
                Step(
                  title: const Text(''),
                  content: SizedBox(
                    height: MediaQuery.of(context).size.height - 250,
                    child: Column(
                      children: <Widget>[
                        const Text(
                          'Ayúdanos a responder',
                          style: TextStyle(fontSize: 25),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          '¿Qué entiendes por modelación matemática?',
                          style: TextStyle(fontSize: 25),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(),
                        ),
                      ],
                    ),
                  ),
                  isActive: _currentStep >= 4,
                  state: _currentStep >= 4
                      ? StepState.complete
                      : StepState.disabled,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  tapped(int step) {
    setState(() => _currentStep = step);
  }

  continued() {
    _currentStep < 4 ? setState(() => _currentStep += 1) : null;
  }

  cancel() {
    _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
  }
}
