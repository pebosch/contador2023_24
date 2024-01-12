import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {

    const tamano30 = TextStyle( fontSize: 30);

    return Scaffold(
      //backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: const Text('Contador'),
        elevation: 0,
      ),
      body: Center(
          child: 
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Número de clics', style: tamano30,),
              Center(child: Text('$contador', style: tamano30, textAlign: TextAlign.center,)),
            ],
          )
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              child: const Text('-1'),
              //child: const Text('Añadir'),
              onPressed: () => setState(() => contador--)
            ),

            //const SizedBox( width: 20,),

            FloatingActionButton(
              child: const Text('RESET'),
              //child: const Text('Añadir'),
              onPressed: () {
                print('Acabo de pulsar el botón');
                contador=0;
                setState(() {
                });
                print('$contador');
            },),

            //const SizedBox( width: 20,),

            FloatingActionButton(
              child: const Icon( Icons.add),
              //child: const Text('Añadir'),
              onPressed: () {
                print('Acabo de pulsar el botón');
                contador++;
                setState(() {
                });
                print('$contador');
            },),

            
          ],
        ),
    );
  }
}