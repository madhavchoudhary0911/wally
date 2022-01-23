// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SingleImageView extends StatefulWidget {
  final data;
  const SingleImageView({ Key? key,required this.data }) : super(key: key);

  @override
  _SingleImageViewState createState() => _SingleImageViewState();
}

class _SingleImageViewState extends State<SingleImageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Image.network(
        widget.data['src']['original'],
        fit: BoxFit.cover,
        loadingBuilder: (BuildContext context, Widget child,
                      ImageChunkEvent? loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                    loadingProgress.expectedTotalBytes!
                                : null,
                          ),
                          SizedBox(height: 10,),
                          Text("Loading wallpaper...")
                        ],
                      )
                    );}
      ),
      ),
    );
  }
}