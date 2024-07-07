// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$receiptNotifierHash() => r'9c20645008d51f2e56407aa7ea1aec6231862f73';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$ReceiptNotifier
    extends BuildlessAsyncNotifier<Either<InvoiceFailure, Receipt>> {
  late final Receipt? receipt;

  FutureOr<Either<InvoiceFailure, Receipt>> build({
    Receipt? receipt,
  });
}

/// See also [ReceiptNotifier].
@ProviderFor(ReceiptNotifier)
const receiptNotifierProvider = ReceiptNotifierFamily();

/// See also [ReceiptNotifier].
class ReceiptNotifierFamily
    extends Family<AsyncValue<Either<InvoiceFailure, Receipt>>> {
  /// See also [ReceiptNotifier].
  const ReceiptNotifierFamily();

  /// See also [ReceiptNotifier].
  ReceiptNotifierProvider call({
    Receipt? receipt,
  }) {
    return ReceiptNotifierProvider(
      receipt: receipt,
    );
  }

  @override
  ReceiptNotifierProvider getProviderOverride(
    covariant ReceiptNotifierProvider provider,
  ) {
    return call(
      receipt: provider.receipt,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'receiptNotifierProvider';
}

/// See also [ReceiptNotifier].
class ReceiptNotifierProvider extends AsyncNotifierProviderImpl<ReceiptNotifier,
    Either<InvoiceFailure, Receipt>> {
  /// See also [ReceiptNotifier].
  ReceiptNotifierProvider({
    Receipt? receipt,
  }) : this._internal(
          () => ReceiptNotifier()..receipt = receipt,
          from: receiptNotifierProvider,
          name: r'receiptNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$receiptNotifierHash,
          dependencies: ReceiptNotifierFamily._dependencies,
          allTransitiveDependencies:
              ReceiptNotifierFamily._allTransitiveDependencies,
          receipt: receipt,
        );

  ReceiptNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.receipt,
  }) : super.internal();

  final Receipt? receipt;

  @override
  FutureOr<Either<InvoiceFailure, Receipt>> runNotifierBuild(
    covariant ReceiptNotifier notifier,
  ) {
    return notifier.build(
      receipt: receipt,
    );
  }

  @override
  Override overrideWith(ReceiptNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: ReceiptNotifierProvider._internal(
        () => create()..receipt = receipt,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        receipt: receipt,
      ),
    );
  }

  @override
  AsyncNotifierProviderElement<ReceiptNotifier, Either<InvoiceFailure, Receipt>>
      createElement() {
    return _ReceiptNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ReceiptNotifierProvider && other.receipt == receipt;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, receipt.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ReceiptNotifierRef
    on AsyncNotifierProviderRef<Either<InvoiceFailure, Receipt>> {
  /// The parameter `receipt` of this provider.
  Receipt? get receipt;
}

class _ReceiptNotifierProviderElement extends AsyncNotifierProviderElement<
    ReceiptNotifier, Either<InvoiceFailure, Receipt>> with ReceiptNotifierRef {
  _ReceiptNotifierProviderElement(super.provider);

  @override
  Receipt? get receipt => (origin as ReceiptNotifierProvider).receipt;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
