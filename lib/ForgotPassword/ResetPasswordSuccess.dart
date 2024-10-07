import 'package:aina_flutter_application_1/components/copyrights.dart';
import 'package:flutter/material.dart';

class SendEmailSuccess extends StatelessWidget {
  const SendEmailSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(30.0),
              child: Image(
                  height: 50,
                  image: AssetImage("assets/images/reset_pwd_success.png")
                ),
            ),
            const Text("Successfully reset your password."),
            Column(
              children: [
                ElevatedButton(
                onPressed: () {
                    // Handle button press
                  },
                  style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.resolveWith<Color?>(
                        (Set<WidgetState> states) {
                          return Colors.red; 
                        },
                    ),
                  ),
                  child: const Text(
                    'Back to login',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                  TextButton(
                    style: TextButton.styleFrom(foregroundColor: Colors.red),
                    child: const Text('Resend email'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SendEmailSuccess()),
                      );
                    },
                  ),
                  const Copyrights()
                ],
              )
          ],
        )
      ),
    );
  }
}