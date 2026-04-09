// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_expense_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(expenseRepository)
const expenseRepositoryProvider = ExpenseRepositoryProvider._();

final class ExpenseRepositoryProvider
    extends
        $FunctionalProvider<
          ExpenseRepository,
          ExpenseRepository,
          ExpenseRepository
        >
    with $Provider<ExpenseRepository> {
  const ExpenseRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'expenseRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$expenseRepositoryHash();

  @$internal
  @override
  $ProviderElement<ExpenseRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ExpenseRepository create(Ref ref) {
    return expenseRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ExpenseRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ExpenseRepository>(value),
    );
  }
}

String _$expenseRepositoryHash() => r'e33dbce465ddd2592a69b3b85e5c8cacaa8da411';

@ProviderFor(TripExpenseNotifier)
const tripExpenseProvider = TripExpenseNotifierFamily._();

final class TripExpenseNotifierProvider
    extends $StreamNotifierProvider<TripExpenseNotifier, List<TripExpense>> {
  const TripExpenseNotifierProvider._({
    required TripExpenseNotifierFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'tripExpenseProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$tripExpenseNotifierHash();

  @override
  String toString() {
    return r'tripExpenseProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  TripExpenseNotifier create() => TripExpenseNotifier();

  @override
  bool operator ==(Object other) {
    return other is TripExpenseNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$tripExpenseNotifierHash() =>
    r'3c8fa6c8a633168872b17231d76bcc917d3cef25';

final class TripExpenseNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          TripExpenseNotifier,
          AsyncValue<List<TripExpense>>,
          List<TripExpense>,
          Stream<List<TripExpense>>,
          String
        > {
  const TripExpenseNotifierFamily._()
    : super(
        retry: null,
        name: r'tripExpenseProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  TripExpenseNotifierProvider call(String tripId) =>
      TripExpenseNotifierProvider._(argument: tripId, from: this);

  @override
  String toString() => r'tripExpenseProvider';
}

abstract class _$TripExpenseNotifier
    extends $StreamNotifier<List<TripExpense>> {
  late final _$args = ref.$arg as String;
  String get tripId => _$args;

  Stream<List<TripExpense>> build(String tripId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref as $Ref<AsyncValue<List<TripExpense>>, List<TripExpense>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<TripExpense>>, List<TripExpense>>,
              AsyncValue<List<TripExpense>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
