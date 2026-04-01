import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:trip_planner/features/trips/models/trip.dart';

class TripCard extends ConsumerWidget {
  final TripItem trip;

  const TripCard({super.key, required this.trip});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      constraints: BoxConstraints(maxWidth: 500),
      child: Card(
        margin: const EdgeInsets.only(bottom: 12),
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          leading: const CircleAvatar(child: Icon(Icons.flight_takeoff)),
          title: Text(
            trip.name,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: trip.description != null ? Text(trip.description!) : null,
          trailing: const Icon(Icons.chevron_right),
          onTap: () => context.push('/trips/${trip.id}'),
        ),
      ),
    );
  }
}
