import 'package:dartz/dartz.dart' show Either;
import 'package:flutter/material.dart';
import 'package:funda_details_component/domain/entities/unit.dart';
import 'package:funda_details_component/domain/services/details_service.dart';
import 'package:funda_details_component/presentation/widgets/details_carousel.dart';

class DetailsPage extends StatefulWidget {
  // The apiKey is received here just to make things easier, but on a real scenario this would be injected in a different way
  // maybe by setting through a callback on a settings class inside the package.
  final String apiKey;
  final String unitId;

  const DetailsPage({Key? key, required this.apiKey, required this.unitId}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  static const _headerHeight = 300.0;

  // On a more elaborated scenario this should be injected/obtained by/from a DI
  final _detailsService = DetailsService();

  late Future<Either<String, Unit>> _fLoadUnit;
  var _isFavorite = false;

  @override
  void initState() {
    _startLoadingData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<Either<String, Unit>>(
        future: _fLoadUnit,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          } else if (snapshot.hasError) {
            return _retryBox();
          }

          return snapshot.data!.fold(
            (error) => _retryBox(),
            (unit) {
              return CustomScrollView(
                slivers: [
                  SliverAppBar(
                    pinned: true,
                    expandedHeight: _headerHeight,
                    flexibleSpace: FlexibleSpaceBar(
                      collapseMode: CollapseMode.parallax,
                      background: DetailsCarousel(
                        height: _headerHeight,
                        items: unit.featuredPhotos,
                      ),
                    ),
                    actions: [
                      IconButton(
                        icon: _isFavorite
                            ? const Icon(Icons.favorite_rounded)
                            : const Icon(Icons.favorite_border_rounded),
                        onPressed: () => setState(() => _isFavorite = !_isFavorite),
                      ),
                    ],
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.all(16),
                    sliver: SliverList(
                      delegate: SliverChildListDelegate(
                        [
                          Text(
                            unit.title,
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          const SizedBox(height: 16),
                          Text(
                            unit.volledigeOmschrijving ?? 'No description.',
                            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                  color: Colors.black.withOpacity(0.6),
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }

  Widget _retryBox() {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'An error has ocurred and we were unable to load\ninformation about this about. Please try again.',
              style: TextStyle(fontSize: 13),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            TextButton(
              child: const Text('Try again'),
              onPressed: () {
                _startLoadingData();
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }

  void _startLoadingData() => _fLoadUnit = _detailsService.loadUnit(widget.apiKey, widget.unitId);
}
