import '../../../core/base_state.dart';

class SearchData<T> extends BaseState {
  final String query;
  final String order;
  final int startDate;
  final int endDate;
  final int page;
  final int limit;
  final bool canLoadMore;
  final List<T> listData;

  SearchData({
    super.status,
    this.query = "",
    this.order = "desc",
    this.startDate = -1,
    this.endDate = -1,
    this.page = 0,
    this.limit = 10,
    this.canLoadMore = true,
    this.listData = const [],
  });

  SearchData<T> copyWith({
    BaseStatus? status,
    String? query,
    String? order,
    int? startDate,
    int? endDate,
    int? page,
    int? limit,
    bool? canLoadMore,
    List<T>? listData,
  }) {
    return SearchData<T>(
      status: status ?? this.status,
      query: query ?? this.query,
      order: order ?? this.order,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      page: page ?? this.page,
      limit: limit ?? this.limit,
      canLoadMore: canLoadMore ?? this.canLoadMore,
      listData: listData ?? this.listData,
    );
  }
}
