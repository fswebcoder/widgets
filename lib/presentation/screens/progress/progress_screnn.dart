import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProgressScrenen extends StatelessWidget {
  final String name = 'progress_screnen';
  const ProgressScrenen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Progress'),
        ),
        body: _ProgressView(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.pop();
          },
          child: const Icon(Icons.arrow_back_ios_new_outlined,
              color: Colors.white),
        ));
  }
}

class _ProgressView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children:  [
           const SizedBox(height: 50),
           const Text('Circular progress indicator'),
           const SizedBox(height: 10),
           const CircularProgressIndicator(
            strokeWidth: 4,
            backgroundColor: Colors.black54,
          ),
           const Text('Progress indicator controlado'),
           const SizedBox(height: 20),
          _ControllerProgressIndicator(),
        ],
      ),
    );
  }
}

 class _ControllerProgressIndicator extends StatelessWidget {
 
   @override
   Widget build(BuildContext context) {
     return StreamBuilder<Object>(
       stream: Stream.periodic(const Duration(milliseconds: 300), (value){
            return (value * 2 ) / 100;
       }).takeWhile((value) => value < 100),
       builder: (context, snapshot) {
        final progressValue = snapshot.data as double? ?? 0.0; 
         return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
              CircularProgressIndicator(
                value: progressValue,
              ),
               const SizedBox(width: 20),
               Expanded(
                child: LinearProgressIndicator(
                  value: progressValue,
                  backgroundColor: Colors.black54,
                )
               )
             ],
          ),
         );
       }
     );
   }
 }