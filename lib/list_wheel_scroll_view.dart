import 'package:flutter/material.dart';

class ListWheelScrollViewScreen extends StatefulWidget {
  const ListWheelScrollViewScreen({Key? key}) : super(key: key);

  @override
  State<ListWheelScrollViewScreen> createState() =>
      _ListWheelScrollViewScreenState();
}

class _ListWheelScrollViewScreenState extends State<ListWheelScrollViewScreen> {
  @override
  Widget build(BuildContext context) {
    double size = 20;
    return Scaffold(
        body: Center(
      child: ListWheelScrollView(
        itemExtent: 100,
        squeeze: 1.5,
        perspective: 0.007,
        diameterRatio: 1.2,
        offAxisFraction: -0.4,
        children: [
          ShaderMask(
            shaderCallback: (bounds) => const RadialGradient(
              colors: [
                Colors.deepOrange,
                Colors.green,
              ],
              tileMode: TileMode.repeated,
              center: Alignment.topCenter,
              radius: 1,
            ).createShader(bounds),
            child: const Text(
              "Mr. Radadiya",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
          ),
          RichText(
            text: TextSpan(
              style: const TextStyle(letterSpacing: 1),
              children: [
                const TextSpan(
                  text: "U\n R\n  L",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.lineThrough,
                    decorationColor: Colors.cyan,
                    decorationStyle: TextDecorationStyle.wavy,
                    decorationThickness: 2,
                    shadows: [
                      Shadow(
                        color: Colors.black,
                        blurRadius: 30,
                        offset: Offset(5, 2),
                      )
                    ],
                  ),
                ),
                TextSpan(
                  text: "    L",
                  style: textStyleMethod(Colors.red.shade500),
                ),
                TextSpan(
                  text: "a",
                  style: textStyleMethod(Colors.orange.shade700),
                ),
                TextSpan(
                  text: "u",
                  style: textStyleMethod(Colors.yellow.shade700),
                ),
                TextSpan(
                  text: "n",
                  style: textStyleMethod(Colors.green.shade600),
                ),
                TextSpan(
                  text: "c",
                  style: textStyleMethod(Colors.blue.shade700),
                ),
                TextSpan(
                  text: "h",
                  style: textStyleMethod(Colors.indigo.shade600),
                ),
                TextSpan(
                  text: "e",
                  style: textStyleMethod(Colors.purple),
                ),
                TextSpan(
                  text: "r",
                  style: textStyleMethod(Colors.cyan),
                ),
              ],
            ),
          ),
          SizedBox(height: size),
          ElevatedButton(
            child: Text("News Grid"),
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.red.shade500)),
            onPressed: () {},
          ),
          SizedBox(height: size),
          ElevatedButton(
              onPressed: () {},
              child: Text("Edge Ledger"),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                Colors.orange.shade700,
              ))),
          SizedBox(height: size),
          ElevatedButton(
              onPressed: () {},
              child: Text("Flutter Io"),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                Colors.yellow.shade700,
              ))),
          SizedBox(height: size),
          ElevatedButton(
              onPressed: () {},
              child: Text("You Tube"),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                Colors.green.shade600,
              ))),
          SizedBox(height: size),
          ElevatedButton(
              onPressed: () {},
              child: Text("Pub Dev"),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                Colors.blue.shade700,
              ))),
          SizedBox(height: size),
          ElevatedButton(
              onPressed: () {},
              child: Text("Google"),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                Colors.indigo.shade600,
              ))),
          SizedBox(height: size),
          ElevatedButton(
              onPressed: () {},
              child: Text("My Favorite Song"),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                Colors.purple,
              ))),

          //repeat
          SizedBox(height: size),
          ElevatedButton(
            child: Text("News Grid"),
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.red.shade500)),
            onPressed: () {},
          ),
          SizedBox(height: size),
          ElevatedButton(
              onPressed: () {},
              child: Text("Edge Ledger"),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                Colors.orange.shade700,
              ))),
          SizedBox(height: size),
          ElevatedButton(
              onPressed: () {},
              child: Text("Flutter Io"),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                Colors.yellow.shade700,
              ))),
          SizedBox(height: size),
          ElevatedButton(
              onPressed: () {},
              child: Text("You Tube"),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                Colors.green.shade600,
              ))),
          SizedBox(height: size),
          ElevatedButton(
              onPressed: () {},
              child: Text("Pub Dev"),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                Colors.blue.shade700,
              ))),
          SizedBox(height: size),
          ElevatedButton(
              onPressed: () {},
              child: Text("Google"),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                Colors.indigo.shade600,
              ))),
          SizedBox(height: size),
          ElevatedButton(
              onPressed: () {},
              child: Text("My Favorite Song"),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                Colors.purple,
              ))),
          SizedBox(height: size * 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                child: const Text(
                  "Contact Me",
                  style: TextStyle(color: Colors.white),
                ),
                style: buttonStyle(),
                onPressed: () => {},
              ),
              TextButton(
                  child: const Text(
                    "Msg",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: buttonStyle(),
                  onPressed: () {}),
              TextButton(
                child: const Text(
                  "Email",
                  style: TextStyle(color: Colors.white),
                ),
                style: buttonStyle(),
                onPressed: () {},
              ),
              TextButton(
                child: const Text(
                  "My Whatshap",
                  style: TextStyle(color: Colors.white),
                ),
                style: buttonStyle(),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    ));
  }
}

// text button
ButtonStyle buttonStyle() {
  return ButtonStyle(
    backgroundColor: MaterialStateProperty.all(
      Colors.black.withOpacity(0.7),
    ),
  );
}

// text span
TextStyle textStyleMethod(Color colors) {
  return TextStyle(
    color: colors,
    fontSize: 24,
    fontWeight: FontWeight.bold,
    shadows: [
      Shadow(
        color: colors,
        blurRadius: 30,
        offset: const Offset(3, 3),
      )
    ],
  );
}
