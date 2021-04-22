import 'package:flutter/material.dart';

import 'models/transferencia.dart';
import 'screens/transferencia/formulario.dart';
import 'screens/transferencia/lista.dart';

void main() => runApp(
      BytebankApp(),
    );

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green[800],
        accentColor: Colors.blueAccent[700],
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.blueAccent[700],
          ),
        ),
      ),
      routes: {
        '/': (context) => ListaTransferencias(),
      },
      onGenerateRoute: (RouteSettings settings) {
        final String? routeName = settings.name;

        switch (routeName) {
          case '/add':
            return MaterialPageRoute<Transferencia>(
              builder: (BuildContext context) => FormularioTransferencia(),
              settings: settings,
            );
        }
      },
    );
  }
}

