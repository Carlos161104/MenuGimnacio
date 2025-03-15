import 'package:flutter/material.dart';
import 'package:parcial_uno/pages/entrenamientos.dart';
import 'package:parcial_uno/pages/estadisticas.dart';
import 'package:parcial_uno/pages/menulateral.dart';

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Charles Health'),
        backgroundColor: Color(0xff455A64),
        centerTitle: true,
      ),
      drawer: MenuLateral(),
      body: MenuBody(),
    );
  }
}

class MenuBody extends StatelessWidget {
  const MenuBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff212121), Color(0xff455A64)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.2, 0.8],
          ),
        ),
        padding: EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Ejercicios
            EjerciciosCarrucel(),
            // Calorias diarias
            Calorias(),
            Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.only(top: 5, left: 5, right: 5, bottom: 10),
              decoration: BoxDecoration(
                color: const Color(0xff3c3c3c),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Pasos(),
            ),
            Text(
              'Estadisticas',
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            TablaEstadisticas(),
          ],
        ),
      ),
    );
  }
}

class EjerciciosCarrucel extends StatelessWidget {
  const EjerciciosCarrucel({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 4,
        child: PageView(
          physics: BouncingScrollPhysics(),
          children: [
            Rutina(
              minutos: '20',
              numEjercicios: '13',
              titulo: 'Brazo',
              foto: 'assets/brazo.jpg',
            ),
            Rutina(
              minutos: '30',
              numEjercicios: '10',
              titulo: 'Pierna',
              foto: 'assets/pierna.jpg',
            ),
            Rutina(
              minutos: '15',
              numEjercicios: '20',
              titulo: 'Pecho',
              foto: 'assets/pecho.jpg',
            ),
            Rutina(
              minutos: '10',
              numEjercicios: '5',
              titulo: 'Abdomen',
              foto: 'assets/abdomen.jpg',
            ),
            Rutina(
              minutos: '40',
              numEjercicios: '16',
              titulo: 'Full-body',
              foto: 'assets/fullbody.jpg',
            ),
          ],
        ),
      ),
    );
  }
}

class Pasos extends StatelessWidget {
  const Pasos({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //Foto pista de fondo,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text(
                  '8,000',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '/10,000 Pasos',
                  style: TextStyle(fontSize: 15, color: Colors.white60),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  '80%',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                Grafica(porcerntaje: 0.8),
              ],
            ),
            Icon(Icons.arrow_forward_ios, size: 20, color: Colors.white),
          ],
        ),
      ],
    );
  }
}

class Calorias extends StatelessWidget {
  const Calorias({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.only(left: 5, right: 5),
      decoration: BoxDecoration(
        color: const Color(0xff3c3c3c),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.food_bank_sharp, size: 50, color: Colors.white),
          Column(
            children: [
              Text(
                '1,500',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                '/2,200 Kcal',
                style: TextStyle(fontSize: 15, color: Colors.white60),
              ),
            ],
          ),
          SizedBox(width: 70),
          Icon(Icons.arrow_forward_ios, size: 20, color: Colors.white),
        ],
      ),
    );
  }
}

class Grafica extends StatelessWidget {
  const Grafica({super.key, required this.porcerntaje});

  final double porcerntaje;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          stops: [this.porcerntaje, 1 - this.porcerntaje],
          colors: [Color(0xff455A64), Colors.white70],
        ),
      ),
    );
  }
}
