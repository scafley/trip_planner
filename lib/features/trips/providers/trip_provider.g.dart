// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TripsNotifier)
const tripsProvider = TripsNotifierProvider._();

final class TripsNotifierProvider
    extends $NotifierProvider<TripsNotifier, List<TripItem>> {
  const TripsNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'tripsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$tripsNotifierHash();

  @$internal
  @override
  TripsNotifier create() => TripsNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<TripItem> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<TripItem>>(value),
    );
  }
}

String _$tripsNotifierHash() => r'b516411b89258e9b691cdf551bae1bcc84d345d6';

abstract class _$TripsNotifier extends $Notifier<List<TripItem>> {
  List<TripItem> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<List<TripItem>, List<TripItem>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<TripItem>, List<TripItem>>,
              List<TripItem>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
