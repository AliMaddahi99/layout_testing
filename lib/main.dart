import "package:flutter/material.dart";

void main() {
  runApp(MaterialApp(
    title: "Layout Testing",
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Layout Testing"),
      ),
      body: const InfoCard(),
    ),
  ));
}

class InfoCard extends StatelessWidget {
  const InfoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.account_circle, size: 50),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Flutter McFlutter",
                    textDirection: TextDirection.ltr,
                    style: Theme.of(context).textTheme.headline5),
                const Text(
                  "Experienced App Developer",
                  textDirection: TextDirection.ltr,
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [Text("123 Main Street"), Text("(415) 555-0198")],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Icon(Icons.accessibility),
            Icon(Icons.timer),
            Icon(Icons.phone_android),
            Icon(Icons.phone_iphone),
          ],
        )
      ],
    );
  }
}
