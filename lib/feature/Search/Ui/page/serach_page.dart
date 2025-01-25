import 'package:appointment_app/core/di/dependency_injection.dart';
import 'package:appointment_app/core/theme/colors.dart';
import 'package:appointment_app/feature/Home/UI/widgets/Doctors/doctors_item.dart';
import 'package:appointment_app/feature/Search/Logic/Search%20Cubit/search_cubit.dart';
import 'package:appointment_app/feature/Search/Logic/Search%20Cubit/search_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  SearchPageState createState() => SearchPageState();
}

class SearchPageState extends State<SearchPage> {
  final TextEditingController _searchController = TextEditingController();
  // List<String> searchResults = [];

  bool _isSearching = false;

  void _openFilterModal() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Advanced Filters',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              _buildFilterOption('Filter 1'),
              _buildFilterOption('Filter 2'),
              _buildFilterOption('Filter 3'),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Apply Filters'),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildFilterOption(String title) {
    return ListTile(
      title: Text(title),
      trailing: Checkbox(value: false, onChanged: (value) {}),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SearchCubit>(),
      child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 90,
            automaticallyImplyLeading: false,
            title: SearchTextField(
                searchController: _searchController, isSearching: _isSearching),
            actions: [
              IconButton(
                icon: const Icon(Icons.filter_list),
                onPressed: _openFilterModal,
              ),
            ],
          ),
          body: BlocBuilder<SearchCubit, SearchStates>(
            builder: (context, state) {
              return state.maybeWhen(
                searchInitialState: () {
                  return const Center(
                    child: Text('Search for doctors'),
                  );
                },
                searchLoadingState: () {
                  _isSearching = true;
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
                searchSuccessState: (doctors) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(
                      itemCount: doctors.length,
                      itemBuilder: (context, index) {
                        return DoctorsItem(doctor: doctors[index]);
                      },
                    ),
                  );
                },
                orElse: () {
                  return const Center(
                    child: Text('No results found'),
                  );
                },
              );
            },
          )),
    );
  }
}

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
    required TextEditingController searchController,
    required bool isSearching,
  })  : _searchController = searchController,
        _isSearching = isSearching;

  final TextEditingController _searchController;
  final bool _isSearching;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _searchController,
      onChanged: (value) async {
        if (value.isNotEmpty) {
          await Future.delayed(const Duration(seconds: 1));

          context.read<SearchCubit>().search(value);
        } else {
          
          context.read<SearchCubit>().doctorsResults.clear();
        }
      },
      decoration: InputDecoration(
        hintText: 'Search...',
        // border: InputBorder.none,
        fillColor: ColorManger.lightGreyColor,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: ColorManger.lightGreyColor),
        ),
        suffixIcon: _isSearching
            ? IconButton(
                icon: const Icon(Icons.clear),
                onPressed: () {
                  _searchController.clear();
                },
              )
            : null,
      ),
    );
  }
}
