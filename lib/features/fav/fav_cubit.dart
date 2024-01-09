import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';


class FavCubit extends Cubit<FavState> {
  FavCubit() : super(FavState());

  void toggleFavorite(Item item) {
    final List<Item> updatedFavorites = List.from(state.favorites);
    if (updatedFavorites.contains(item)) {
      updatedFavorites.remove(item);
    } else {
      updatedFavorites.add(item);
    }
    emit(state.copyWith(favorites: updatedFavorites));
  }
}

class FavState extends Equatable {
  final List<Item> favorites;

  const FavState({this.favorites = const []});

  @override
  List<Object> get props => [favorites];

  FavState copyWith({List<Item>? favorites}) {
    return FavState(favorites: favorites ?? this.favorites);
  }
}

class Item {
  final String id;
  final String name;

  Item({required this.id, required this.name});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Item && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode ^ name.hashCode;
}
