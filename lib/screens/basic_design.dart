import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          //Imagen
          Image(
            image: AssetImage('assets/mountain.jpg'),
          ),
          //Titulo
          Title(),
          //button Section
          ButtonSection(),
          //Description
          Description(),
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Oeschinen Lake Campground',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(
                  color: Colors.black45,
                ),
              )
            ],
          ),
          Expanded(child: Container()),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          CustomButton(
            icon: Icons.call,
            text: 'Call',
          ),
          CustomButton(
            icon: Icons.near_me,
            text: 'Route',
          ),
          CustomButton(
            icon: Icons.share,
            text: 'Share',
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final IconData icon;
  const CustomButton({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 30,
        ),
        const SizedBox(height: 5),
        Text(
          text,
          style: const TextStyle(color: Colors.blue),
        ),
      ],
    );
  }
}

class Description extends StatelessWidget {
  const Description({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: const Text(
        'El lago Oeschinen u Oeschinensee o Lago di Oeschinen, con naturaleza pr??stina y aguas azul turquesa, es literalmente el cielo en la tierra. Las altas monta??as se elevan a todos los lados del lago. Y Oeschinensee es como una joya brillante en el centro. El lago est?? al pie de las monta??as: Bl??emlisalp, Oeschinenhorn, Fr??ndenhorn y Doldenhorn. El lago Osechinen es alimentado por arroyos submarinos, as?? como cascadas glaciares que caen desde la cima de estas monta??as. Aseg??rese de revisar la c??mara web para conocer las condiciones clim??ticas antes de ir aqu??. Y por cierto, el lago Oeschinen es parte de la lista de sitios del Patrimonio Mundial de la UNESCO.',
        textAlign: TextAlign.justify,
      ),
    );
  }
}
