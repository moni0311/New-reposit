import 'package:flutter/material.dart';
class tryy extends StatefulWidget {
  const tryy({super.key});

  @override
  State<tryy> createState() => _tryyState();
}

class _tryyState extends State<tryy> {
  bool selected=false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: AnimatedContainer(
          width: selected ? 500.0 : 500.0,
          height: selected ? 500.0 : 500.0,
          color: selected ? Colors.red : Colors.blue,
          alignment:
          selected ? Alignment.center : AlignmentDirectional.topCenter,
          duration: const Duration(seconds: 2),
          curve: Curves.fastOutSlowIn,
          transformAlignment: Alignment.center,
          child: Image.asset(
            selected
                ? 'goals/ro.png'
                : 'goals/mo.png',
            width: double.infinity,
            height: double.infinity,

          )
        ),
      ),
    );
  }


  }

