import 'package:flutter/material.dart';

class MenuLateral extends StatelessWidget {
  const MenuLateral({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Color(0xff455A64)),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.account_circle_rounded,
                  size: 40,
                  color: Colors.white,
                ),
                Text(
                  'Carlos Noguez',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Icon(Icons.qr_code, size: 20, color: Colors.white),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.security_rounded),
            title: Text("Informacion personal"),
            trailing: Icon(Icons.arrow_right),
          ),
          ListTile(
            leading: Icon(Icons.heart_broken),
            title: Text("Editar preferencias"),
            trailing: Icon(Icons.arrow_right),
          ),
          ListTile(
            leading: Icon(Icons.no_encryption_gmailerrorred_rounded),
            title: Text("Editar lista de no recomendaciones"),
            trailing: Icon(Icons.arrow_right),
          ),
          ListTile(
            leading: Icon(Icons.accessibility),
            title: Text("Accesibilidad"),
            trailing: Icon(Icons.arrow_right),
          ),
          ListTile(
            leading: Icon(Icons.support_agent_outlined),
            title: Text("Soporte"),
            trailing: Icon(Icons.arrow_right),
          ),
        ],
      ),
    );
  }
}
