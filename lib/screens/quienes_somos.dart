import 'package:flutter/material.dart';
import 'package:iktan/witgets/fondo.dart';

class QuienesSomosScreen extends StatelessWidget {
  const QuienesSomosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double maxHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
              children: [
                Align(
                  child: Container(
                    height: maxHeight,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xffFDC152),
                          Color(0xffF9BF55),
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.5),
                  child: Center(
                    child: SizedBox(
                      height: maxHeight* 1.05,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: CustomPaint(
                        painter: CirclePainter(),
                        child: Column(
                          children: [
                         SizedBox(height: maxHeight*0.1),
                  Center(
                    child: Image.asset('assets/logo.png',
                        height: MediaQuery.of(context).size.height * 0.13,
                        width: MediaQuery.of(context).size.width * 0.2,
                        fit: BoxFit.contain),
                  ),
                  Image.asset('assets/texto.png',
                      height: MediaQuery.of(context).size.height * 0.13,
                      width: MediaQuery.of(context).size.width * 0.4,
                      fit: BoxFit.contain),
                  const Text(
                    '1.0.0',
                    style: TextStyle(
                      fontSize: 20,
                      letterSpacing: 2.0,
                    ),
                  ),
                  SizedBox(height: maxHeight*0.05),
                  const Text(
                    '¿Quiénes Somos?',
                    style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffF9BF55)),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  const Text(
                    'Somos una empresa comprometida con tu \n conocimiento y crecimiento en las areas petroleras.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 12, letterSpacing: 2.0, color: Colors.black),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                  const Text(
                    'Visión',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffF9BF55)),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  const Text(
                    'Nuestro objetivo es ofrecer a nuestros clientes soluciones de software de alta calidad, con un enfoque en la usabilidad y la experiencia del usuario.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 12, letterSpacing: 2.0, color: Colors.black),
                  ),
                              ],
                            ),
                        ),
                      ),
                  ),
                ),
              ],
        ),
      ),

    );
  }
}
