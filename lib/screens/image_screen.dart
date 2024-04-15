// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class ImageRoute extends StatelessWidget {
  const ImageRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Image Gallery')),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: GridView.count(
          physics: ScrollPhysics(),
          crossAxisCount: 2,
          children: [
            Image(
              image: NetworkImage(
                  'https://imgs.search.brave.com/9RrO5zGL9IMRQklxSLZoTUbPC_2fCYDkSi36wt-Cfs8/rs:fit:500:0:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvY29tbW9ucy90/aHVtYi9iL2I2L0lt/YWdlX2NyZWF0ZWRf/d2l0aF9hX21vYmls/ZV9waG9uZS5wbmcv/NjQwcHgtSW1hZ2Vf/Y3JlYXRlZF93aXRo/X2FfbW9iaWxlX3Bo/b25lLnBuZw'),
            ),
            Image(image: AssetImage('assets/images/girl.webp'),),
            Image.asset('assets/images/girl.webp'),
            Image.network('https://imgs.search.brave.com/9RrO5zGL9IMRQklxSLZoTUbPC_2fCYDkSi36wt-Cfs8/rs:fit:500:0:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvY29tbW9ucy90/aHVtYi9iL2I2L0lt/YWdlX2NyZWF0ZWRf/d2l0aF9hX21vYmls/ZV9waG9uZS5wbmcv/NjQwcHgtSW1hZ2Vf/Y3JlYXRlZF93aXRo/X2FfbW9iaWxlX3Bo/b25lLnBuZw'),
          ],
        ),
      ),
    );
  }
}
