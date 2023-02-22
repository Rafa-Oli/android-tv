import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final bool selected;
  final bool focus;
  final String image;
  final String label;
  const ImageCard(
      {Key? key,
      required this.selected,
      required this.image,
      required this.focus,
      required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TweenAnimationBuilder(
        duration: const Duration(seconds: 2),
        curve: Curves.elasticOut,
        tween: Tween(begin: 0.0, end: focus ? 40 : 0),
        builder: (context, value, child) {
          return Transform.scale(
            scale: focus ? 1.2 : 1,
            child: child,
          );
        },
        child: Card(
          color: Colors.black,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: focus ? Colors.white : Colors.black,
                    border: Border.all(
                      color: focus ? Colors.white : Colors.black,
                      width: 2,
                    ),
                    image: DecorationImage(
                        image: NetworkImage(
                          image,
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                label,
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
