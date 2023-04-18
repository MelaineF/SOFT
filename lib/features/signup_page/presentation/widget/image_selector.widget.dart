import 'dart:math';

import 'package:Swipe/core/helper/logger.dart';
import 'package:Swipe/features/signup_page/presentation/widget/selectable_image.widget.dart';
import 'package:flutter/cupertino.dart';

class ImageSelector extends StatefulWidget {
  final List<String> imageUrls;

  ImageSelector({required this.imageUrls});

  @override
  _ImageSelectorState createState() => _ImageSelectorState();
}

class _ImageSelectorState extends State<ImageSelector> {
  int _selectedIndex = -1;
  List<SelectableImage> _images = [];

  @override
  void initState() {
    super.initState();

    _images = List.generate(widget.imageUrls.length, (index) => SelectableImage(
        imageUrl: widget.imageUrls[index],
        onSelected: (isSelected) {
          if (isSelected) _selectedIndex = index;
          for (int i = 0; i < _images.length; i++) {
            _images[i].setSelected(i == _selectedIndex);
          }
          },
      ));
  }

  @override
  Widget build(BuildContext context) => GridView.count(
      crossAxisCount: 2,
      children: _images,
    );
}
