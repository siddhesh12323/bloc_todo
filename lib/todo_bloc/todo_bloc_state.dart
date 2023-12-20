part of 'todo_bloc_bloc.dart';

sealed class TodoBlocState extends Equatable {
  const TodoBlocState();
  
  @override
  List<Object> get props => [];
}

final class TodoBlocInitial extends TodoBlocState {}
