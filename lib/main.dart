import 'package:flutter/material.dart';

void main() {
  runApp(PointesCounter());
}

class PointesCounter extends StatefulWidget {
  @override
  State<PointesCounter> createState() => _PointesCounterState();
}

class _PointesCounterState extends State<PointesCounter> {
  // const PointesCounter({Key? key}) : super(key: key);
  int teamAPoints = 0;

  int teamBPoints = 0;

  void addOnePoint() {
    print('mohamed');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 221, 207, 11),
          title: const Text('Pointes Counter'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(children: [
                  const Text(
                    'Team A',
                    style: TextStyle(
                      fontSize: 35,
                    ),
                  ),
                  Text(
                    '$teamAPoints',
                    style: const TextStyle(
                      fontSize: 150,
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      // padding: EdgeInsets.all(8),
                      backgroundColor: const Color.fromARGB(255, 221, 207, 11),
                      // maximumSize: const Size(150, 50),
                      fixedSize: const Size(150, 50),
                    ),
                    onPressed: () {
                      setState(() {
                        teamAPoints++;
                      });
                      print(teamAPoints);
                    },
                    child: const Text(
                      'Add 1 Point',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 221, 207, 11),
                      // maximumSize: const Size(150, 50),
                      fixedSize: const Size(150, 50),
                    ),
                    onPressed: () {
                      setState(() {
                        teamAPoints += 2;
                      });
                    },
                    child: const Text(
                      'Add 2 Point',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 221, 207, 11),
                      // maximumSize: const Size(150, 50),
                      fixedSize: const Size(150, 50),
                    ),
                    onPressed: () {
                      setState(() {
                        teamAPoints += 3;
                      });
                    },
                    child: const Text(
                      'Add 3 Point',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ]),
                const SizedBox(
                  height: 400,
                  child: VerticalDivider(
                    color: Color.fromARGB(255, 221, 207, 11),
                    thickness: 1,
                  ),
                ),
                Column(children: [
                  const Text(
                    'Team B',
                    style: TextStyle(
                      fontSize: 35,
                    ),
                  ),
                  Text(
                    '$teamBPoints',
                    style: const TextStyle(
                      fontSize: 150,
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 221, 207, 11),
                      // maximumSize: const Size(150, 50),
                      fixedSize: const Size(150, 50),
                    ),
                    onPressed: () {
                      setState(() {
                        teamBPoints++;
                      });
                      print(teamBPoints);
                    },
                    child: const Text(
                      'Add 1 Point',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 221, 207, 11),
                      // maximumSize: const Size(150, 50),
                      fixedSize: const Size(150, 50),
                    ),
                    onPressed: () {
                      setState(() {
                        teamBPoints += 2;
                      });
                    },
                    child: const Text(
                      'Add 2 Point',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 221, 207, 11),
                      // maximumSize: const Size(150, 50),
                      fixedSize: const Size(150, 50),
                    ),
                    onPressed: () {
                      setState(() {
                        teamBPoints += 3;
                      });
                    },
                    child: const Text(
                      'Add 3 Point',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ]),
              ],
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 221, 207, 11),
                // maximumSize: const Size(150, 50),
                fixedSize: const Size(150, 50),
              ),
              onPressed: () {
                setState(() {
                  teamAPoints = 0;
                  teamBPoints = 0;
                });
              },
              child: const Text(
                'Reset',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
