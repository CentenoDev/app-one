import 'package:flutter/material.dart';
import 'package:project_name/presentation/screens/counter/counter_funtions_screen.dart';


// ignore: unused_import
//import 'package:flutter_app_one/presentation/screens/counter/counter_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override // Esto es una anotación que indica que se está anulando un método de la clase base. En este caso, se está anulando el método build de la clase StatelessWidget.
  Widget build(BuildContext context) { //  Este es el método build que se debe anular al extensor StatelessWidget. Es donde se define la estructura de la interfaz de usuario de la aplicación.
    return  MaterialApp( // Aquí se crea y devuelve un widget MaterialApp. MaterialApp es un widget que proporciona un conjunto de widgets y configuraciones predeterminadas para una aplicación Flutter siguiendo las pautas de diseño de Material Design de Google.
      debugShowCheckedModeBanner: false, // con esto le retiramos la etiqueta debug que indica que esta en desarrollo en la app
        theme: ThemeData( // Esto establece el tema de la aplicación.  
          useMaterial3: true,// Aquí se configura useMaterial3 en true, lo que sugiere que la aplicación está utilizando el diseño Material 3, que es una evolución del diseño Material de Google.
          colorSchemeSeed: Colors.blue // colorSchemeSeed se establece en Colors.blue, lo que puede influir en la paleta de colores de la aplicación.
        ),
        home: const CounterFunctionsScreen() // Aquí se establece el widget principal que se mostrará cuando se ejecute la aplicación. En este caso, se muestra una instancia de la clase CounterFunctionsScreen. El const antes de CounterFunctionsScreen()indica que se está creando una instancia constante de este widget, lo que significa que es inmutable.

    );
  }
}
