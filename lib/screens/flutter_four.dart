import 'package:flutter/material.dart';

class ExampleSix extends StatefulWidget {
  const ExampleSix({Key? key}) : super(key: key);

  @override
  State<ExampleSix> createState() => _ExampleSixState();
}

class _ExampleSixState extends State<ExampleSix>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  // late Animation<double> heightAnimation;
  late Animation<double> widthAnimation;
  late Animation<double> widthAnimationn;
  late Animation<double> textSizeAnimation;
  late Animation<Color?> colorAnimation;

  bool isPress = false;

  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    widthAnimation =
        Tween<double>(begin: 120, end: 400).animate(animationController);
    widthAnimationn =
        Tween<double>(begin: 400, end: 120).animate(animationController);
    textSizeAnimation =
        Tween<double>(begin: 14, end: 50).animate(animationController);
    // heightAnimation =        Tween<double>(begin: 50, end: 200).animate(animationController);
    colorAnimation = ColorTween(begin: Colors.blue, end: Colors.red)
        .animate(animationController);

    animationController.addListener(() {
      setState(() {});
    });

    animationController.repeat();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: AnimatedContainer(
                height: 80,
                width: isPress ? 400 : 100,
                duration: const Duration(seconds: 3),
                curve: Curves.linear,
                decoration: BoxDecoration(color: Colors.blue),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isPress = !isPress;
                });
              },
              child: Text("Press"),
            )
          ],
        ),
      ),
    );
  }
}
