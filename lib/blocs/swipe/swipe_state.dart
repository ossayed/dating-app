
part of 'swipe_bloc.dart';

abstract class SwipeState extends Equatable {
  const SwipeState();
  
  @override
  List<Object> get props => [];
}

class SwipeError extends SwipeState {}

class SwipeLoading extends SwipeState {}

class SwipeLoaded extends SwipeState{
  final List<User> users;
  
  const SwipeLoaded({
    required this.users
  });

  @override
  List<Object> get props => [users];
}



