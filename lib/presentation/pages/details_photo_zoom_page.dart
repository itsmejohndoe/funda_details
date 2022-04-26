import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class DetailsPhotoZoomPage extends StatelessWidget {
  final String photoUrl;

  const DetailsPhotoZoomPage({Key? key, required this.photoUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PhotoView(
            imageProvider: NetworkImage(photoUrl),
          ),
          Align(
            alignment: Alignment.topRight,
            child: SafeArea(
              bottom: false,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: IconButton(
                  icon: const Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
