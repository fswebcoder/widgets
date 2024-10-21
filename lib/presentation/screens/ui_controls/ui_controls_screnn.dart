import 'package:flutter/material.dart';

class UiControlsScrenn extends StatelessWidget {

  final String name = 'ui_controls_screnn';

  const UiControlsScrenn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Controles de UI'),
      ),
      body: _UiControlsView(),
    );
  }
}

enum Transportation {
  car,
  bike,
  plane,
  boat,
  
}

class _UiControlsView extends StatefulWidget {

@override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

class _UiControlsViewState extends State<_UiControlsView> {

  bool developerMode = true;
  Transportation selectedTransportation = Transportation.car;
  bool wantsBreakfas = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SwitchListTile(
          title: const Text('Developer mode'),
          subtitle: const Text('Activar modo desarrollador'),
          value: developerMode , 
          onChanged: (value) {
            setState(() {
              developerMode = !developerMode;
            });
          },
        ),
        ExpansionTile(
          title: const Text('Modo de transporte'),
          subtitle: Text('$selectedTransportation'),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          enableFeedback: true,
          dense: true,
          children: [
                 RadioListTile(
          value: Transportation.car, 
          title: const Text('Coche'),
          subtitle: const Text('Viajar en coche'),
          groupValue: selectedTransportation, 
          onChanged: (value) {
            setState(() {
              selectedTransportation = Transportation.car;
            });
          },
        ),
          RadioListTile(
          title: const Text('Bicicleta'),
          subtitle: const Text('Viajar en bicicleta'),
          value: Transportation.bike, 
          groupValue: selectedTransportation, 
          onChanged: (value) {
            setState(() {
              selectedTransportation = Transportation.bike;
            });
          },
        ),
          RadioListTile(
          title: const Text('Barco'),
          subtitle: const Text(' Viajar en barco'),
          value: Transportation.boat, 
          groupValue: selectedTransportation, 
          onChanged: (value) {
            setState(() {
              selectedTransportation = Transportation.boat;
            });
          },
        ),
          RadioListTile(
          title: const Text('Avión'),
          subtitle: const Text('Viajar en avión'),
          value: Transportation.plane, 
          groupValue: selectedTransportation, 
          onChanged: (value) {
            setState(() {
              selectedTransportation = Transportation.plane;
            });
          },
        )
          ],
        ),

        CheckboxListTile(
          title: const Text('Desayuno'),
          subtitle: const Text('Quiero desayunar'),
          value: wantsBreakfas, 
          onChanged: (value) {
            setState(() {
              wantsBreakfas = !wantsBreakfas;
            });
          },
        ),

          CheckboxListTile(
          title: const Text('Almuerzo'),
          subtitle: const Text('Quiero almorzar'),
          value: wantsLunch, 
          onChanged: (value) {
            setState(() {
              wantsLunch = !wantsLunch;
            });
          },
        ),
          
            CheckboxListTile(
            title: const Text('Cena'),
            subtitle: const Text('Quiero cenar'),
            value: wantsDinner, 
            onChanged: (value) {
              setState(() {
                wantsDinner = !wantsDinner;
              });
            },
          ),

   
      ],
    );
  }
}