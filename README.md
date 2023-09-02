# joke_app_BloC_CL-ARCH


## Introduction
Joke App is built upon the principles of Clean Architecture, ensuring the codebase remains clear, maintainable, and scalable.

##Video
[joke.webm](https://github.com/lkquan2303/joke_app_BloC_CL-ARCH/assets/55189723/3ad2956c-859a-4628-a9d3-73591a5e94e8)


## Features
- **Feature 1**: Define and Call API
- ...

## Architecture
This application adheres to the principles of Clean Architecture, comprising three main layers:

- **Presentation Layer**: This layer contains all the UI components and the display logic. It's implemented using Flutter and holds Widgets, Pages, and Blocs or any other state management solution.

- **Domain Layer**: This is the core of the application, containing entities, use cases, and abstract definitions for the repositories. It's the most inner layer and it doesn't depend on any other layer.

- **Data Layer**: Responsible for data retrieval. It can fetch data from the network, local databases, or other sources. It provides concrete implementations for the abstract repositories defined in the Domain layer.


## Installation
To install and run the project locally:

git clone [your-repo-link]
cd project-directory
flutter pub get
flutter run

## Dependencies and Technologies Used
- freezed
- bloc
- mockito
- retrofit
...

## Author
lkquan2303

## License
This project is licensed under the MIT License - see the LICENSE.md file for details.
