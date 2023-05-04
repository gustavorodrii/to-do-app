import 'package:flutter/material.dart';

import '../main.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/images/splash_screen.png',
              width: 300,
              height: 300,
            ),
          ),
          const SizedBox(height: 30),
          RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
              style: TextStyle(
                fontSize: 22,
                fontFamily: 'Varela Round',
                fontWeight: FontWeight.w600,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'O aplicativo ',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text: 'ideal',
                  style: TextStyle(
                      color: Color(
                          0xFFFF4500) // a cor que você quer para a palavra "ideal"
                      ),
                ),
                TextSpan(
                  text: ' para armazenar\n suas tarefas diárias',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 60),
          ElevatedButton(
            style: ButtonStyle(
              elevation: MaterialStateProperty.all<double>(10),
              minimumSize: MaterialStateProperty.all<Size>(
                const Size(300, 60),
              ),
              backgroundColor: MaterialStateProperty.all<Color>(
                const Color(0xFFFF4500),
              ),
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              );
            },
            child: const Text(
              'COMEÇE AGORA',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
