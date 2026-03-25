import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trip_planner/features/trips/models/trip.dart';

class TripCard extends ConsumerWidget {
  final TripItem trip;

  const TripCard({super.key, required this.trip});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(child: ListTile(leading: Text(trip.createdAt.toString())));
  }
}
