import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectableImage extends StatefulWidget {
  final String imageUrl;
  final Function(bool isSelected) onSelected;
  bool isSelected = false;

  SelectableImage({required this.imageUrl, required this.onSelected});

  @override
  _SelectableImageState createState() => _SelectableImageState();

  void setSelected(bool select) {
    isSelected = select;
  }
}

class _SelectableImageState extends State<SelectableImage> {
  @override
  Widget build(BuildContext context) => GestureDetector(
      onTap: () {
        setState(() => widget.setSelected(!widget.isSelected));
        widget.onSelected(widget.isSelected);
      },
      child: Stack(
        children: [
          Image.network(widget.imageUrl),
          widget.isSelected
              ? const Positioned(
                  top: 0,
                  right: 0,
                  child: Icon(Icons.check_circle, color: Colors.green),
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
}
