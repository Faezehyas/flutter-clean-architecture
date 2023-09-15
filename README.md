# Flutter Clean Architecture

Flutter Clean Architecture is a demonstration of how to implement the Clean Architecture pattern in a Flutter application. The project showcases the separation of concerns, maintainability, and scalability.

## Features

- **User Details**: Fetch and display user details from a remote API.
  
## Structure

- **Entry Point**: [`main.dart`](https://github.com/Faezehyas/flutter-clean-architecture/blob/main/lib/main.dart) - Initializes the application, sets up dependency injection, and defines the main app theme and routing.
  
- **Routing and Configuration**:
  - [`router.dart`](https://github.com/Faezehyas/flutter-clean-architecture/blob/main/lib/config/router.dart) - Defines the app's routing logic.
  - [`routes.dart`](https://github.com/Faezehyas/flutter-clean-architecture/blob/main/lib/config/routes.dart) - Lists the named routes used in the application.
  
- **Core**:
  - [`service_locator.dart`](https://github.com/Faezehyas/flutter-clean-architecture/blob/main/lib/core/dependency_injection/service_locator.dart) - Sets up dependency injection using GetIt.
  - [`constants.dart`](https://github.com/Faezehyas/flutter-clean-architecture/blob/main/lib/core/utils/constants.dart) - Contains constants used throughout the application.
  - [`request.dart`](https://github.com/Faezehyas/flutter-clean-architecture/blob/main/lib/core/utils/request.dart) - Utility for making HTTP requests using Dio.
  
- **User Details Feature**:
  - **BLoC**:
    - [`user_cubit.dart`](https://github.com/Faezehyas/flutter-clean-architecture/blob/main/lib/features/user_details/blocs/user_cubit.dart) - Manages the state and business logic for user details.
    - [`user_state.dart`](https://github.com/Faezehyas/flutter-clean-architecture/blob/main/lib/features/user_details/blocs/user_state.dart) - Defines the various states for the user details feature.
  - **Data**:
    - [`user_model.dart`](https://github.com/Faezehyas/flutter-clean-architecture/blob/main/lib/features/user_details/data/models/user_model.dart) - Data model for user details.
    - [`user_repository_impl.dart`](https://github.com/Faezehyas/flutter-clean-architecture/blob/main/lib/features/user_details/data/repositories/user_repository_impl.dart) - Implementation of the user repository.
    - [`user_remote_data_source.dart`](https://github.com/Faezehyas/flutter-clean-architecture/blob/main/lib/features/user_details/data/source/remote/user_remote_data_source.dart) - Remote data source for fetching user details.
  - **Domain**:
    - [`user_entity.dart`](https://github.com/Faezehyas/flutter-clean-architecture/blob/main/lib/features/user_details/domain/entities/user_entity.dart) - Domain entity for user details.
    - [`user_repository.dart`](https://github.com/Faezehyas/flutter-clean-architecture/blob/main/lib/features/user_details/domain/repositories/user_repository.dart) - Abstract definition of the user repository.
    - [`get_user_details.dart`](https://github.com/Faezehyas/flutter-clean-architecture/blob/main/lib/features/user_details/domain/usecases/get_user_details.dart) - Use case for fetching user details.
  - **Presentation**:
    - [`user_details_screen.dart`](https://github.com/Faezehyas/flutter-clean-architecture/blob/main/lib/features/user_details/presentation/screens/user_details_screen.dart) - Screen for displaying user details.
    - [`user_details_widget.dart`](https://github.com/Faezehyas/flutter-clean-architecture/blob/main/lib/features/user_details/presentation/widgets/user_details_widget.dart) - Widget for rendering user details.
    - [`user_details_theme.dart`](https://github.com/Faezehyas/flutter-clean-architecture/blob/main/lib/features/user_details/presentation/themes/user_details_theme.dart) - Theme data specific to the user details feature.
  
- **Shared**:
  - [`app_theme.dart`](https://github.com/Faezehyas/flutter-clean-architecture/blob/main/lib/shared/themes/app_theme.dart) - Global theme data for the application.

## Running the Project

To run the project, use the command:  
flutter run -d chrome
