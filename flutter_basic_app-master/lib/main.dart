import 'package:flutter/material.dart';
import 'dart:async';

import 'dog_model.dart';
import 'dog_list.dart';
import 'new_dog_form.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Valoramos Cartoons',
      theme: ThemeData(brightness: Brightness.dark),
      home: MyHomePage(
        title: 'Valoramos Cartoons',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Dog> initialDoggos = []
    ..add(Dog('Sargento Keroro', '1999, Comedia/Ciencia ficcion, Japon', 'El anime comienza con un sueño de Fuyuki, un chico de 13 años, que sueña con una invasión alien. Tras esto, su hermana Natsumi, de 14 años le despierta para ir a clase, cuando, tras una broma de ésta, aparece el Sargento Keroro: líder de una avanzadilla de invasión keronense compuesta por 5 ranas: Keroro, Kururu, Giroro, Dororo, Tamama. A partir de ese momento se nos narrara los intentos de invasión de las ranas y sus graciosas aventuras, que tenderan a acabar en desastre, ya sea por una planificación o la intromisión de la familia Hinata.'))
    ..add(Dog('Hattori el ninja', '1964, Comedia/Aventura, Japon', 'De los creadores de Doraemon. Se trata de un ninja, Kanzo Hattori, que viene de Iga, a la ciudad donde vive Kenichi, un niño que no confiaba en sí mismo, Hattori elige a Kenichi para ser su amo. Junto a Shinzo, su hermano, y Shishimaru, su perro ninja, que hacen cosas maravillosas, técnicas, comportamientos, habilidades ninja, etc., con Kemuzo Kemumaki, ninja de Koga, que siempre lucha con Hattori y se mete con Kenichi, Shinzo y Shishimaru.'))
    ..add(Dog('Brandy&Mr.Whisker', '2004, Comedia/Surrealismo, USA', 'Whiskers es un conejo muy marchoso y con un enorme optimismo que está ansioso por explorar la selva amazonica y conocer a sus habitantes. Le encanta tener a Brandy como su primera y mejor amiga. Brandy Harrington, de los Harrington de Florida, es una perrita mimada y caprichosa que solo quiere lo mejor para ella.'))
    ..add(Dog('Ed, Edd y Eddy', '1999, Comedia/Humor negro, absurdo, Canada/USA', 'Ed, Edd y Eddy es una serie de animación infantil en la que tres peculiares amigos tratan de hacer lo que sea con tal de conseguir caramelos gigantes en forma de bola.'))
    ..add(Dog('La banda del patio', '1997, Comedia, USA', 'La banda del patio (Recess en su versión original) es una serie de animación estadounidense creada por los guionistas y productores Paul Germain y Joe Ansolabehere. La serie gira alrededor de un grupo de seis estudiantes de secundaria y su interacción diaria con el resto de compañeros de clase y profesores.'))
    ..add(Dog('Bobobo', '2003, 	Aventuras/parodia/comedia, Japon', 'Este parece ser el caso del Emperador Bola de Billar IV que, obsesionado con su falta de pelo, tiene una idea genial para no sentirse en inferioridad ante los que poseen una exuberante cabellera: crear un ejército cuya única misión es rapar la cabeza de todos los habitantes del imperio'))
    ..add(Dog('Yu Gi Oh', '1998, Acción/,fantasía/ciencia ficción, Japon', 'La obra trata sobre la historia un joven llamado Yūgi Mutō el cual es un Duelista aficionado, quien porta el Rompecabezas del milenio, uno de los siete Objetos Milenarios que se lo había regalado su abuelo.'))
    ..add(Dog('Oliver Benji', '1989, 	Deporte (fútbol), Japon', 'Entrenado por Roberto, una exgloria del fútbol, Oliver puede soñar con los mayores trofeos de todo el mundo. Pero antes de la gloria, hay que ganar. Su principal rival dentro de este apasionado mundo será Benji, un portero de grandes aptitudes con el que tendrá una fuerte rivalidad.'))
    ..add(Dog('Billy y Mandy', '2003, Comedia, USA', 'Las sombrías aventuras de Billy y Mandy: es una serie donde los dos personajes principales, Billy y Mandy, han obligado a La Muerte "Puro Hueso" a ser su mejor amigo para siempre después de ganar una apuesta relacionada con el hámster enfermo de Billy, El Sr.'))
    ..add(Dog('Hora de Aventuras', '2007, Fantasía/Ciencia ficción/Aventuras, USA', 'La serie sigue las aventuras de Finn, un niño humano, y su mejor amigo y hermano adoptivo Jake, un perro con poderes mágicos para cambiar de forma, crecer o reducirse a voluntad. Pendleton Ward, describe a Finn como un "niño pequeño de fuego con moral fuerte". Finn y Jake viven en la Tierra post-apocalíptica de Ooo.'));
  Future _showNewDogForm() async {
    Dog newDog = await Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return AddDogFormPage();
    }));
    if (newDog != null) {
      initialDoggos.add(newDog);
    }
  }

  @override
  Widget build(BuildContext context) {
    var key = new GlobalKey<ScaffoldState>();
    return new Scaffold(
      key: key,
      appBar: new AppBar(
        title: new Text(widget.title),
        backgroundColor: Colors.red[800],
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.add),
            onPressed: _showNewDogForm,
          ),
        ],
      ),
      body: new Container(
          decoration: new BoxDecoration(
              gradient: new LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  stops: [
                .1,
                .3,
                .5,
                .7,
                .9
              ],
                colors: [
                Colors.red[800],
                Colors.red[600],
                Colors.orange[600],
                Colors.orange[300],
                Colors.yellow[200]
              ])),
          child: new Center(
            child: new DogList(initialDoggos),
          )),
    );
  }
}
