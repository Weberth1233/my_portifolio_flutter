import 'package:flutter/material.dart';
import 'package:my_portifolio/src/components/shape_decoration_component.dart';

import '../../theme/color_palette.dart';

class Experience extends StatelessWidget {
  const Experience({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'TECNOLOGIAS',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(
          height: 48,
        ),
        Wrap(
          spacing: 30,
          runSpacing: 20,
          children: <Widget>[
            ContainerShapeDecorationComponent(
              pathImage: 'assets/images/django.png',
              width: 50,
              height: 50,
              color: ColorPalette.colorTextButtonDark,
            ),
            ContainerShapeDecorationComponent(
              pathImage: 'assets/images/java.png',
              width: 50,
              height: 50,
              color: ColorPalette.colorTextButtonDark,
            ),
            ContainerShapeDecorationComponent(
              pathImage: 'assets/images/flutter.png',
              width: 50,
              height: 50,
              color: ColorPalette.colorTextButtonDark,
            ),
            ContainerShapeDecorationComponent(
              pathImage: 'assets/images/html.jpg',
              width: 50,
              height: 50,
              color: ColorPalette.colorTextButtonDark,
            ),
            ContainerShapeDecorationComponent(
              pathImage: 'assets/images/css.png',
              width: 50,
              height: 50,
              color: ColorPalette.colorTextButtonDark,
            ),
            ContainerShapeDecorationComponent(
              pathImage: 'assets/images/javascript.png',
              width: 50,
              height: 50,
              color: ColorPalette.colorTextButtonDark,
            ),
            ContainerShapeDecorationComponent(
              pathImage: 'assets/images/github.png',
              width: 50,
              height: 50,
              color: ColorPalette.colorTextButtonDark,
            ),

            // Image.asset('assets/images/django.png'),
            // Image.asset('assets/images/java.png'),
            // Image.asset('assets/images/flutter.png'),
            // Image.asset('assets/images/github.png'),
            // Image.asset('assets/images/html.jpg'),
            // Image.asset('assets/images/css.png'),
            // Image.asset('assets/images/javascript.png'),
          ],
        ),
      ],
    );
  }
}