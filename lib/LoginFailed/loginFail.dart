import 'package:flutter/material.dart';
import 'package:flutter_application_1/accordian.dart';

class LoginFail extends StatelessWidget {
  const LoginFail({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          //title: const Text('Two Full Height Columns Example'),
        ),
        body:  Row(
          children: [ 
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Expanded(
                      child: Container(
                        color: Colors.blue,
                        child: const Center(
                          child: Text(
                            'Column 1, Item 1',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.white,
                        child: const Center(
                          child: Text(
                            'Need Help ?',
                            style: TextStyle(color: Colors.black,fontSize: 36,fontWeight: FontWeight.bold,),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                    child: Container(
                      color: Colors.white,
                      child: const Center(
                        child: Text(
                          'Stuck on something? Here are your most frequently asked questions.',
                          style: TextStyle(color: Colors.black,fontSize: 14, height: 1.5,),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.green,
                      child: const Center(
                        child: Accordian(),
                      ),
                    ),
                  ),
                
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}