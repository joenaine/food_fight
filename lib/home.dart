import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  const Home({super.key, this.image});
  final String? image;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int first = 20;
  int second = 20;
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
  }

  bool isLoading = false;

  @override
  dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        Flexible(
          flex: first,
          // flex: first,
          child: GestureDetector(
            onTap: () {
              setState(() {
                if (second > 1) {
                  first++;
                  second--;
                }
              });
              if (second == 1) {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        actionsAlignment: MainAxisAlignment.center,
                        alignment: Alignment.center,
                        title: const Center(
                            child: Text(
                          'Red WINS',
                          style: TextStyle(fontSize: 36),
                        )),
                        actions: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/wolt.png',
                                    height: 50,
                                  ),
                                  const SizedBox(width: 20),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.amber,
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(color: Colors.grey)),
                                    child: Image.asset(
                                      'assets/glovo.png',
                                      height: 50,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 30),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextButton(
                                      onPressed: () {
                                        setState(() {
                                          first = 20;
                                          second = 20;
                                        });
                                        Navigator.pop(context);
                                      },
                                      child: const Text(
                                        'RESTART',
                                        style: TextStyle(fontSize: 24),
                                      )),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                        Navigator.pop(context);
                                      },
                                      child: const Text(
                                        'Back',
                                        style: TextStyle(fontSize: 24),
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ],
                      );
                    });
              }
            },
            child: Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.red,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    right: -90,
                    child: Transform.scale(
                      scaleX: 1,
                      scaleY: 1,
                      child: SizedBox(
                          height: 180, child: Image.asset(widget.image!)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        // const VerticalDivider(color: Colors.white),
        Flexible(
          flex: second,
          child: GestureDetector(
            onTap: () {
              setState(() {
                if (first > 1) {
                  second++;
                  first--;
                }
              });
              if (first == 1) {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        actionsAlignment: MainAxisAlignment.center,
                        alignment: Alignment.center,
                        title: const Center(
                            child: Text(
                          'Yellow WINS',
                          style: TextStyle(fontSize: 36),
                        )),
                        actions: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/wolt.png',
                                    height: 50,
                                  ),
                                  const SizedBox(width: 20),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.amber,
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(color: Colors.grey)),
                                    child: Image.asset(
                                      'assets/glovo.png',
                                      height: 50,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 30),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextButton(
                                      onPressed: () {
                                        setState(() {
                                          first = 20;
                                          second = 20;
                                        });
                                        Navigator.pop(context);
                                      },
                                      child: const Text(
                                        'RESTART',
                                        style: TextStyle(fontSize: 24),
                                      )),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                        Navigator.pop(context);
                                      },
                                      child: const Text(
                                        'Back',
                                        style: TextStyle(fontSize: 24),
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ],
                      );
                    });
              }
            },
            child: Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.amber,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: -100,
                    child: SizedBox(
                        height: 180, child: Image.asset(widget.image!)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
