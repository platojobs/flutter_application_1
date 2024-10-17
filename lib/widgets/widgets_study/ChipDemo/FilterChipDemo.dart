import 'package:flutter/material.dart';

class FilterChipDemo extends StatefulWidget {
  const FilterChipDemo({super.key});

  @override
  State<FilterChipDemo> createState() => _FilterChipDemoState();
}

enum ExerciseFilter { walking, running, cycling, hiking }


class _FilterChipDemoState extends State<FilterChipDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Filter chip"),
      ),
      body: FilterChipExample(),
    );
  }
}


class FilterChipExample extends StatefulWidget {
  const FilterChipExample({super.key});

  @override
  State<FilterChipExample> createState() => _FilterChipExampleState();
}

class _FilterChipExampleState extends State<FilterChipExample> {
  Set<ExerciseFilter> filters = <ExerciseFilter>{};

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Choose an exercise', style: textTheme.labelLarge),
          const SizedBox(height: 5.0),
          Wrap(
            spacing: 5.0,
            children: ExerciseFilter.values.map((ExerciseFilter exercise) {
              return FilterChip(
                label: Text(exercise.name),
                selected: filters.contains(exercise),
                onSelected: (bool selected) {
                  setState(() {
                    if (selected) {
                      filters.add(exercise);
                    } else {
                      filters.remove(exercise);
                    }
                  });
                },
              );
            }).toList(),
          ),
          const SizedBox(height: 10.0),
          Text(
            'Looking for: ${filters.map((ExerciseFilter e) => e.name).join(', ')}',
            style: textTheme.labelLarge,
          ),
        ],
      ),
    );
  }
}
