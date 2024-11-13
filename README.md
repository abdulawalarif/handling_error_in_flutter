# Network Request Error Handling in Flutter project

## A Flutter project focused on error handling for network requests when fetching data from the REST API.

This project demonstrates how to manage network requests, handle errors, and display informative error messages when fetching data from an API. The project does not include a backend service but utilizes the `jsonplaceholder.typicode.com` API as a mock data source. It provides a clean user interface to display user data with error handling mechanisms in place.

## Features

This project is designed to be a foundation for handling network requests and errors in Flutter applications. Features include:

- Fetching user data from a mock API.
- Error handling with the dartz package.
- Displaying error messages to the user when the network request fails.
- Clean and reusable components for error display.


<a><img src="demo/one.jpg" width="295"></a>
<a><img src="demo/tow.jpg" width="300"></a>


## File stracture

    ├── lib
    │   ├── main.dart
    │   ├── erro_widget.dart
    │   ├── network_request.dart
    │   ├── user_list_screen.dart
    │   ├── user_model.dart
    
    
## File Descriptions

* **main.dart:** Entry point of the application.
* **error_widget.dart:** Custom widget for displaying error messages.
* **network_request.dart:** Handles the network request logic and error handling.
* **user_list_screen.dart:** Displays the list of users and error messages if loading fails.
* **user_model.dart:** Defines the User data model.

## Run Locally
To run this project locally, follow these steps:


1. Clone the project

```bash
  git clone https://github.com/abdulawalarif/handling_error_in_flutter.git
```

2. Navigate to the project directory

```bash
  cd handling_error_in_flutter
```

3. Install dependencies

```bash
  flutter pub get
```

4. Connect a physical device or start a virtual device on your machine

```bash
  flutter run
```

## Customizing the Project

To modify this project for your own use, update the FetchNetworkData class to handle your specific API and implement custom error messages. You can also enhance error handling by adding retry logic or caching, depending on your needs.

## Reporting Bugs or Requesting Features?

If you found an issue or would like to submit an improvement to this project,
please submit an issue using the issues tab above. If you would like to submit a PR with a fix, reference the issue you created!

## Known Issues and Future Work

- Enhanced error messages for different types of network errors.
- Retry mechanism for failed requests.

## Author
- [@abdulawalarif](https://github.com/abdulawalarif)

## License
The MIT License (MIT). Please view the [License](LICENSE) File for more information.
