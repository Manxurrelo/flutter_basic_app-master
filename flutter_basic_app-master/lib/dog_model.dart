import 'dart:convert';
import 'dart:io';
import 'dart:async';

class Dog {
  final String name;
  final String location;
  final String description;
  String imageUrl;

  int rating = 10;

  Dog(this.name, this.location, this.description);

  Future getImageUrl() async {
    if (imageUrl != null) {
      if(name == 'Sargento Keroro'){
        imageUrl = 'https://steamuserimages-a.akamaihd.net/ugc/959722759125409296/6FA47855A78353FB224CF793890BF8D514C603C9/';
      }
      else if(name == 'Hattori el ninja'){
        imageUrl = 'https://media1.tenor.com/images/6735eb9aa4cb1be0df2448bc97aa870c/tenor.gif?itemid=15655371';
      }
      else if(name == 'Brandy&Mr.Whisker'){
        imageUrl = 'https://img.fireden.net/co/image/1446/94/1446941337093.gif';
      }
      else if(name == 'Ed, Edd y Eddy'){
        imageUrl = 'https://media0.giphy.com/media/BZk14u0T3M2d2/giphy.gif';
      }
      else if(name == 'La banda del patio'){
        imageUrl = 'https://thumbs.gfycat.com/CompetentMagnificentAruanas-size_restricted.gif';
      }
      else if(name == 'Bobobo'){
        imageUrl = 'https://media1.tenor.com/images/72e568be19cd0ffc8f3ce45602ef3f1f/tenor.gif?itemid=13625664';
      }
      else if(name == 'Yu Gi Oh'){
        imageUrl = 'https://i.pinimg.com/originals/e5/8e/79/e58e794fd1acb2a41e57cbccd1a53111.gif';
      }
      else if(name == 'Oliver Benji'){
        imageUrl = 'https://media1.tenor.com/images/d01fbac23f800578f4e427518962fac9/tenor.gif?itemid=12097731';
      }
      else if(name == 'Billy y Mandy'){
        imageUrl = 'https://media1.tenor.com/images/0d61f98ddae98b9499d1f56698e3ee40/tenor.gif?itemid=14366097';
      }
      else if(name == 'Hora de Aventuras'){
        imageUrl = 'https://media0.giphy.com/media/vc3cc6sfXKL60pPJMk/giphy.gif';
      }
      return;
    }
  }
}
