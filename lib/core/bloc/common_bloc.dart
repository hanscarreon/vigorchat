// abstract class CommonState extends Equatable
//     implements CreatePostState, FetchPostState {
//   const CommonState();

//   @override
//   List<Object> get props => [];
// }

// /// Common Initial state for all Blocs
// class InitialState extends CommonState {
//   const InitialState();
// }

// /// Common Loading state for all Blocs
// class LoadingState extends CommonState {
//   const LoadingState();
// }

// /// Common Error state for all Blocs
// class ErrorState extends CommonState {
//   const ErrorState(this.error);

//   final String error;

//   @override
//   List<Object> get props => [error];
// }

// /// Common Empty state for all Blocs with list or Data retrive
// class EmptyState extends CommonState {
//   const EmptyState();
// }
