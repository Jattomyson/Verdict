import 'package:flutter/material.dart';

class VerdictScreen extends StatelessWidget {
  final String energy;
  final String location;

  const VerdictScreen({
    super.key,
    required this.energy,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    // Placeholder verdict (we'll replace with local decision engine later)
    final verdict = 'TONIGHT: Cook Something Simple';

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 30),
              Text(
                'TONIGHT:',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 16),
              Text(
                verdict,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}