import 'package:flutter/material.dart';
  
const cards = <Map<String, dynamic>>[
  {"elevation": 0.0,"label": "Elevatio 0"},
  {"elevation": 1.0,"label": "Elevatio 1"},
  {"elevation": 2.0,"label": "Elevatio 2"},
  {"elevation": 3.0,"label": "Elevatio 3"},
  {"elevation": 4.0,"label": "Elevatio 4"},
  {"elevation": 5.0,"label": "Elevatio 5"},
];

class CardsScreen extends StatelessWidget {
  static const String name = 'CardsScreen';
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarjetas'),
      ),
      body: _CardsView(),
    );
  }
}

class _CardsView extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...cards.map((card) => _CustomCard(
            elevation: card['elevation'],
            label: card['label'],
          )),
           ...cards.map((card) => _CustomCard1(
            elevation: card['elevation'],
            label: card['label'],
          )),
        ...cards.map((card) => _CustomCard2(
            elevation: card['elevation'],
            label: card['label'],
          )),
      ...cards.map((card) => _CustomCard3(
            elevation: card['elevation'],
            label: card['label'],
          )),
  
          const SizedBox(height: 50), 
        ],
      ),
    );
  }
}

class _CustomCard extends StatelessWidget {
  final double elevation;
  final String label;

  const _CustomCard({
    required this.elevation,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child:  Padding(
        padding:  const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child:  Column(
          children: [
             const SizedBox(height: 10),
              const Align(
              alignment: Alignment.topRight,
              child: Icon(Icons.more_vert_outlined)
             ),
             Align(
              alignment: Alignment.bottomLeft,
              child: Text(label)
             )
          ],
        ),
      ),
    );
  }
}

class _CustomCard1 extends StatelessWidget {
  final double elevation;
  final String label;

  const _CustomCard1({
    required this.elevation,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme.primary;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(color: colors, width: 2),
      ),
      elevation: elevation,
      child:  Padding(
        padding:  const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child:  Column(
          children: [
             const SizedBox(height: 10),
              const Align(
              alignment: Alignment.topRight,
              child: Icon(Icons.more_vert_outlined)
             ),
             Align(
              alignment: Alignment.bottomLeft,
              child: Text('$label - outline', style: TextStyle(color: colors))
             )
          ],
        ),
      ),
    );
  }
}

class _CustomCard2 extends StatelessWidget {
  final double elevation;
  final String label;

  const _CustomCard2({
    required this.elevation,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      color: colors.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(color: colors.primary, width: 2),
      ),
      elevation: elevation,
      child:  Padding(
        padding:  const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child:  Column(
          children: [
             const SizedBox(height: 10),
               Align(
              alignment: Alignment.topRight,
              child: Container(
                decoration: BoxDecoration(
                  color: colors.primary,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: IconButton(
                  icon: const Icon(Icons.more_vert_outlined, color: Colors.white),
                  onPressed: (){},
                  ),
              )
             ),
             Align(
              alignment: Alignment.bottomLeft,
              child: Text('$label - outline', style: const TextStyle(color: Colors.white))
             )
          ],
        ),
      ),
    );
  }
}
class _CustomCard3 extends StatelessWidget {
  final double elevation;
  final String label;

  const _CustomCard3({
    required this.elevation,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(color: colors.primary, width: 2),
      ),
      elevation: elevation,
      child:  Stack(
        children: [
          Image.network(
            'https://picsum.photos/id/${elevation.toInt()}/600/250',
          height: 250,
          fit: BoxFit.cover,  
          ),
              Align(
              alignment: Alignment.topRight,
              child: Container(
                decoration: BoxDecoration(
                  color: colors.primary,
                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20))
                ),
                child: IconButton(
                  icon: const Icon(Icons.more_vert_outlined, color: Colors.white),
                  onPressed: (){},
                  ),
              )
             )
        ],
      ),
    );
  }
}