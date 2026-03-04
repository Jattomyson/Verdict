import 'package:flutter/material.dart';
import 'verdict_screen.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose(); // good practice: avoid memory leaks
    super.dispose();
  }

  void _goToVerdict() {
    final meal = _controller.text.trim();

    // Optional: basic validation so empty input doesn’t proceed
    if (meal.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Type something first 🙂')),
      );
      return;
    }

    debugPrint('User entered: $meal');

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => const VerdictScreen(
          energy: 'medium',
          location: 'home',
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dinner Input')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'What did you eat?',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _controller,
              textInputAction: TextInputAction.done,
              onSubmitted: (_) => _goToVerdict(),
              decoration: const InputDecoration(
                hintText: 'Type your meal...',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _goToVerdict,
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}