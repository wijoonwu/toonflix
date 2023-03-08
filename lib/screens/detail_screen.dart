import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen(
      {super.key, required this.title, required this.thumb, required this.id});
  final String title, thumb, id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Center(
            child: Hero(
              tag: id,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      offset: const Offset(0, 0),
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ],
                ),
                width: 250,
                clipBehavior: Clip.hardEdge,
                child: Image.network(
                  thumb,
                  headers: const {
                    'Referer': 'https://comic.naver.com',
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
