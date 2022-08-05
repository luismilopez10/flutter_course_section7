import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:seccion7_fluttercourse/main.dart';

import 'package:seccion7_fluttercourse/ui/widgets/widgets.dart';
import 'package:seccion7_fluttercourse/providers/providers.dart';
import 'package:seccion7_fluttercourse/search/search_delegate.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context, listen: true);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Películas en cines'),
        leading: IconButton(
          icon: Icon(MyApp.themeNotifier.value == ThemeMode.dark
              ? Icons.light_mode_outlined
              : Icons.dark_mode_outlined),
          onPressed: () {
            MyApp.themeNotifier.value =
                MyApp.themeNotifier.value == ThemeMode.light
                    ? ThemeMode.dark
                    : ThemeMode.light;
            setState(() {});
          },
        ),
        actions: [
          IconButton(
              onPressed: () =>
                  showSearch(context: context, delegate: MovieSearchDelegate()),
              icon: const Icon(Icons.search_outlined)),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              CardSwiper(movies: moviesProvider.onDisplayMovies),
              MovieSlider(
                movies: moviesProvider.popularMovies,
                title: 'Populares',
                onNextPage: () => moviesProvider.getPopularMovies(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
