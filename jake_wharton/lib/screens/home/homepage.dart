import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String userName = 'JakeWharton';
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Welcome to Github Repo Explorer',
        ),
        toolbarHeight: size.height * 0.25,
        centerTitle: true,
        backgroundColor: const Color(0xFF1E1E1E),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Enter a username to search for repos',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'e.g. JakeWharton',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onChanged: (value) => userName = value,
                onSubmitted: (value) => userName = value,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              icon: const Icon(Icons.arrow_forward),
              style: ButtonStyle(
                elevation: MaterialStateProperty.all<double>(8.0),
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
                ),
                shape: MaterialStateProperty.all<OutlinedBorder>(
                  const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                ),
              ),
              label: const Text('Go to Repos'),
              onPressed: () {
                Navigator.pushNamed(context, '/reposViewer',
                    arguments: userName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
