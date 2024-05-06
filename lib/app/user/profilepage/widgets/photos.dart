// ignore_for_file: unused_import

import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Gallery extends StatefulWidget {
  @override
  _GalleryState createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  List<dynamic> _imageUrls = [];

  @override
  void initState() {
    super.initState();
    fetchImages();
  }

  Future<void> fetchImages() async {
    final String apiUrl = 'https://rubidya.com/api/users/get-media';
    final String token =
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2NjBiZmUxODE3ZmYzZjBkMmZjMmQwNGUiLCJpYXQiOjE3MTQ3MTkyMDMsImV4cCI6MTc4MzgzOTIwM30.HfsYDcVEzMsdi6pU24IzHzmGAxfDQ2NAJYIptOAu_9I';

    final response = await http.get(
      Uri.parse(apiUrl),
      headers: {'Authorization': 'Bearer $token'},
    );

    if (response.statusCode == 200) {
      final dynamic responseBody = jsonDecode(response.body);
      if (responseBody != null && responseBody is Map<String, dynamic>) {
        final List<dynamic> images = responseBody['images'] ?? [];
        print('data :$responseBody');
        setState(() {
          _imageUrls = images.map((item) => item['imageUrl']).toList();
          print('image:$_imageUrls');
        });
      }
    } else {
      throw Exception('Failed to load images');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 4.0, mainAxisSpacing: 4.0),
        itemCount: _imageUrls.length,
        itemBuilder: (context, index) {
          return Image.network(_imageUrls[index]);
        },
      ),
    );
  }
}
