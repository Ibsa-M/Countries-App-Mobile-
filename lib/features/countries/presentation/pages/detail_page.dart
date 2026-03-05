import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/detail_cubit.dart';
import '../../../../core/services/favorites_service.dart';

class DetailPage extends StatefulWidget {
  final String code;

  const DetailPage({super.key, required this.code});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final favorites = FavoritesService();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => DetailCubit()..fetchDetail(widget.code),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Country Details"),
          actions: [
            IconButton(
              icon: Icon(
                favorites.isFavorite(widget.code)
                    ? Icons.favorite
                    : Icons.favorite_border,
              ),
              onPressed: () {
                favorites.toggleFavorite(widget.code);
                setState(() {});
              },
            ),
          ],
        ),
        body: BlocBuilder<DetailCubit, DetailState>(
          builder: (context, state) {
            if (state is DetailLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state is DetailError) {
              return Center(child: Text(state.message));
            }

            if (state is DetailLoaded) {
              final d = state.detail;

              return SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.network(d.flags.png, height: 150),
                    ),
                    const SizedBox(height: 20),

                    Text(
                      d.name.common,
                      style: const TextStyle(
                          fontSize: 22, fontWeight: FontWeight.bold),
                    ),

                    const SizedBox(height: 20),

                    const Text("Key Statistics",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),

                    const SizedBox(height: 10),

                    Text("Population: ${d.population}"),
                    Text("Area: ${d.area} km²"),
                    Text("Region: ${d.region}"),
                    Text("Subregion: ${d.subregion}"),

                    const SizedBox(height: 20),

                    const Text("Timezones",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),

                    ...d.timezones.map((tz) => Text(tz)),
                  ],
                ),
              );
            }

            return const SizedBox();
          },
        ),
      ),
    );
  }
}