part of 'theme_bloc.dart';

abstract class ThemeEvent extends Equatable {
  const ThemeEvent();

  @override
  List<Object> get props => [];
}

class ChangeThemeEvent extends ThemeEvent {
  final int randInt;

  ChangeThemeEvent({required this.randInt});

  @override
  String toString() => 'ChangeThemeEvent(randint: $randInt)';

  @override
  List<Object> get props => [randInt];
}
