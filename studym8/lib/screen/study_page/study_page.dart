import 'package:flutter/material.dart';
import 'package:studym8/index.dart';

class StudyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 80),
                child: Text('Collaborative Study',
                    style: TextStyle(
                        fontSize: 32,
                        color: white,
                        fontWeight: FontWeight.bold)),
              ),
              const SizedBox(
                width: 382,
                height: 382,
              ),
              const Text(
                'Study in groups, Share ideas',
                style: TextStyle(fontSize: 24, color:white),
                textAlign: TextAlign.center,
              ),
             const Padding(
                padding: EdgeInsets.symmetric(vertical: 34.0),
                child: Text(
                  '3 of 3',
                  style: TextStyle(fontSize: 16, color: white),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 167,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Skip',
                          style: TextStyle(
                              fontSize: 24, color: primary)),
                    ),
                  ),
                  SizedBox(
                    width: 167,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Next',
                          style: TextStyle(
                              fontSize: 24, color:primary)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
