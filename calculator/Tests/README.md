# Python Calculator Application

## Overview
This is a simple command-line calculator application built in Python that performs basic arithmetic operations such as addition, subtraction, multiplication, and division.

## Folder Structure
MY_CALCU_PYTHON │ ├── app.py # Main Python file to run the calculator 
├── calculator/ # Calculator logic module │ 
└── operations.py # Functions for calculator operations
├── tests/ # Directory for test cases │ 
 └── test_operations.py # Unit tests for calculator functions 
|── Dockerfile # Docker instructions

## Features
- Addition, subtraction, multiplication, and division operations.
- Error handling for division by zero.
- Unit tests for all calculator functions.

## How to Run

### Using Python
1. Ensure Python 3.x is installed.
2. Clone the repository or download the project.
3. Run the following command to start the application:
   ```bash
   python app.py

## Running Tests
To run the unit tests:
   1. python -m unittest discover tests

## Using Docker
Build the Docker image:
   1. docker build -t my-calculator-app 
Run the container
   2. Run the container


3. **Save the README.md file** after adding content.

### Importance of `README.md`
- **Documentation**: It serves as the first point of contact for anyone looking at your project.
- **Instructions**: It provides setup instructions, usage guidelines, and other important information.
- **Professionalism**: Including a README makes your project more professional, especially when pushing it to GitHub or other repositories.

After creating the `README.md` file, be sure to commit it to your repository and push it to GitHub.
