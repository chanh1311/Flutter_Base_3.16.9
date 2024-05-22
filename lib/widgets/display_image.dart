
import 'package:flutter/material.dart';

class ImageDisplay extends StatelessWidget {
  const ImageDisplay({
    Key? key,
    this.imageURL,
    required this.size,
  }) : super(key: key);

  final String? imageURL;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        imageURL?.isNotEmpty ?? false
        
        ? Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              imageURL!,
              width: size,
              height: size,
              fit: BoxFit.cover,
              loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                }
                return Center(
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    child: const CircularProgressIndicator(),
                  ),
                );
              },
            ),
          ),
        )
        : Container(),
      ],
    );
  }
}
