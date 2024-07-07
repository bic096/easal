// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_pods.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$listInvoicesHash() => r'34d73218f26615f6cb095638eaf51423953a2d11';

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

/// See also [listInvoices].
@ProviderFor(listInvoices)
const listInvoicesProvider = ListInvoicesFamily();

/// See also [listInvoices].
class ListInvoicesFamily
    extends Family<AsyncValue<Either<InvoiceFailure, PaginatedList<Invoice>>>> {
  /// See also [listInvoices].
  const ListInvoicesFamily();

  /// See also [listInvoices].
  ListInvoicesProvider call({
    InvoiceStatus? status,
    int page = 1,
    int perPage = 30,
    String? sort,
    String? filter,
  }) {
    return ListInvoicesProvider(
      status: status,
      page: page,
      perPage: perPage,
      sort: sort,
      filter: filter,
    );
  }

  @override
  ListInvoicesProvider getProviderOverride(
    covariant ListInvoicesProvider provider,
  ) {
    return call(
      status: provider.status,
      page: provider.page,
      perPage: provider.perPage,
      sort: provider.sort,
      filter: provider.filter,
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
  String? get name => r'listInvoicesProvider';
}

/// See also [listInvoices].
class ListInvoicesProvider extends AutoDisposeFutureProvider<
    Either<InvoiceFailure, PaginatedList<Invoice>>> {
  /// See also [listInvoices].
  ListInvoicesProvider({
    InvoiceStatus? status,
    int page = 1,
    int perPage = 30,
    String? sort,
    String? filter,
  }) : this._internal(
          (ref) => listInvoices(
            ref as ListInvoicesRef,
            status: status,
            page: page,
            perPage: perPage,
            sort: sort,
            filter: filter,
          ),
          from: listInvoicesProvider,
          name: r'listInvoicesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$listInvoicesHash,
          dependencies: ListInvoicesFamily._dependencies,
          allTransitiveDependencies:
              ListInvoicesFamily._allTransitiveDependencies,
          status: status,
          page: page,
          perPage: perPage,
          sort: sort,
          filter: filter,
        );

  ListInvoicesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.status,
    required this.page,
    required this.perPage,
    required this.sort,
    required this.filter,
  }) : super.internal();

  final InvoiceStatus? status;
  final int page;
  final int perPage;
  final String? sort;
  final String? filter;

  @override
  Override overrideWith(
    FutureOr<Either<InvoiceFailure, PaginatedList<Invoice>>> Function(
            ListInvoicesRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ListInvoicesProvider._internal(
        (ref) => create(ref as ListInvoicesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        status: status,
        page: page,
        perPage: perPage,
        sort: sort,
        filter: filter,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<
      Either<InvoiceFailure, PaginatedList<Invoice>>> createElement() {
    return _ListInvoicesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ListInvoicesProvider &&
        other.status == status &&
        other.page == page &&
        other.perPage == perPage &&
        other.sort == sort &&
        other.filter == filter;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, status.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);
    hash = _SystemHash.combine(hash, perPage.hashCode);
    hash = _SystemHash.combine(hash, sort.hashCode);
    hash = _SystemHash.combine(hash, filter.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ListInvoicesRef on AutoDisposeFutureProviderRef<
    Either<InvoiceFailure, PaginatedList<Invoice>>> {
  /// The parameter `status` of this provider.
  InvoiceStatus? get status;

  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `perPage` of this provider.
  int get perPage;

  /// The parameter `sort` of this provider.
  String? get sort;

  /// The parameter `filter` of this provider.
  String? get filter;
}

class _ListInvoicesProviderElement extends AutoDisposeFutureProviderElement<
    Either<InvoiceFailure, PaginatedList<Invoice>>> with ListInvoicesRef {
  _ListInvoicesProviderElement(super.provider);

  @override
  InvoiceStatus? get status => (origin as ListInvoicesProvider).status;
  @override
  int get page => (origin as ListInvoicesProvider).page;
  @override
  int get perPage => (origin as ListInvoicesProvider).perPage;
  @override
  String? get sort => (origin as ListInvoicesProvider).sort;
  @override
  String? get filter => (origin as ListInvoicesProvider).filter;
}

String _$getInvoiceDetailsHash() => r'd6deeafe3f39419e0cf7fa3b3425e49847e0d1f2';

/// See also [getInvoiceDetails].
@ProviderFor(getInvoiceDetails)
const getInvoiceDetailsProvider = GetInvoiceDetailsFamily();

/// See also [getInvoiceDetails].
class GetInvoiceDetailsFamily
    extends Family<AsyncValue<Either<InvoiceFailure, Invoice>>> {
  /// See also [getInvoiceDetails].
  const GetInvoiceDetailsFamily();

  /// See also [getInvoiceDetails].
  GetInvoiceDetailsProvider call(
    String invoiceId,
  ) {
    return GetInvoiceDetailsProvider(
      invoiceId,
    );
  }

  @override
  GetInvoiceDetailsProvider getProviderOverride(
    covariant GetInvoiceDetailsProvider provider,
  ) {
    return call(
      provider.invoiceId,
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
  String? get name => r'getInvoiceDetailsProvider';
}

/// See also [getInvoiceDetails].
class GetInvoiceDetailsProvider
    extends AutoDisposeFutureProvider<Either<InvoiceFailure, Invoice>> {
  /// See also [getInvoiceDetails].
  GetInvoiceDetailsProvider(
    String invoiceId,
  ) : this._internal(
          (ref) => getInvoiceDetails(
            ref as GetInvoiceDetailsRef,
            invoiceId,
          ),
          from: getInvoiceDetailsProvider,
          name: r'getInvoiceDetailsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getInvoiceDetailsHash,
          dependencies: GetInvoiceDetailsFamily._dependencies,
          allTransitiveDependencies:
              GetInvoiceDetailsFamily._allTransitiveDependencies,
          invoiceId: invoiceId,
        );

  GetInvoiceDetailsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.invoiceId,
  }) : super.internal();

  final String invoiceId;

  @override
  Override overrideWith(
    FutureOr<Either<InvoiceFailure, Invoice>> Function(
            GetInvoiceDetailsRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetInvoiceDetailsProvider._internal(
        (ref) => create(ref as GetInvoiceDetailsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        invoiceId: invoiceId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Either<InvoiceFailure, Invoice>>
      createElement() {
    return _GetInvoiceDetailsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetInvoiceDetailsProvider && other.invoiceId == invoiceId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, invoiceId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetInvoiceDetailsRef
    on AutoDisposeFutureProviderRef<Either<InvoiceFailure, Invoice>> {
  /// The parameter `invoiceId` of this provider.
  String get invoiceId;
}

class _GetInvoiceDetailsProviderElement
    extends AutoDisposeFutureProviderElement<Either<InvoiceFailure, Invoice>>
    with GetInvoiceDetailsRef {
  _GetInvoiceDetailsProviderElement(super.provider);

  @override
  String get invoiceId => (origin as GetInvoiceDetailsProvider).invoiceId;
}

String _$acceptInvoiceHash() => r'a232d7a1898577b66e0506a172431a4c2e1aa19f';

/// See also [acceptInvoice].
@ProviderFor(acceptInvoice)
const acceptInvoiceProvider = AcceptInvoiceFamily();

/// See also [acceptInvoice].
class AcceptInvoiceFamily
    extends Family<AsyncValue<Either<InvoiceFailure, Invoice>>> {
  /// See also [acceptInvoice].
  const AcceptInvoiceFamily();

  /// See also [acceptInvoice].
  AcceptInvoiceProvider call(
    Invoice invoice,
  ) {
    return AcceptInvoiceProvider(
      invoice,
    );
  }

  @override
  AcceptInvoiceProvider getProviderOverride(
    covariant AcceptInvoiceProvider provider,
  ) {
    return call(
      provider.invoice,
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
  String? get name => r'acceptInvoiceProvider';
}

/// See also [acceptInvoice].
class AcceptInvoiceProvider
    extends AutoDisposeFutureProvider<Either<InvoiceFailure, Invoice>> {
  /// See also [acceptInvoice].
  AcceptInvoiceProvider(
    Invoice invoice,
  ) : this._internal(
          (ref) => acceptInvoice(
            ref as AcceptInvoiceRef,
            invoice,
          ),
          from: acceptInvoiceProvider,
          name: r'acceptInvoiceProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$acceptInvoiceHash,
          dependencies: AcceptInvoiceFamily._dependencies,
          allTransitiveDependencies:
              AcceptInvoiceFamily._allTransitiveDependencies,
          invoice: invoice,
        );

  AcceptInvoiceProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.invoice,
  }) : super.internal();

  final Invoice invoice;

  @override
  Override overrideWith(
    FutureOr<Either<InvoiceFailure, Invoice>> Function(
            AcceptInvoiceRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AcceptInvoiceProvider._internal(
        (ref) => create(ref as AcceptInvoiceRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        invoice: invoice,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Either<InvoiceFailure, Invoice>>
      createElement() {
    return _AcceptInvoiceProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AcceptInvoiceProvider && other.invoice == invoice;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, invoice.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AcceptInvoiceRef
    on AutoDisposeFutureProviderRef<Either<InvoiceFailure, Invoice>> {
  /// The parameter `invoice` of this provider.
  Invoice get invoice;
}

class _AcceptInvoiceProviderElement
    extends AutoDisposeFutureProviderElement<Either<InvoiceFailure, Invoice>>
    with AcceptInvoiceRef {
  _AcceptInvoiceProviderElement(super.provider);

  @override
  Invoice get invoice => (origin as AcceptInvoiceProvider).invoice;
}

String _$addReceiptTypeHash() => r'53dc8cea666378fd3436d9a7e609df83d4f6af7b';

/// See also [addReceiptType].
@ProviderFor(addReceiptType)
const addReceiptTypeProvider = AddReceiptTypeFamily();

/// See also [addReceiptType].
class AddReceiptTypeFamily
    extends Family<AsyncValue<Either<InvoiceFailure, ReceiptType>>> {
  /// See also [addReceiptType].
  const AddReceiptTypeFamily();

  /// See also [addReceiptType].
  AddReceiptTypeProvider call(
    ReceiptType type,
  ) {
    return AddReceiptTypeProvider(
      type,
    );
  }

  @override
  AddReceiptTypeProvider getProviderOverride(
    covariant AddReceiptTypeProvider provider,
  ) {
    return call(
      provider.type,
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
  String? get name => r'addReceiptTypeProvider';
}

/// See also [addReceiptType].
class AddReceiptTypeProvider
    extends AutoDisposeFutureProvider<Either<InvoiceFailure, ReceiptType>> {
  /// See also [addReceiptType].
  AddReceiptTypeProvider(
    ReceiptType type,
  ) : this._internal(
          (ref) => addReceiptType(
            ref as AddReceiptTypeRef,
            type,
          ),
          from: addReceiptTypeProvider,
          name: r'addReceiptTypeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$addReceiptTypeHash,
          dependencies: AddReceiptTypeFamily._dependencies,
          allTransitiveDependencies:
              AddReceiptTypeFamily._allTransitiveDependencies,
          type: type,
        );

  AddReceiptTypeProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.type,
  }) : super.internal();

  final ReceiptType type;

  @override
  Override overrideWith(
    FutureOr<Either<InvoiceFailure, ReceiptType>> Function(
            AddReceiptTypeRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AddReceiptTypeProvider._internal(
        (ref) => create(ref as AddReceiptTypeRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        type: type,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Either<InvoiceFailure, ReceiptType>>
      createElement() {
    return _AddReceiptTypeProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AddReceiptTypeProvider && other.type == type;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AddReceiptTypeRef
    on AutoDisposeFutureProviderRef<Either<InvoiceFailure, ReceiptType>> {
  /// The parameter `type` of this provider.
  ReceiptType get type;
}

class _AddReceiptTypeProviderElement extends AutoDisposeFutureProviderElement<
    Either<InvoiceFailure, ReceiptType>> with AddReceiptTypeRef {
  _AddReceiptTypeProviderElement(super.provider);

  @override
  ReceiptType get type => (origin as AddReceiptTypeProvider).type;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
