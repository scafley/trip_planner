import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:trip_planner/features/trips/models/trip.dart';
import 'package:trip_planner/features/trips/providers/trip_provider.dart';

class TripCard extends ConsumerWidget {
  final TripItem trip;

  const TripCard({super.key, required this.trip});

  Future<void> _pickAndUploadImage(WidgetRef ref) async {
    final picker = ImagePicker();
    final img = await picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 70,
    );
    if (img == null) return;

    if (kIsWeb) {
      final bytes = await img.readAsBytes();
      await ref
          .read(tripsProvider.notifier)
          .uploadTripImageBytes(
            tripId: trip.id,
            bytes: bytes,
            mimeType: 'image/jpeg',
          );
    } else {
      await ref
          .read(tripsProvider.notifier)
          .uploadTripImage(tripId: trip.id, imageFile: File(img.path));
    }
  }

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
          leading: GestureDetector(
            onTap: () => _pickAndUploadImage(ref),
            child: CircleAvatar(
              backgroundImage: trip.imageUrl != null
                  ? NetworkImage(trip.imageUrl!)
                  : null,
              child: trip.imageUrl == null
                  ? const Icon(Icons.flight_takeoff)
                  : null,
            ),
          ),
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
