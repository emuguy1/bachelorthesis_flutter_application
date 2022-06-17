import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

//inspired by: https://medium.com/flutter-community/customize-grey-error-screen-flutter-e3252f9bdd2a

class CustomError extends StatelessWidget {
  final FlutterErrorDetails errorDetails;

  const CustomError({
    Key? key,
    required this.errorDetails,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
                'assets/error_illustration.png'),
            Text(
              kDebugMode
                  ? errorDetails.summary.toString()
                  : 'Oups! Something went wrong!',
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: kDebugMode ? Colors.red : Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 21),
            ),
            const SizedBox(height: 12),
            const Text(
              kDebugMode
                  ? 'https://docs.flutter.dev/testing/errors'
                  : "We encountered an error. Sorry for the inconvenience caused. Please contact us, if this happens, so we can resolve the problem.",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}