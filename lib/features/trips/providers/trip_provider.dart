import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_planner/features/trips/models/trip.dart';

part 'trip_provider.g.dart';

@riverpod
class TripsNotifier extends _$TripsNotifier {
  @override
  List<TripItem> build() {
    return [
      TripItem(
        id: "1",
        name: "Bari",
        description: "Wypad do Bari",
        createdAt: DateTime.now(),
      ),
    ];
  }

  void addTrip({required String name, String? description}) {
    final newTrip = TripItem(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      name: name,
      description: description,
      createdAt: DateTime.now(),
    );

    state = [...state, newTrip];
  }

  void deleteTrip(String id) {
    state = state.where((trip) => trip.id != id).toList();
  }
}
