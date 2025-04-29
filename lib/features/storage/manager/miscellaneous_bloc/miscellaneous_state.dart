import 'package:equatable/equatable.dart';
import '../../../../data/models/miscellaneous/miscellaneous_model.dart';


class MiscellaneousState extends Equatable {
  final List<Miscellaneous> items;
  final bool isLoading;

  const MiscellaneousState({
    this.items = const [],
    this.isLoading = false,
  });

  MiscellaneousState copyWith({
    List<Miscellaneous>? items,
    bool? isLoading,
  }) {
    return MiscellaneousState(
      items: items ?? this.items,
      isLoading: isLoading ?? this.isLoading,
    );
  }

  @override
  List<Object> get props => [items, isLoading];
}
