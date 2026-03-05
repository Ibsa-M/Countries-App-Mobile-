import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/countries_cubit.dart';
import 'detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CountriesCubit()..fetchCountries(),
      child: const HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CountriesCubit>();

    return Scaffold(
      appBar: AppBar(title: const Text("Countries")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: cubit.search,
              decoration: const InputDecoration(
                hintText: "Search for a country",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Expanded(
            child: BlocBuilder<CountriesCubit, CountriesState>(
              builder: (context, state) {
                if (state is CountriesLoading) {
                  return const Center(child: CircularProgressIndicator());
                }

                if (state is CountriesError) {
                  return Center(child: Text(state.message));
                }

                if (state is CountriesLoaded) {
                  if (state.countries.isEmpty) {
                    return const Center(child: Text("No countries found."));
                  }

                  return ListView.builder(
                    itemCount: state.countries.length,
                    itemBuilder: (context, index) {
                      final country = state.countries[index];
                      return ListTile(
  leading: Image.network(country.flags.png, width: 40),
  title: Text(country.name.common),
  subtitle: Text("Population: ${country.population}"),
  onTap: () {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (_) => DetailPage(
        code: country.cca2,
      ),
    ),
  );
  },
);
                      // return ListTile(
                      //   leading: Image.network(country.flags.png, width: 40),
                      //   title: Text(country.name.common),
                      //   subtitle:
                      //       Text("Population: ${country.population}"),
                      // );
                    },
                  );
                }

                return const SizedBox();
              },
            ),
          )
        ],
      ),
    );
  }
}