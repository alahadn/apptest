// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';
import 'package:transparent_image/transparent_image.dart';

class staggered extends StatefulWidget {
  const staggered({super.key});

  @override
  State<staggered> createState() => _staggeredState();
}

class _staggeredState extends State<staggered> {
  List<String> images = [
    "https://www.google.com/url?sa=i&url=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Ffemale-portrait&psig=AOvVaw37ybD_1DMr1o5AjPAbucCC&ust=1716413654349000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCKik4qLZn4YDFQAAAAAdAAAAABAE",
        "https://www.google.com/url?sa=i&url=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Ffemale-portrait&psig=AOvVaw37ybD_1DMr1o5AjPAbucCC&ust=1716413654349000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCKik4qLZn4YDFQAAAAAdAAAAABAE",
    "https://www.google.com/url?sa=i&url=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Ffemale-portrait&psig=AOvVaw37ybD_1DMr1o5AjPAbucCC&ust=1716413654349000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCKik4qLZn4YDFQAAAAAdAAAAABAE",
    "https://www.google.com/url?sa=i&url=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Ffemale-portrait&psig=AOvVaw37ybD_1DMr1o5AjPAbucCC&ust=1716413654349000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCKik4qLZn4YDFQAAAAAdAAAAABAE",
    "https://www.google.com/url?sa=i&url=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Ffemale-portrait&psig=AOvVaw37ybD_1DMr1o5AjPAbucCC&ust=1716413654349000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCKik4qLZn4YDFQAAAAAdAAAAABAE",
    "https://www.google.com/url?sa=i&url=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Ffemale-portrait&psig=AOvVaw37ybD_1DMr1o5AjPAbucCC&ust=1716413654349000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCKik4qLZn4YDFQAAAAAdAAAAABAE",

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new StaggeredGridView.countBuilder(
            crossAxisCount: 2,
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: FadeInImage.memoryNetwork(
                      placeholder: kTransparentImage,
                      image: images[index],
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              );
            },
            staggeredTileBuilder: (context) => const StaggeredTile.fit(1)));
  }
}
