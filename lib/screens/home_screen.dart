import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int contador = 0;

  void incrementar(){
    contador++;
    setState(() {});
  }

  void reset(){
    contador = 0;
    setState(() {});
  }

  void decrementar(){
    contador--;
    setState(() {});
  }

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
        floatingActionButton: CustomFloatingActionButton(
          incrementarFn: incrementar,
          resetFn: reset,
          decrementarFn: decrementar,
        ),
    );
  }
}

class CustomFloatingActionButton extends StatelessWidget {

  final Function incrementarFn;
  final Function resetFn;
  final Function decrementarFn;

  const CustomFloatingActionButton({
    super.key, required this.incrementarFn, required this.resetFn, required this.decrementarFn,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          child: const Text('-1'),
          //child: const Text('Añadir'),
            onPressed: () => decrementarFn()),

        //const SizedBox( width: 20,),

        FloatingActionButton(
          child: const Text('RESET'),
          //child: const Text('Añadir'),
            onPressed: () => resetFn()),

        //const SizedBox( width: 20,),

        FloatingActionButton(
          child: const Icon( Icons.add),
          //child: const Text('Añadir'),
          onPressed: () => incrementarFn()),
      ],
    );
  }
}