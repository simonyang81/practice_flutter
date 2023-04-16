import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListViewExample extends StatefulWidget {
  const ListViewExample({Key? key}) : super(key: key);

  @override
  State<ListViewExample> createState() => _ListViewExampleState();
}

class _ListViewExampleState extends State<ListViewExample> {

  final List<String> _items = List.generate(20, (index) => "Item ${index + 1}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Example'),
      ),
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (BuildContext context, int index) {
          return ItemWidget(
            text: _items[index],
            onDismissed: () {
              setState(() {
                // _items.removeAt(index);
              });
            },
          );
        },
      ),
    );
  }
}

class ItemWidget extends StatefulWidget {
  final String text;
  final VoidCallback onDismissed;

  const ItemWidget({
    Key? key,
    required this.text,
    required this.onDismissed,
  }) : super(key: key);

  @override
  State<ItemWidget> createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
  double _offset = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: (details) {
        setState(() {
          _offset += details.delta.dx;
          if (_offset < -80) {
            _offset = -80;
          }
          if (_offset > 0) {
            _offset = 0;
          }
        });
      },
      onHorizontalDragEnd: (details) {
        if (_offset.abs() > 40) {
          // widget.onDismissed();
          setState(() {
            // _offset = 0;
            _offset = -80;
          });
        } else {
          setState(() {
            _offset = 0;
          });
        }
      },
      child: SizedBox(
        height: 60,
        child: Stack(
          children: [
            Positioned(
              right: 10,
              top: 0,
              bottom: 0,
              child: GestureDetector(
                onTap: widget.onDismissed,
                child: Container(
                  color: Colors.red,
                  width: 80,
                  height: 60,
                  alignment: Alignment.center,
                  child: const Icon(Icons.delete, color: Colors.white),
                ),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeOut,
              left: _offset,
              child: Container(
                width: Get.width,
                height: 60,
                decoration: BoxDecoration(

                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                // padding: const EdgeInsets.all(16),
                child: Text(widget.text),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
