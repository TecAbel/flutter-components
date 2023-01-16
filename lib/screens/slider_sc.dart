import 'package:components/config/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double sliderValue = 80;
  bool activeSlider = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('hola'),
        Slider.adaptive(
          min: 1,
          value: sliderValue,
          activeColor: AppTheme.primaryColor,
          max: 100,
          onChanged:
              activeSlider ? (val) => setState(() => sliderValue = val) : null,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: CheckboxListTile(
            activeColor: AppTheme.primaryColor,
            title: const Text('Activar'),
            value: activeSlider,
            onChanged: (val) {
              activeSlider = val ?? true;
              setState(() {});
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10, left: 10),
          child: SwitchListTile.adaptive(
            activeColor: AppTheme.primaryColor,
            title: const Text('Activar'),
            value: activeSlider,
            onChanged: (val) => setState(() {
              activeSlider = val;
            }),
          ),
        ),
        Image(
          width: sliderValue * 3,
          image: const NetworkImage(
              'https://rickandmortyapi.com/api/character/avatar/482.jpeg'),
        ),
      ],
    );
  }
}
