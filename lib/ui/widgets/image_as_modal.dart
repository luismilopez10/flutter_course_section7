import 'package:flutter/material.dart';
import 'package:flutter_card_swipper/flutter_card_swiper.dart';

class ImageAsModal extends StatelessWidget {
  final List<String> imageUrls;
  final int index;

  const ImageAsModal({
    super.key,
    required this.imageUrls,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Dialog(
      child: Container(
        color: Colors.black,
        width: screenSize.width * 0.8,
        height: screenSize.height * 0.8,
        child: Swiper(
          index: index,
          itemCount: imageUrls.length,
          loop: false,
          itemBuilder: (context, index) {
            return FadeInImage(
              fit: BoxFit.contain,
              placeholder: const AssetImage('assets/no-image.jpg'),
              image: NetworkImage(imageUrls[index]),
            );
          },
        ),
      ),
    );
  }
}
