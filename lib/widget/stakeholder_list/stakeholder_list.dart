import 'package:flutter/material.dart';
import 'package:sample/widget/custom_filter.dart';
import 'package:sample/widget/custom_search_bar.dart';

class StakeholderList extends StatelessWidget {
  StakeholderList({Key? key}) : super(key: key);
  final TextEditingController inpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: CustomSearchBar(searchController: inpController)),
                const CustomFilter(),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (ctx, index) {
                return customListTile();
              },
              itemCount: 20,
            ),
          ),
        ],
      ),
    );
  }

  Widget customListTile() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          color: Colors.white,
          child: ListTile(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            // minVerticalPadding: 10,
            style: ListTileStyle.drawer,
            tileColor: Colors.white,
            leading: const CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/placeholder.png'),
            ),
            title: const Text('Test stakeholder'),
            subtitle: const Text('CEO (Very Important)'),
            trailing: Column(
              children: [
                Expanded(
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.play_arrow,
                      color: Colors.blue,
                      size: 20,
                    ),
                  ),
                ),
                const Text('Approved'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
