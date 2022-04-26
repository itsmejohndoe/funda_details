import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:funda_details_component/domain/entities/unit.dart';
import 'package:funda_details_component/presentation/pages/details_photo_zoom_page.dart';
import 'package:transparent_image/transparent_image.dart';

class DetailsCarousel extends StatefulWidget {
  final double height;
  final List<MediaItems> items;

  const DetailsCarousel({
    Key? key,
    required this.height,
    required this.items,
  }) : super(key: key);

  @override
  State<DetailsCarousel> createState() => _DetailsCarouselState();
}

class _DetailsCarouselState extends State<DetailsCarousel> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: widget.height,
      child: Stack(
        children: [
          PageView(
            onPageChanged: (index) => setState(() => _currentPage = index),
            children: widget.items
                .map(
                  // TODO: replace with CachedImage
                  (media) => GestureDetector(
                    child: FadeInImage.memoryNetwork(
                      placeholder: kTransparentImage,
                      image: media.url!,
                      fit: BoxFit.cover,
                    ),
                    onTap: () => Navigator.of(context).push(
                      CupertinoPageRoute(
                          builder: (context) => DetailsPhotoZoomPage(photoUrl: media.url!), fullscreenDialog: true),
                    ),
                  ),
                )
                .toList(),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 16),
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                runAlignment: WrapAlignment.center,
                alignment: WrapAlignment.center,
                runSpacing: 8,
                spacing: 8,
                children: List.filled(widget.items.length, 0)
                    .asMap()
                    .keys
                    .map((key) => _pageViewIndicator(key == _currentPage))
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _pageViewIndicator(bool selected) {
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: selected ? Theme.of(context).primaryColor : Colors.grey.withOpacity(0.6),
      ),
    );
  }
}
