import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trip_planner/features/auth/providers/auth_provider.dart';
import 'package:trip_planner/features/trips/providers/trip_provider.dart';
import 'package:trip_planner/features/trips/widgets/add_trip_bottom_sheet.dart';

import 'package:trip_planner/features/trips/widgets/trip_card.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tripsAsync = ref.watch(tripsProvider);
    //final trips = ref.watch(tripsProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trip Planner'),
        actions: [
          IconButton(
            onPressed: () {
              ref.read(authStateProvider.notifier).signOut();
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: Column(
        children: [
          const Center(child: Text('Lista podróży')),
          Expanded(
            child: tripsAsync.when(
              data: (trips) => trips.isEmpty
                  ? const SizedBox()
                  : ListView.builder(
                      shrinkWrap: true,
                      itemCount: trips.length,
                      itemBuilder: (context, index) {
                        return Center(child: TripCard(trip: trips[index]));
                      },
                    ),
              error: (e, _) => const Text("error"),
              loading: () => const Center(child: CircularProgressIndicator()),
            ),
          ),
          // for (var trip in tripsAsync) ...[TripCard(trip: trip)],
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (_) => const AddTripBottomSheet(),
        ),
        child: const Icon(Icons.add),
      ),
    );
  }
}
