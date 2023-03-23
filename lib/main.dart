import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

void main() {
  runApp(
    const MyWidget(),
  );
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Image.asset(
            "assets/app-logo.png",
            width: 100,
          ),
        ),
        leading: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Image.asset("assets/user-picture.png"),
        ),
        actions: [
          Container(
            width: 60,
            child: TextButton(
              onPressed: () {},
              child: const Icon(
                Icons.search,
                color: Color(0xFFBABABA),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        color: const Color(0xFFF2F3F6),
        child: ListView(
          children: const [
            CardItem(),
            CardItem(),
            CardItem(),
            CardItem(),
            CardItem(),
          ],
        ),
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  const CardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://pbs.twimg.com/profile_images/1421997223273971714/hiCtd3Ng_400x400.jpg"),
                  backgroundColor: Colors.transparent,
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Kendall Schmidt",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text("23/03/2023 09:57"),
                  ],
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert),
                  color: Colors.grey,
                ),
              ],
            ),
            const SizedBox(height: 15),
            Image.asset(
              "assets/post-picture-001.png",
              height: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 10),
            const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. " +
                "Maecenas quis ex sem. Praesent elit dui, iaculis at interdum eu, rutrum et mi."),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite),
                  color: Colors.deepOrange,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.share),
                  color: Colors.deepOrange,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
