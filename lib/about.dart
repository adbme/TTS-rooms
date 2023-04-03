import 'package:flutter/material.dart';

import 'main.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    final List<Testimonial> testimonials = [
      Testimonial('s', 'k'),
      Testimonial('g', 'j'),
      Testimonial('g', 'k'),
    ];

    return Scaffold(
        appBar: AppBar(

          title: Text('About'),
          backgroundColor: const Color(0xFF212529),
          leading: Container(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp()),
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
            )
        )
    );
  }
}

class Testimonial {
  final String author;
  final String text;

  Testimonial(this.author, this.text);
}