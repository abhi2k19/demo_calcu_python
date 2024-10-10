# Python Calculator Application

## Overview
This is a simple command-line calculator application built in Python that performs basic arithmetic operations.
 Using "AWS CodeBuild", "AWS CodePipeline", and "AWS CodeDeploy" we are performing "Continuous Integration" and "Continuous Delivery".
## Working...
> Here i have provided Both jenkins file(if you want to go with it) and buildspec.yml file (AWS CodeBuild), appspec.yml file (AWS CodeDeploy).
> For Code Deploy stage to complete we have added "start_container.sh" and "stop_container.sh"--
> we included a "Multistage Docker File".

## Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/abhi2k19/demo_calcu_python.git

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


