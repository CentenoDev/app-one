import 'package:flutter/material.dart'; // Esta línea importa el paquete flutter/material.dart, que es necesario para utilizar los widgets y clases proporcionadas por el framework Flutter.

class CounterFunctionsScreen extends StatefulWidget {// Defina una clase de llamada CounterFunctionsScreen que se extienda de StatefulWidget. A diferencia de StatelessWidget, los widgets de tipo StatefulWidget pueden cambiar su apariencia en función de un estado mutable.
  const CounterFunctionsScreen({super.key}); // Esto es el constructor de la clase CounterFunctionsScreen

  @override //  Esta anotación indica que se está anulando un método de la clase base, en este caso createState
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState(); // Este método createState crea y devuelve una instancia de la clase _CounterFunctionsScreenState. La clase _CounterFunctionsScreenStatees la que contendrá el estado mutable de CounterFunctionsScreen.
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> { // Define una clase privada _CounterFunctionsScreenState que se extiende de State y está asociada con CounterFunctionsScreen. Esta clase es donde se mantiene el estado mutable de la pantalla.
  int clickCounter = 0; // Declara una variable clickCounter que se usará para rastrear la cantidad de clics.

  @override // Esta anotación indica que se está anulando el método build de la clase base.
  Widget build(BuildContext context) { // Este es el método build que construye la interfaz de usuario de la pantalla.
    return Scaffold( // Se crea un widget Scaffold, que proporciona una estructura básica para una pantalla de aplicación típica de Flutter.
        appBar: AppBar( //  Define la barra de aplicaciones en la parte superior de la pantalla, que contiene un título y un botón de recarga (actualizar).
          title: const Text('Contador de clicks'), // Define una constante tipo text que almacena un texto para el titulo del appbar (barra de applicaciones).
          actions: [ // se utiliza para definir un conjunto de widgets que se colocarán en la parte derecha de la barra de aplicaciones (AppBar). En este caso, se está utilizando una lista ( []) para contener los widgets de acciones que se mostrarán en la AppBar.
            IconButton( // Este es un widget IconButton que representa un botón de icono en la AppBar. Los botones de icono son comunes en AppBar para acciones como recargar, buscar, configuración, etc.
                icon: const Icon(Icons.refresh_rounded), // Aquí se define el icono que se mostrará en el botón. En este caso, utilice el icono "refresh_rounded" de la biblioteca de iconos estándar de Flutter. Este icono representa una acción de "recarga" o "restablecimiento".
                onPressed: () { //  La propiedad onPressed es una devolución de llamada que se ejecuta cuando el usuario presiona el botón. En este caso, se define una función anónima que realiza una acción cuando se presiona el botón.
                  setState(() { // Dentro de la función onPressed, se llama a setState, que es una función especial en Flutter que notifica al framework que el estado de la pantalla ha cambiado y que necesita ser reconstruido.
                    clickCounter = 0; // En este caso, cuando se presiona el botón, se establece el valor de clickCounter en 0, lo que esencialmente restablece el contador a cero.
                  });
                }),
          ],
        ),
        body: Center( //  La propiedad body define el contenido principal de la pantalla y aquí se está utilizando un widget Center. El widget Center coloca su único hijo (en este caso, un Column) en el centro tanto vertical como horizontal de la pantalla.
          child: Column( //  El Center contiene un Column, que es un widget de diseño que organiza sus hijos en una columna vertical.
            mainAxisAlignment: MainAxisAlignment.center, // La propiedad mainAxisAlignment se utiliza para alinear los elementos del Column verticalmente. En este caso, se está alineando al centro vertical ( MainAxisAlignment.center).
            children: [ // La propiedad children de Column es una lista de widgets que se coloca uno debajo del otro en la columna vertical.
              Text('$clickCounter', // Aquí se está utilizando un widget Text para mostrar el valor de clickCounter como un número. El valor de clickCounter se interpola en la cadena utilizando $clickCounter
                  style: const TextStyle( // Se establece un estilo para el texto. 
                      fontSize: 160, fontWeight: FontWeight.w100)),// con un tamaño de fuente grande (fontSize: 160) y un peso de fuente ligero (FontWeight.w100).


              Text('Click${clickCounter == 1 ? '' : 's'}',  // Este es otro widget Text que muestra la palabra "Click" seguida de una "s" en función del valor de clickCounter. Si clickCounter es igual a 1, se mostrará "Click", de lo contrario, se mostrará "Clicks". 
                  style: const TextStyle(fontSize: 30))// El estilo del texto tiene un tamaño de fuente más pequeño (fontSize: 30).

              // otras formas de hacer esa funcion.
              // if( clickCounter == 1 )
              //   const Text('Click', style: TextStyle(fontSize: 25)), 

              // if( clickCounter != 1 )
              //   const Text('Clicks', style: TextStyle(fontSize: 25)),
            ],
          ),
        ),
        floatingActionButton: Column( // La propiedad floatingActionButton se utiliza para definir un conjunto de botones flotantes que se muestran en la parte inferior de la pantalla. En este caso, se está utilizando un Column botón flotante.
          mainAxisAlignment: MainAxisAlignment.end,// La propiedad mainAxisAlignment se usa para alinear verticalmente los elementos del Column. En este caso, los elementos se alinean en la parte inferior de la columna ( MainAxisAlignment.end).
          children: [ // La propiedad children de Column es una lista de widgets que se coloca uno debajo del otro en la columna vertical.
            CustomButton( // Se están creando instancias de la clase CustomButton, que parece ser un widget personalizado para representar botones flotantes con iconos personalizados.
              icon: Icons.refresh_rounded, //  La propiedad icon de CustomButton se utiliza para definir el ícono que se mostrará en el botón flotante. En este caso, utilice el ícono "refresh_rounded" de la biblioteca de iconos estándar de Flutter.
              onPressed: () { // es una función de devolución de llamada que se ejecutará cuando se presione el botón flotante.
                clickCounter = 0;// se establece el valor de la variable clickCounter en 0. Esto significa que cuando el botón flotante se presiona, el contador clickCounter se reiniciará a cero.
                setState(() {}); // es una función especial proporcionada por el framework Flutter. Cuando se llama a setState, le indica al marco que el estado de la pantalla ha cambiado y necesita ser reconstruido.
              },
            ),
            const SizedBox(height: 10), // Aquí se crea un widget SizedBox con una altura de 10 píxeles. SizedBox se utiliza para agregar espacio vertical entre elementos en un diseño de Flutter. En este caso, se está agregando un espacio vertical de 10 píxeles entre el botón personalizado anterior y este nuevo botón.
            CustomButton( // Se crea una instancia del widget personalizado CustomButton. Este widget representa un botón flotante con un icono y una función de devolución de llamada personalizada cuando se presiona.
              icon: Icons.exposure_minus_1_outlined, //  La propiedad icon de CustomButton se utiliza para definir el icono que se mostrará en el botón. En este caso, utilice el icono "exposure_minus_1_outlined" de la biblioteca de iconos estándar de Flutter. Este icono generalmente se asocia con una acción de disminuir o restablecer.
              onPressed: () { //  La propiedad onPressed de CustomButton define una función de devolución de llamada que se ejecutará cuando se presione el botón. En este caso, la función realiza las siguientes acciones:
                if (clickCounter == 0) return; // Verifica si el valor de clickCounter es igual a 0. Si es así, la función return hace que la función de devolución de llamada se detenga aquí, evitando que el contador sea negativo.
                clickCounter--; // Si clickCounter no es igual a 0, entonces se disminuye el valor de clickCounter en 1. Esto representa una acción de resta en el contador.
                setState(() {}); // Finalmente, se llama setState para notificar a Flutter que el estado de la pantalla ha cambiado debido a la disminución en clickCounter. Esto asegura que la interfaz de usuario se actualizará para mostrar el nuevo valor de clickCounter en la pantalla.
              },
            ),
            const SizedBox(height: 10), // Aquí se crea un widget SizedBox con una altura de 10 píxeles. Al igual que en el caso anterior, SizedBox se utiliza para agregar espacio vertical entre elementos en el diseño de la interfaz de usuario. En este caso, se está agregando un espacio vertical de 10 píxeles entre el botón personalizado anterior y este nuevo botón.
            CustomButton( // Se crea una instancia del widget personalizado CustomButton. Este widget representa un botón flotante con un icono y una función de devolución de llamada personalizada cuando se presiona.
              icon: Icons.plus_one, // La propiedad icon de CustomButton se utiliza para definir el icono que se mostrará en el botón. En este caso, utilice el icono "plus_one" de la biblioteca de iconos estándar de Flutter. Este icono generalmente se asocia con una acción de aumento o adición.
              onPressed: () { // La propiedad onPressed de CustomButton define una función de devolución de llamada que se ejecutará cuando se presione el botón. En este caso, la función realiza las siguientes acciones:
                clickCounter++; // Cuando se presiona el botón, se aumenta el valor de clickCounter en 1. Esto representa una acción de suma en el contador.
                setState(() {}); // Finalmente, se llama setState para notificar a Flutter que el estado de la pantalla ha cambiado debido al aumento en clickCounter. Esto asegura que la interfaz de usuario se actualizará para mostrar el nuevo valor de clickCounter en la pantalla.
              },
            ),
          ],
        ));
  }
}

class CustomButton extends StatelessWidget { // Esto define una clase de llamada CustomButton que se extiende StatelessWidget. Un StatelessWidget es un widget en Flutter que no tiene estado mutable. En este caso, CustomButton se utiliza para crear botones personalizados con un icono y una función de devolución de llamada.
  final IconData icon; //  Esto declara una variable final llamada icon de tipo IconData. Esta variable almacenará el ícono que se mostrará en el botón personalizado.
  final VoidCallback? onPressed; //  Esto declara una variable final llamada onPressed de tipo VoidCallback. VoidCallback es un tipo de función que no toma argumentos ni devuelve un valor. Esta variable almacenará la función de devolución de llamada que se ejecutará cuando se presione el botón personalizado. Es opcional ( ?) y puede ser nula.

  const CustomButton({ //  Esto define el constructor de la clase CustomButton. El constructor toma parámetros opcionales designados entre llaves {}. Los parámetros son los siguientes:
    super.key,// La propiedad key se utiliza para identificar de manera única un widget en Flutter
    required this.icon, //  El parámetro icones obligatorio y debe proporcionarse al crear una instancia de CustomButton. Este parámetro se utiliza para especificar el ícono que se mostrará en el botón.
    this.onPressed, // El parámetro onPressed es opcional y puede ser nulo. Se utiliza para especificar la función de devolución de llamada que se ejecutará cuando se presione el botón. Si no se proporciona, se considera nulo.
  });

  @override // : Esta anotación se utiliza para indicar que la función build está describiendo la implementación de la función build de la clase base ( StatelessWidget). En Flutter, la anotación @override se utiliza para garantizar que estás reemplazando correctamente un método de la clase base.
  Widget build(BuildContext context) {//  Esto declara la función build, que se llama cuando se necesita construir y renderizar el widget CustomButton. La función toma un argumento BuildContext que proporciona información sobre el contexto de la construcción del widget.
    return FloatingActionButton( // Aquí se crea una instancia del widget FloatingActionButton. Un FloatingActionButton es un botón flotante que se utiliza combinado en las aplicaciones de Flutter.
      
      enableFeedback: true, // La propiedad enableFeedback se establece en true, lo que permite que el botón proporcione retroalimentación táctil cuando se presiona (como una vibración o un sonido, si está configurado en el dispositivo).
      elevation: 10, // La propiedad elevation se establece en 10, lo que agrega una sombra al botón flotante y le da una apariencia elevada en la interfaz de usuario.
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}