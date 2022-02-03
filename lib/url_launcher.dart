import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherScreen extends StatefulWidget {
  const UrlLauncherScreen({Key? key}) : super(key: key);

  @override
  State<UrlLauncherScreen> createState() => _UrlLauncherScreenState();
}

class _UrlLauncherScreenState extends State<UrlLauncherScreen> {
  @override
  Widget build(BuildContext context) {
    double size = 20;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
            SizedBox(height: size / 1.5),
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
            SizedBox(height: size / 1.5),
            DefaultButton(
              name: "News Grid",
              colors: Colors.red.shade500,
              press: () => {
                launch("https://focused-kilby-4d1a22.netlify.app/index.html"),
                print("Tapped"),
              },
            ),
            SizedBox(height: size / 1.5),
            DefaultButton(
              name: "Edge Ledger",
              colors: Colors.orange.shade700,
              press: () => {
                launch("https://competent-wilson-472fb0.netlify.app/#"),
              },
            ),
            SizedBox(height: size / 1.5),
            DefaultButton(
              name: "Flutter Io",
              colors: Colors.yellow.shade700,
              press: () => {
                launch("https://flutterflow.io/old-home.html"),
              },
            ),
            SizedBox(height: size / 1.5),
            DefaultButton(
              name: "You Tube",
              colors: Colors.green.shade600,
              press: () => {
                launch("https://www.youtube.com/"),
              },
            ),
            SizedBox(height: size / 1.5),
            DefaultButton(
              name: "Pub Dev",
              colors: Colors.blue.shade700,
              press: () => {
                launch("https://flutter.dev/"),
              },
            ),
            SizedBox(height: size / 1.5),
            DefaultButton(
              name: "Google",
              colors: Colors.indigo.shade600,
              press: () => {
                launch("https://www.google.co.in/"),
              },
            ),
            SizedBox(height: size / 1.5),
            DefaultButton(
              name: "My Favorite Song",
              colors: Colors.purple,
              press: () => {
                launch("https://www.youtube.com/watch?v=USGOWMsnIG4"),
              },
            ),
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
                  onPressed: () => {
                    launch("tel://95740 28300"),
                  },
                ),
                TextButton(
                  child: const Text(
                    "Msg",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: buttonStyle(),
                  onPressed: () => {
                    launch(
                        'sms:95740 28300?body=hello! Mr.Sl@w W@lker Is There..?'),
                  },
                ),
                TextButton(
                  child: const Text(
                    "Email",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: buttonStyle(),
                  onPressed: () => {
                    launch(
                        "mailto:radadiyajenis2001@gmail.com?subject=Meeting&body=Can we meet via Google Meet"),
                  },
                ),
                TextButton(
                  child: const Text(
                    "My Whatshap",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: buttonStyle(),
                  onPressed: () => {
                    launch("whatsapp://send?phone=${9574028300}"),
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  child: const Text(
                    "Intagram",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: buttonStyle(),
                  onPressed: () => {
                    launch("http://instagram.com/_u/"),
                  },
                ),
                TextButton(
                  child: const Text(
                    "Facebook",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: buttonStyle(),
                  onPressed: () => {
                    launch("facebook://"),
                  },
                ),
                TextButton(
                  child: const Text(
                    "Skype",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: buttonStyle(),
                  onPressed: () => {
                    launch("skype://"),
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

// text button style method.................................
  ButtonStyle buttonStyle() {
    return ButtonStyle(
      backgroundColor: MaterialStateProperty.all(
        Colors.black.withOpacity(0.7),
      ),
    );
  }

// Url launcer text styling.....................
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
}

//Eleveted button..........................
class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    // required this.urlText,
    required this.name,
    required this.colors,
    required this.press,
  }) : super(key: key);

  // final String urlText;

  final String name;

  final Color colors;

  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(15),
        backgroundColor: MaterialStateProperty.all(colors),
      ),
      onPressed: press,
      child: Text(
        name,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
    );
  }
}
