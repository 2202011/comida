import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    //las #estrellitas
    final stars = Row(
      children: [
        Icon(
          Icons.star,
          color: Colors.teal[500],
        ),
        Icon(
          Icons.star,
          color: Colors.teal[500],
        ),
        Icon(
          Icons.star,
          color: Colors.teal[500],
        ),
        const Icon(
          Icons.star,
          color: Colors.black,
        ),
        const Icon(
          Icons.star,
          color: Colors.black,
        ),
      ],
    );

    //#Calificaciones
    final raitings = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //#estrellas
          stars,
          const Text(
            '170 Reviews',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              letterSpacing: 0.5,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );

    //#Estilos por defecto
    const descTextStyle = TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w800,
        letterSpacing: 0.5,
        fontSize: 12,
        height: 2);

    //#Lista de iconos
    final iconList = DefaultTextStyle(style: descTextStyle,
    child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(Icons.kitchen, color: Colors.teal[500],),
                const Text('PREP'),
                const Text('25 min')
              ],
            ),
            Column(
              children: [
                Icon(Icons.timer, color: Colors.teal[500],),
                const Text('COOK '),
                const Text('1 hr')
              ],
            ),
            Column(
              children: [
                Icon(Icons.restaurant, color: Colors.teal[500],),
                const Text('FEEDS'),
                const Text('4-6')
              ],
            )
          ],
        )
    ),
    );


    const titleText = (
        Text(
            'Strawberry Pavlova',
          style: TextStyle(
            fontWeight: FontWeight.w800,
                letterSpacing: 0.5,
            fontSize: 16
          ),

        )
    );

    const subTitle = Text(
      'Pavlova is a meringue-baseddessert '
          ' after the Russianballerine '
          'Anna Pavlova.Pavlova featues a crisp crust andsoft, '
          'light inside, topped with fruitand whipped cream.',
          style: TextStyle(
            fontWeight: FontWeight.normal,
            letterSpacing: 0.5,
            fontSize: 14
          ),
    );

    //#Columna de la Izquierda
    final leftColumn = Container(
      padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
      child: Column(
        children: [
          titleText,
          subTitle,
          raitings,
          iconList],

      )

    );

    final mainImage = Image.asset(
      'images/mixed.jpg',
          fit: BoxFit.cover,
    );



    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 300,
                  child: leftColumn,

                ),
                mainImage
              ],
            ),
          ),
        )
      ),
    );
  }
}
