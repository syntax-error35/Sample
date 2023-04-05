import 'package:flutter/material.dart';

/// TODO : implement filter

class CustomSearchBar extends StatelessWidget {
  final TextEditingController searchController;
  const CustomSearchBar({Key? key, required this.searchController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        color: Colors.white,
        child: ListTile(
          leading: const Icon(Icons.search_outlined, color: Colors.black),
          title: TextFormField(
            controller: searchController,
            decoration: const InputDecoration(
                hintText: 'Search', hintStyle: TextStyle(color: Colors.black)),
            onChanged: (value){

            },
          ),
        ),
      ),
    );
  }
}
