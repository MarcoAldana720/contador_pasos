import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


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


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Define el color RGB
    final Color customColor = Color.fromRGBO(18, 42, 91, 0.5); // Amarillo en RGB (255, 255, 0)

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Center(
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold, // Pone el título en negritas
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            left: screenWidth * 0.05, // El 5% del ancho de la pantalla
            top: screenHeight * 0.52, // El 52% de la altura de la pantalla
            child: Container(
              width: screenWidth * 0.9, // El 90% del ancho de la pantalla
              height: screenHeight * 0.35, // El 35% de la altura de la pantalla
              decoration: BoxDecoration(
                color: customColor, // Utiliza el color RGB definido
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(child: Text("Container")),
            ),
          ),
        ],
      ),
    );
  }
}
