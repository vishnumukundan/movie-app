// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:movie_app/presentation/components/text.dart';

class ErrorWidget__widget extends StatelessWidget {
  const ErrorWidget__widget({Key? key, required this.errorDetails})
      : super(key: key);

  final FlutterErrorDetails errorDetails;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.red),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const <Widget>[
                Icon(Icons.error),
                SizedBox(width: 8),
                Medium__text(
                  text: 'Error',
                  fontSize: 16.0,
                  color: Colors.white,
                )
              ],
            ),
            const SizedBox(height: 16.0),
            Regular__text(
              text: errorDetails.exceptionAsString(),
              fontSize: 16.0,
              color: Colors.white,
              height: 1.2,
              letterSpacing: 0.5,
            ),
          ],
        ),
      ),
    );
  }
}
