import 'package:flutter/material.dart';

void main() => runApp(PelizViewApp());

class PelizViewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PelizView',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Widget de imagen de fondo
          Positioned.fill(
            child: Image.network(
              'https://w.forfun.com/fetch/4e/4e8b61705aea3fe461bdab75e62e0c8f.jpeg?h=900&r=0.5', // URL de la imagen de fondo
              fit: BoxFit.cover,
            ),
          ),
          // Widget para el título "PelizView"
          Positioned(
            top: 50.0,
            left: 16.0,
            child: Text(
              'PelizView',
              style: TextStyle(
                fontSize: 36.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Widget para el nombre del creador "Julian Rojas"
          Positioned(
            top: 100.0,
            left: 16.0,
            child: Text(
              'Julian Rojas',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.white,
              ),
            ),
          ),
          // Widget para el bloque de 2 cuadrados con nombres de películas
          Positioned(
            top: 200.0,
            left: 16.0,
            child: Row(
              children: [
                _buildMovieTile('Nombre de película 1'),
                SizedBox(width: 16.0),
                _buildMovieTile('Nombre de película 2'),
              ],
            ),
          ),
          // Widget para los iconos de cuenta y compartir
          Positioned(
            bottom: 16.0,
            right: 16.0,
            child: Row(
              children: [
                Icon(
                  Icons.account_circle,
                  size: 32.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                SizedBox(width: 16.0),
                Icon(
                  Icons.share,
                  size: 32.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Función para construir los cuadros con nombres de películas
  Widget _buildMovieTile(String movieName) {
    return Container(
      width: 150.0,
      height: 150.0,
      color: Color.fromARGB(218, 1, 85, 211),
      child: Center(
        child: Text(
          movieName,
          style: TextStyle(fontSize: 18.0),
        ),
      ),
    );
  }
}