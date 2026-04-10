import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:trip_planner/features/trips/providers/trip_destination_provider.dart';

class AddDestinationBottomSheet extends ConsumerStatefulWidget {
  final String tripId;
  const AddDestinationBottomSheet({super.key, required this.tripId});

  @override
  ConsumerState<AddDestinationBottomSheet> createState() =>
      _AddDestinationBottomSheetState();
}

class _AddDestinationBottomSheetState
    extends ConsumerState<AddDestinationBottomSheet> {
  final _nameController = TextEditingController();
  final _latitudeController = TextEditingController();
  final _longitudeController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _nameController.dispose();
    _latitudeController.dispose();
    _longitudeController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;

    await ref
        .read(destinationProvider(widget.tripId).notifier)
        .addDestination(
          name: _nameController.text.trim(),

          latitude: double.parse(
            _latitudeController.text.trim().replaceAll(',', '.'),
          ),
          longitude: double.parse(
            _longitudeController.text.trim().replaceAll(',', '.'),
          ),
        );

    if (mounted) context.pop();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 24,
        right: 24,
        top: 24,
        bottom: MediaQuery.of(context).viewInsets.bottom + 24,
      ),
      child: Form(
        key: _formKey,

        child: ListView(
          children: [
            Text(
              'Nowa część wyprawy',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            TextFormField(
              validator: (v) {
                return v == null || v.trim().isEmpty ? "Wpisz nazwę" : null;
              },
              decoration: const InputDecoration(
                labelText: 'Nazwa *',
                border: OutlineInputBorder(),
              ),
              controller: _nameController,
            ),

            const SizedBox(height: 12),
            TextFormField(
              controller: _latitudeController,
              decoration: const InputDecoration(
                labelText: 'Szerokość geograficzna *',
                border: OutlineInputBorder(),
              ),
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
                signed: true,
              ),
              validator: (v) {
                if (v == null || v.trim().isEmpty) return 'Podaj szerokość';
                final parsed = double.tryParse(v.trim().replaceAll(',', '.'));
                if (parsed == null) return 'Podaj prawidłową liczbę';
                return null;
              },
            ),
            const SizedBox(height: 12),
            TextFormField(
              controller: _longitudeController,
              decoration: const InputDecoration(
                labelText: 'Długość geograficzna *',
                border: OutlineInputBorder(),
              ),
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
                signed: true,
              ),
              validator: (v) {
                if (v == null || v.trim().isEmpty) return 'Podaj długość';
                final parsed = double.tryParse(v.trim().replaceAll(',', '.'));
                if (parsed == null) return 'Podaj prawidłową liczbę';
                return null;
              },
            ),

            const SizedBox(height: 20),
            ElevatedButton(onPressed: _submit, child: const Text('Dodaj')),
          ],
        ),
      ),
    );
  }
}
