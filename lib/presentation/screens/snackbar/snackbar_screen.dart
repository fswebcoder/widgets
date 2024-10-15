import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {

  final String name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _SnackbarView();
  }
}

class _SnackbarView extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                AnimatedSnackBar.material(
                  
                  'loremp ipsum dolor sit amet consectetur adipiscing elit',
                  type: AnimatedSnackBarType.success,
                  animationCurve: Curves.decelerate,
                  duration: const Duration(milliseconds: 3000),
                  borderRadius: BorderRadius.circular(10),
                ).show(
                  context,
                );
                },
              child: const Text('Mostrar Snackbar'),
            ),
            FilledButton(onPressed: (){
              showAboutDialog(context: 
                context,
                barrierDismissible: false,
                applicationIcon: const FlutterLogo(),
                applicationName: 'Aplicación de ejemplo',
                applicationVersion: '1.0.0',
                applicationLegalese: '© 2021 Ejemplo',
                barrierColor: Colors.black.withOpacity(0.5),
                children: const [
                  Text('Esta es una aplicación de ejemplo para mostrar el uso de las licencias de software')
                ],
                
              );
            }, child: const Text('Licencias usadas')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pop();
        },
        child: const Icon(Icons.arrow_back_ios_new_outlined, color: Colors.white),
      ),
    );
  }
}