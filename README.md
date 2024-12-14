# SwiftUI People List and News App

This project demonstrates a SwiftUI application that combines two main features:

1. **Displaying a list of people with detailed views.**
2. **Fetching and displaying news articles from the NewsAPI.**

## Features

### 1. People List and Detail View
- **People List**: Displays a list of people loaded from a local JSON file (`json_example.json`).
- **Detail View**: Shows detailed information about the selected person, including their name, gender, age, address, and phone numbers.

### 2. News Fetching
- **NewsAPI Integration**: Fetches articles about a specific topic (`tesla`) using the NewsAPI.
- **Error Handling**: Displays error messages in case of API issues or JSON decoding errors.
- **Loading Indicator**: Tracks the loading state when fetching data.

## Project Structure

### SwiftUI Views
- **`ContentView.swift`**:
  - Displays the list of people.
  - Navigates to the `DetailView` when a person is selected.

- **`DetailView.swift`**:
  - Displays detailed information about a person, including their address and phone numbers.

### Models
- **`Person`**:
  - Represents a person with fields like `firstName`, `surname`, `gender`, `age`, `address`, and `phoneNumbers`.
  - Loads sample data from the bundled `json_example.json` file using a `Bundle` extension.

- **`Address`**:
  - Represents the address of a person.

- **`PhoneNumber`**:
  - Represents a phone number with a `type` and `number`.

- **`Article`**:
  - Represents a news article fetched from the NewsAPI.
  - Includes properties like `source`, `author`, `title`, `description`, and `publishedAt`.

- **`Source`**:
  - Represents the source of a news article.

- **`NewsResponse`**:
  - Represents the API response, containing an array of articles.

### ViewModel
- **`ArticleViewModel`**:
  - Manages the state for fetching articles from the NewsAPI.
  - Tracks `articles`, `isLoading`, and `errorMessage`.
  - Implements the `fetchArticles` method to perform the API request.

## Setup Instructions

### Prerequisites
- Xcode 15 or later.
- A valid NewsAPI key. You can obtain one by signing up at [NewsAPI](https://newsapi.org/).

### Steps to Run the Project
1. Clone this repository.
2. Add the `json_example.json` file to your project. Below is a sample structure:

    ```json
    [
        {
            "firstName": "John",
            "surname": "Doe",
            "gender": "Male",
            "age": 30,
            "address": {
                "streetAddress": "123 Elm Street",
                "city": "Somewhere",
                "state": "CA",
                "postalCode": "90210"
            },
            "phoneNumbers": [
                {"type": "Mobile", "number": "123-456-7890"},
                {"type": "Home", "number": "987-654-3210"}
            ]
        }
    ]
    ```

3. Replace the `apiKey` in `ArticleViewModel` with your NewsAPI key:
    ```swift
    private let apiKey = "your-api-key-here"
    ```

4. Build and run the project using Xcode.

## Usage

### People List
- Open the app to see a list of people.
- Tap on a person to view detailed information.

### News Articles (Optional Integration)
- Use the `ArticleViewModel` to create a new SwiftUI view for displaying articles.
- Ensure you have a valid API key and the internet connection is active.

## Example Output

### People List
- **List View**:
  - Displays names of people (e.g., `John Doe`).
- **Detail View**:
  - Shows:
    - Name: John Doe
    - Gender: Male
    - Age: 30
    - Address:
      - 123 Elm Street
      - Somewhere, CA 90210
    - Phone Numbers:
      - Mobile: 123-456-7890
      - Home: 987-654-3210

### News Articles
- If implemented, displays a list of articles about Tesla.

## Troubleshooting

1. **Crash on startup**:
   - Ensure `json_example.json` is added to the project bundle.

2. **API Key Issues**:
   - Verify that your NewsAPI key is valid and not expired.

3. **JSON Decoding Errors**:
   - Check the structure of `json_example.json` and ensure it matches the expected format.

## License
This project is licensed under the MIT License. See the LICENSE file for details.

