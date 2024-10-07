import 'package:aina_flutter_application_1/components/copyrights.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:aina_flutter_application_1/ForgotPassword/SendEmailSuccess.dart';

class SendEmail extends StatefulWidget {
  const SendEmail({super.key});

  @override
  State<SendEmail> createState() => _SendEmailState();
}

class _SendEmailState extends State<SendEmail> {

  final _formKey = GlobalKey<FormBuilderState>();
  final _emailFieldKey = GlobalKey<FormBuilderState>();
  bool isDisabled = true;

  void _updateButtonState() {
    // Check the validity of the email field directly
    final emailField = _formKey.currentState?.fields['email'];
    setState(() {
      // Set button state based on the validity of the email field
      isDisabled = emailField == null || !emailField.isValid;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, 
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Image(
                          height: 50,
                          image: AssetImage("assets/images/logo.png")
                        ),
                     ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 10.0),
                      child: Text(
                        "Forgot your password?",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0
                        )
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 40.0),
                      child: Text(
                        "Please enter your registered email and we'll send you instructions to reset your password",
                        textAlign: TextAlign.center,
                      ),
                    ),
                    FormBuilder(
                      key: _formKey,
                      autovalidateMode: AutovalidateMode.onUserInteraction, 
                      child: Column(
                        children: [
                          FormBuilderTextField(
                            key: _emailFieldKey,
                            name: 'email',
                            decoration: const InputDecoration(
                              hintText: "Enter your registered email",
                              labelText: 'Email',
                              labelStyle: TextStyle(
                                color: Colors.black
                              ),
                               border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                            ),
                            validator: FormBuilderValidators.compose([
                              FormBuilderValidators.required(errorText: "Email is required"),
                              FormBuilderValidators.email(errorText: "Enter a valid email address"),
                            ]),
                            onChanged: (value) {
                              _updateButtonState(); 
                            },
                          ),
                        ]
                      )
                    ),
                  ],
                )
                ),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: isDisabled ? null : () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SendEmailSuccess()),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.resolveWith<Color?>(
                        (Set<WidgetState> states) {
                          if (isDisabled) {
                            return Colors.red.withOpacity(0.5); 
                          }
                          if (states.contains(WidgetState.pressed)) {
                            return Theme.of(context).colorScheme.error; 
                          }
                          return Colors.red; 
                        },
                      ),
                    ),
                    child: const Text(
                      'Send email instructions',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(foregroundColor: Colors.red),
                    child: const Text('Back to login'),
                    onPressed: () {
                      
                    },
                  ),
                  const Copyrights()
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}