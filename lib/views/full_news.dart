import 'package:flutter/material.dart';

class FullNews extends StatelessWidget {
  const FullNews({super.key, required this.imageUrl, required this.content});

  // ignore: prefer_typing_uninitialized_variables
  final imageUrl;
  // ignore: prefer_typing_uninitialized_variables
  final content;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              height: 200,
              child: imageUrl == ''
                  ? null
                  : Image(
                      image: NetworkImage(imageUrl),
                      fit: BoxFit.cover,
                    ),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(content),
          ))
        ]),
      ),
    );
  }
}
