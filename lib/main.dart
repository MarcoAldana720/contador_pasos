import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// CLASE DEL CONTENEDOR DE TITULO
class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CONTADOR DE PASOS',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromRGBO(18, 42, 91, 1)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'CONTADOR DE PASOS'),
    );
  }
}

// CLASE PARA PODER MOSTRAR ESTILO DEl CONTENEDOR DE TITULO
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Center(
          child: Text(
            title, 
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}