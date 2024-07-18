import 'package:flutter/material.dart';

class FilterChips extends StatefulWidget {
  @override
  _FilterChipsState createState() => _FilterChipsState();
}

class _FilterChipsState extends State<FilterChips> {
  String _selectedFilter = 'All';

  final List<String> _filters = [
    'All',
    'Politics',
    'Technology',
    'Business',
    'Sport'
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 50, // Adjust height as needed
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _filters.length,
          itemBuilder: (context, index) {
            final filter = _filters[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: ChoiceChip(
                label: Text(
                  filter,
                  style: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                selected: _selectedFilter == filter,
                onSelected: (bool selected) {
                  setState(() {
                    _selectedFilter = filter;
                  });
                },
                selectedColor: Colors.teal,
                backgroundColor: Colors.white,
                labelStyle: TextStyle(
                  color:
                      _selectedFilter == filter ? Colors.white : Colors.black,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  side: BorderSide(
                    color: _selectedFilter == filter
                        ? Colors.teal
                        : Colors.black12,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
