import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScrenn extends StatelessWidget {

  static const String  name = 'ButtonsScrenn'; 

  const ButtonsScrenn({super.key});

  @override
  Widget build(BuildContext context) {

   

    return Scaffold(
      appBar: AppBar(
        title: const Text('Botones'),
      ),
      body: _ButtonView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pop();  
        },
        child: const Icon(Icons.arrow_back_ios_new_outlined),
      ),
    );
  }
}

class _ButtonView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     final colors = Theme.of(context).colorScheme.primary;
    return Padding(
      padding:  const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: SizedBox(
        width: double.infinity,

        child: Wrap(
          alignment: WrapAlignment.center,
          spacing: 10,
          children: [
            ElevatedButton(onPressed: (){}, child: const Text('ElevatedButton')),
            const ElevatedButton(onPressed: null, child:  Text('Elevated disabled')),
            OutlinedButton(onPressed: (){}, child: const Text('OutlinedButton')),
            const OutlinedButton(onPressed: null, child:  Text('Outlined disabled')),
            TextButton(onPressed: (){}, child: const Text('TextButton')),
            const TextButton(onPressed: null, child:  Text('Text disabled')),
            IconButton(onPressed: (){}, icon: const Icon(Icons.add)),
            const IconButton(onPressed: null, icon:  Icon(Icons.add)),
            ElevatedButton.icon(onPressed: (){}, label: const Text('ElevatedButton.icon'), icon: const Icon(Icons.add)),
            ElevatedButton.icon(onPressed: null, label:  const Text('ElevatedButton.icon'), icon:  const Icon(Icons.add)),
            OutlinedButton.icon(onPressed: (){}, label: const Text('OutlinedButton.icon'), icon: const Icon(Icons.add)),
            FilledButton(onPressed: (){}, child: const Text('FilledButton')),
            const FilledButton(onPressed: null, child:  Text('Filled disabled')),
            OutlinedButton.icon(onPressed: null, label:  const Text('OutlinedButton.icon'), icon:  const Icon(Icons.add)),
            FilledButton.icon(onPressed: (){}, label: const Text('FilledButton.icon'), icon: const Icon(Icons.add)),
            IconButton(onPressed: (){}, icon: const Icon(Icons.app_registration_outlined),  style: ButtonStyle(
               backgroundColor: WidgetStateProperty.all(colors),
               iconColor: WidgetStateProperty.all(Colors.white),

            ),),
            _CustomButton()
          ],
        ),
      ),
    );
  }
}

class _CustomButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
     final colors = Theme.of(context).colorScheme.primary;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors,
        child: InkWell(
          onTap: () {},
          child: const Padding(
            padding:  EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Text('Custom', style: TextStyle(color: Colors.white),),  
          ),
        ),
      ),
    );
  }
}