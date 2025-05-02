import 'dart:io';

import 'package:flutter/material.dart';
import 'package:untitled4/favourit_wedgit.dart';
import 'package:untitled4/first_screen.dart' as first;
import 'package:untitled4/profile_page.dart' as profile;
import 'package:untitled4/my_season.dart';

class MyHomePage extends StatelessWidget {
  final String? title;
  final String? body;
  final List<File>? image;

  const MyHomePage({this.image, this.title, this.body, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => profile.ProfilePage()),
              );
            },
            icon: Icon(Icons.account_box),
          ),
        ],
        centerTitle: true,
        title: Text("The ${title ?? "Tree"}"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            image == null || image!.isEmpty
                ? Image.asset("assets/tree.jpg")
                : Image.file(
              image![0],
              height: 300,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const FavoriteWidget(),
                IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                body ??
                    "Trees give us many benefits. Trees are the green cover of the planet. Trees need water, sunshine and air to grow. The process of photosynthesis that occurs in trees, that helps them grow, uses oxygen and gives out carbon-dioxide. Thus, they contribute to the oxygen in the air that we need to breathe to stay alive. They also use up the carbon-dioxide that is present in the air, and thus prevent the accumulation of the greenhouse gas that leads to global warming and climate change.",
                textAlign: TextAlign.justify,
              ),
            ),
            image == null || image!.isEmpty
                ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                MySeason(url: "assets/spring.jpg", text: "Spring"),
                MySeason(url: "assets/fall.jpg", text: "Fall"),
              ],
            )
                : SizedBox(
              height: 500,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: image!.length,
                itemBuilder: (context, index) => Image.file(
                  image![index],
                  height: 200,
                  width: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => first.FirstScreen()),  // Changed to FirstScreen
          );
        },
        child: const Icon(Icons.next_plan),
      ),
    );
  }
}