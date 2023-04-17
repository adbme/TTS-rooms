import 'package:flutter/material.dart';
import 'package:ttsrooms/portal.dart';

import 'main.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    final List<Testimonial> testimonials = [
      Testimonial(
        'TTS rooms',
        '',
          ''
      ),

      Testimonial(
        'TTS rooms est la V-2 de TTS. Cette v-2 permet de gérer les salles de jobtrek de plusieurs manières.',
        '',
        ''
      ),
      Testimonial('1-', "Jobtrek est très actif, il y'a souvent des activitées ou des séminaires dans les salles. Ce qui ramène du monde, et ce monde il faut le gérer. Les tables, chaises et écrans doivent donc souvent changer de disposition.", 'assets/images/test.png'),
      Testimonial('But : une meilleure vision des dispositions des salles', 'TTS rooms est là pour y remédier. Il sert en premier pour que les présentateurs puissent choisir la disposition de la salle au préalable et le dire à la personne qui s’occupera de l’aménager.', ''),
      Testimonial('2-', "Comme dit avant, il y a des séminaires où beaucoup de monde est présent. Et gérer ce monde peut être simple comme difficile. Si une personne manquait, comment savoir laquelle avec un grand commité ?" , ''),
      Testimonial('BUT : plus de problème de..', 'En second plan, TTS rooms permet gérer les réservations des chaises. Ce système sert à savoir rapidement le nombre de personne qui seront présentes et pourront sasseoir. Tout en laissant le présentateur choisir la salle et la disposition en question.', ''),
      Testimonial('PRATIQUE :', "Pour ce faire, toutes les personnes devront réserver leur chaise très facilement en remplissant deux champs : le prénom et nom et pourquoi pas un moyen de contact en cas d'absence", '')
    ];

    return Scaffold(
      backgroundColor: Colors.grey[900], // set the background color to a dark shade of grey
      appBar: AppBar(
        title: Text('About'),
        backgroundColor: const Color(0xFF212529),
        leading: Container(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => portal()),
              );
            },
            child: Image.asset('assets/images/logotts.jpg'),
          ),
        ),
      ),
      body: Container(
        width: screenWidth,
        padding: EdgeInsets.all(8),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: testimonials.length,
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      testimonials[index].author,
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    SizedBox(height: 4),
                    Text(
                      testimonials[index].text,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );

  }
}

class Testimonial {
  final String author;
  final String text;
  final String imagePath;

  Testimonial(this.author, this.text, this.imagePath);
}