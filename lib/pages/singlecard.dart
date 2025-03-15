import 'package:flutter/material.dart';

class SingleCard extends StatelessWidget {
  const SingleCard({
    super.key,
    required this.icono,
    required this.color,
    required this.texto,
  });

  final IconData icono;
  final Color color;
  final String texto;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.only(left: 5, bottom: 5),
      decoration: BoxDecoration(
        color: this.color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(this.icono, size: 40, color: Colors.white),
          Text(this.texto, style: TextStyle(color: Colors.white, fontSize: 20)),
          Icon(Icons.arrow_forward_ios, size: 15, color: Colors.white),
        ],
      ),
    );
  }
}
