import 'package:flutter/material.dart';
import 'package:movie_app/presentation/components/background.dart';

class WatchlistPage extends StatelessWidget {
  const WatchlistPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Background(child: Center(child: const Text('WatchlistPage'))),
      ),
    );
  }
}
