import 'package:flutter/material.dart';

class ListItem extends StatefulWidget {
  final String title;

  const ListItem({
    super.key,
    required this.title,
  });

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal,
      child: Column(
        children: [
          ListTile(
            title: Text(widget.title),
            textColor: Colors.white,
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            height: isExpanded ? 200 : 0,
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => Container(
                color: Colors.indigo,
                child: ListTile(
                  title: Text('Child Item ${index + 1}'),
                  textColor: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
