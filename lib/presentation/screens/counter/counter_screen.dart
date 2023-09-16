import 'package:flutter/material.dart'; // Esta línea importa el paquete flutter/material.dart, que es necesario para utilizar widgets y funcionalidades de Flutter relacionadas con la interfaz de usuario.

class CounterScreen extends StatefulWidget { // Se define una clase de llamada CounterScreen que se extiende StatefulWidget. Esto significa que CounterScreen es un widget que puede tener un estado mutable, lo que le permite actualizar su aspecto en respuesta a cambios en los datos o interacciones del usuario.
  const CounterScreen({super.key});// se usa combinada para identificar de manera única un widget en Flutter.

  @override //  Esta anotación se utiliza para indicar que la función createState está describiendo la implementación de la función createState de la clase base StatefulWidget. La función createState se llama para crear el estado mutable asociado a CounterScreen.
  State<CounterScreen> createState() => _CounterScreenState(); //  Esta función createState crea una instancia del estado mutable asociado a CounterScreen, que se define en _CounterScreenState. El tipo State<CounterScreen>indica que este estado está asociado a la clase CounterScreen. Esta función devuelve una instancia de _CounterScreenStatepara gestionar el estado de CounterScreen.
}

class _CounterScreenState extends State<CounterScreen> { // Se define la clase _CounterScreenState, que se extiende State<CounterScreen>. Esto indica que _CounterScreenStatees el estado asociado al widget CounterScreen.
  int clickCounter = 0; //  Se declara una variable llamada clickCounter de tipo entero ( int) e inicializa su valor en 0. Esta variable se utilizará para realizar un seguimiento del número de clics o cualquier otro estado relacionado con el contador en la pantalla.


  @override // Esta anotación se utiliza para indicar que la función build está describiendo la implementación de la función build de la clase base State. En Flutter, la anotación @overridese usa para garantizar que estás reemplazando correctamente un método de la clase base.
  Widget build(BuildContext context) { // Esto declara la función build, que se llama cuando se necesita construir y renderizar el widget _CounterScreenState. La función toma un argumento BuildContextque proporciona información sobre el contexto de la construcción del widget.
    return Scaffold( // Aquí se crea una instancia del widget Scaffold. Scaffold es un componente fundamental en Flutter para crear el esqueleto de la pantalla. Proporciona una estructura que incluye una barra de aplicaciones (AppBar), cuerpo de la pantalla y otros elementos como un cajón de navegación.
      appBar: AppBar(// En él Scaffold, defina una barra de aplicación (AppBar) utilizando la propiedad appBar. El AppBar contiene la siguiente configuración:
        title: const Text('Counter Screen'),// La propiedad titleestablece el título de la barra de aplicación como "Counter Screen". Esto se mostrará en la parte superior de la pantalla como el título de la pantalla.
        centerTitle: true,//  La propiedad centerTitle se establece en true, lo que significa que el título de la barra de aplicación estará centrado horizontalmente.
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter',
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
             Text(
              clickCounter == 1 ? 'Click' : 'Clicks!!',
              style: const TextStyle(fontSize: 25),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          clickCounter++;

          setState(() {});
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
