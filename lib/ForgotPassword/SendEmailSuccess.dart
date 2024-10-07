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
                  image: AssetImage("assets/images/email_sent.png")
                ),
            ),
            const Text("We've sent you and email with instructions to reset your password. Check your Junk/Spam folder if it doesn't arrive. If you still can't log in, click resend email or contact your administrator."),
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