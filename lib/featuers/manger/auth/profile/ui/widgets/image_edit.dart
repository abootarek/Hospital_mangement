import 'package:flutter/material.dart';

class ImageEdit extends StatelessWidget {
  const ImageEdit({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 50,
      backgroundImage: AssetImage('assets/images/my_image.jpg'),
    );
  }
}
