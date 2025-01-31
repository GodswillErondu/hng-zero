import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stage 0',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'HNG 🍩'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onPrimary,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ClipOval(
                  child: Image.asset('assets/person_kevin.jpeg'),
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  final Uri url = Uri.parse(
                      'https://github.com/GodswillErondu/hng-zero.git');
                  if (!await launchUrl(url)) {
                    throw Exception('Could not launch $url');
                  }
                },
                child: const Text('GitHub Directory'),
              ),
              // const SizedBox(
              //   height: 4.0,
              // ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      final Uri url = Uri.parse(
                          'https://hng.tech/hire/mobile-ui-ux-developers');
                      if (!await launchUrl(url)) {
                        throw Exception('Could not launch $url');
                      }
                    },
                    child: const Text('Hire Software Developer'),
                  ),  ElevatedButton(
                    onPressed: () async {
                      final Uri url = Uri.parse(
                          'https://telex.im/');
                      if (!await launchUrl(url)) {
                        throw Exception('Could not launch $url');
                      }
                    },
                    child: const Text('Telex'),
                  ),  ElevatedButton(
                    onPressed: () async {
                      final Uri url = Uri.parse(
                          'https://telex.im/');
                      if (!await launchUrl(url)) {
                        throw Exception('Could not launch $url');
                      }
                    },
                    child: const Text('Delve'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}



