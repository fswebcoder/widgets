import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets/config/router/app_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  const SlideInfo({
    required this.title,
    required this.caption,
    required this.imageUrl,
  });
}

final slides = <SlideInfo>[
  const SlideInfo(
    title: 'Busca la comida',
    caption:
        'lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
    imageUrl: 'assets/images/1.png',
  ),
  const SlideInfo(
    title: 'Entrega rápida',
    caption:
        'lorem dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
    imageUrl: 'assets/images/2.png',
  ),
  const SlideInfo(
    title: 'Disfruta de la comida',
    caption:
        'texto de relleno dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
    imageUrl: 'assets/images/3.png',
  ),
];

class AppTutorialScreen extends StatefulWidget {

  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  final String name = 'app_tutorial';
  late final PageController pageViewControler = PageController();
  bool endReached = false;
  @override
  void initState() {
    super.initState();
    pageViewControler.addListener(() {
      final page = pageViewControler.page ?? 0;
      if (!endReached && page >= (slides.length - 1.5)) {
        setState(() {
          endReached = true;
        });
      }
    });
  }

  @override
  void dispose() {
    pageViewControler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Establece el color de fondo aquí
      body: Stack(
        children: [
            PageView.builder(
              controller: pageViewControler,
              itemCount: slides.length,
              itemBuilder: (context, index) {
                final slide = slides[index];
                return _Slide(
                  title: slide.title,
                  caption: slide.caption,
                  imageUrl: slide.imageUrl,
                );
              },
            ),
            Positioned(
              top: 50,
              right: 20,
              child: TextButton(
                onPressed:(){
                   context.pop();
                },
                child: const Text('Salir'),
              ),
            ),
           endReached ? Positioned(
              bottom: 20,
              right: 30,
              child: FadeInRight(child: ElevatedButton(onPressed: (){context.pop();}, child: Text('Comenzar')))
                
             ) : const SizedBox()
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide(
      {super.key,
      required this.title,
      required this.caption,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final titlesStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(imageUrl),
            const SizedBox(height: 20),
            Text(
              title,
              style: titlesStyle,
            ),
            const SizedBox(height: 20),
            Text(
              caption,
              style: captionStyle,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
