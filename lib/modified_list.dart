import 'package:flutter/material.dart';

class ModefiedListWidget extends StatefulWidget {
  const ModefiedListWidget({super.key});

  @override
  _ModefiedListWidgetState createState() => _ModefiedListWidgetState();
}

class _ModefiedListWidgetState extends State<ModefiedListWidget> {
  final List<int> countList = List<int>.generate(100, (index) => 0);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: countList.length,
      itemBuilder: (context, index) {
        return ListItemWidget(
          count: countList[index],
          onIncrement: () {
            setState(() {
              countList[index]++;
            });
          },
        );
      },
    );
  }
}

class ListItemWidget extends StatelessWidget {
  final int count;
  final VoidCallback onIncrement;

  const ListItemWidget({
    super.key,
    required this.count,
    required this.onIncrement,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      child: Row(
        children: [
          Text("$count"),
          SizedBox(width: MediaQuery.of(context).size.width / 10),
          MaterialButton(
            color: Colors.lightBlue,
            onPressed: onIncrement,
            child: const Text(
              "+",
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
          ),
        ],
      ),
    );
  }
}
