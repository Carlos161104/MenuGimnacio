import 'package:flutter/material.dart';

class Rutina extends StatelessWidget {
  const Rutina({
    super.key,
    required this.minutos,
    required this.numEjercicios,
    required this.titulo,
    required this.foto,
  });

  final String titulo;
  final String minutos;
  final String numEjercicios;
  final String foto;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 2, right: 2),
      decoration: BoxDecoration(
        color: const Color(0xff3c3c3c),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.all(5),
      child: Row(
        children: [
          ImagenRutina(foto: this.foto),
          Container(
            margin: EdgeInsets.only(left: 5),
            height: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  this.titulo,
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                InformacionRutina(
                  minutos: this.minutos,
                  numEjercicios: this.numEjercicios,
                ),
                Botoncomenzar(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ImagenRutina extends StatelessWidget {
  const ImagenRutina({super.key, required this.foto});

  final String foto;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.all(5),
      alignment: Alignment.topCenter,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(
          10,
        ), // Ajusta el valor según lo redondeado que quieras
        child: Image(image: AssetImage(this.foto)),
      ),
    );
  }
}

class InformacionRutina extends StatelessWidget {
  const InformacionRutina({
    super.key,
    required this.minutos,
    required this.numEjercicios,
  });

  final String minutos;
  final String numEjercicios;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5, bottom: 5),
      child: Row(
        children: [
          Row(
            children: [
              const Icon(Icons.timer, color: Colors.white60, size: 16),
              Text(
                '${this.minutos} minutos',
                style: const TextStyle(fontSize: 10, color: Colors.white60),
              ),
            ],
          ),
          const SizedBox(width: 10),
          Row(
            children: [
              const Icon(
                Icons.fitness_center_rounded,
                color: Colors.white60,
                size: 15,
              ),
              Text(
                '${this.numEjercicios} Ejercicios',
                style: const TextStyle(fontSize: 10, color: Colors.white60),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Botoncomenzar extends StatelessWidget {
  const Botoncomenzar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xff455A64),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: const [
          Text(
            'Comenzar rutina',
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
          SizedBox(width: 5),
          Icon(Icons.arrow_forward_ios, color: Colors.white, size: 20),
        ],
      ),
    );
  }
}
