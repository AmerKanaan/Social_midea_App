import 'package:flutter/material.dart';

class ImageViewScreen extends StatefulWidget {
 final String imagePath;
  const ImageViewScreen({Key? key , required this.imagePath}) : super(key: key);

  @override
  State<ImageViewScreen> createState() => _ImageViewScreenState();
}

class _ImageViewScreenState extends State<ImageViewScreen> {

  @override
  void initState() {

    // check if network image or local image

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Center(
        child: Hero(
          tag: widget.imagePath,
          child: Image.asset(widget.imagePath),
        ),
      ),
    );
  }
}
