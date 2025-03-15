import 'package:flutter/material.dart';
import 'package:parcial_uno/pages/singlecard.dart';

class TablaEstadisticas extends StatelessWidget {
  const TablaEstadisticas({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, right: 5, bottom: 15),
      child: Table(
        children: [
          TableRow(
            children: [
              SingleCard(
                icono: Icons.fitness_center_rounded,
                color: const Color(0xff3c3c3c),
                texto: 'Rutinas',
              ),
              SingleCard(
                icono: Icons.run_circle_sharp,
                color: const Color(0xff3c3c3c),
                texto: 'Cardio',
              ),
            ],
          ),
          TableRow(
            children: [
              SingleCard(
                icono: Icons.local_drink_sharp,
                color: const Color(0xff3c3c3c),
                texto: 'Agua',
              ),
              SingleCard(
                icono: Icons.bedroom_parent,
                color: const Color(0xff3c3c3c),
                texto: 'Sueño',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
