import '../../../../data/models/miscellaneous/miscellaneous_model.dart';

sealed class MiscellaneousEvent {}

final class LoadMiscellaneous extends MiscellaneousEvent {
  LoadMiscellaneous();
}

final class AddMiscellaneous extends MiscellaneousEvent {
  final Miscellaneous item;

  AddMiscellaneous(this.item);
}

final class UpdateMiscellaneous extends MiscellaneousEvent {
  final int index;
  final Miscellaneous item;

  UpdateMiscellaneous(this.index, this.item);
}

final class DeleteMiscellaneous extends MiscellaneousEvent {
  final int index;

  DeleteMiscellaneous(this.index);
}
