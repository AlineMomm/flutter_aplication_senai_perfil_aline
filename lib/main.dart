import 'package:flutter/material.dart';

void main() {
  runApp(PerfilApp());
}

class PerfilApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Perfil',
      debugShowCheckedModeBanner: false,
      home: PerfilPage(),
    );
  }
}

class PerfilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 40),

            // Imagem de perfil centralizada
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(
                  'https://images.icon-icons.com/2555/PNG/512/profile_picture_user_icon_153054.png',
                ),
              ),
            ),

            SizedBox(height: 20),

            // Nome
            Center(
              child: Text(
                'Aline Momm',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Função
            Center(
              child: Text(
                'Desenvolvedor Flutter',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            SizedBox(height: 30),

        // Habilidades
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0), // distância da borda
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // alinha à esquerda
                children: [
                  Text(
                    'Habilidades:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('- Flutter'),
                  Text('- Java'),
                  Text('- Pyton'),
                  Text('- JavaScript'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
