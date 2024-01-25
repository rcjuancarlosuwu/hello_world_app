import 'package:flutter/material.dart';
import 'package:hello_world_app/l10n/l10n.dart';

extension on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
}

class HelloWorldPage extends StatelessWidget {
  const HelloWorldPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: HelloWorldText(),
      ),
    );
  }
}

class HelloWorldText extends StatelessWidget {
  const HelloWorldText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const name = String.fromEnvironment('NAME', defaultValue: 'Workshop');
    return SelectableText(
      '${context.l10n.helloWorld} $name 🚀',
      style: context.textTheme.titleLarge,
    );
  }
}
