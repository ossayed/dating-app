import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:please/models/user_model.dart';
part 'swipe_event.dart';
part 'swipe_state.dart';

class SwipeBloc extends Bloc<SwipeEvent, SwipeState> {
  SwipeBloc() : super(SwipeLoading()) {
    
    @override
    Stream<SwipeState> mapEventToState(
      SwipeEvent event,
    ) async* {
     if(event is LoadUserEvent){
      yield* _mapLoadUsersToState(event);
      }
    if(event is SwipeLeftEvent){
      yield*  _mapSwipeLeftState(event, state);
      }
    if(event is SwipeRightEvent){
      yield* _mapSwipeRightState(event, state);
      }
    }
  }

  Stream<SwipeState> _mapLoadUsersToState(LoadUserEvent event) async*{
    yield SwipeLoaded(users: event.users);

  }
  
  Stream<SwipeState> _mapSwipeLeftState(SwipeLeftEvent event, SwipeState state) async*{
    if(state is SwipeLoaded){
      try{
        yield SwipeLoaded(users: List.from(state.users)..remove(event.user));
    }
      catch(e){}

    }
  }

  Stream<SwipeState> _mapSwipeRightState(SwipeRightEvent event, SwipeState state) async*{
    if(state is SwipeLoaded)
      try{  
        yield SwipeLoaded(users: List.from(state.users)..remove(event.user));
    }
      catch(e){}
  }
}
