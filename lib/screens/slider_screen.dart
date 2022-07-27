import 'package:components_app/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _isEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Slider & Checks'),
        ),
        body: Column(
          children: [
            Slider.adaptive(
                max: 300,
                min: 50,
                activeColor: AppTheme.primary,
                //divisions: 10,

                value: _sliderValue,
                onChanged: _isEnabled
                    ? (value) {
                        setState(() {
                          _sliderValue = value;
                        });
                      }
                    : null),
            // Checkbox(
            //     activeColor: AppTheme.primary,
            //     value: _isEnabled,
            //     onChanged: (value) {
            //       setState(() {
            //         _isEnabled = value ?? false;
            //       });
            //     }),
            // Switch(
            //     value: _isEnabled,
            //     activeColor: AppTheme.primary,
            //     onChanged: (value) {
            //       setState(() {
            //         _isEnabled = value;
            //       });
            //     }),
            CheckboxListTile(
                value: _isEnabled,
                title: const Text('Activate Slider'),
                activeColor: AppTheme.primary,
                onChanged: (value) {
                  setState(() {
                    _isEnabled = value ?? true;
                  });
                }),
            SwitchListTile(
                title: const Text('Switch Slider Activate'),
                activeColor: AppTheme.primary,
                value: _isEnabled,
                onChanged: (value) {
                  setState(() {
                    _isEnabled = value;
                  });
                }),
            const AboutListTile(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image(
                      image: const NetworkImage('https://w7.pngwing.com/pngs/106/833/png-transparent-dart-logo-programming-language-computer-programming-android-text-logo-computer-programming-thumbnail.png'),
                      fit: BoxFit.contain,
                      width: _sliderValue,
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
