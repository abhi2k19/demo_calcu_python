
###---------MULTI STAGE DOCKER-------------------

# First stage: Build the application
FROM python:3.9-slim AS build

# Set the working directory inside the container
WORKDIR /app

# Install any needed dependencies (optional - you don't need it now)
# If you have any dependencies listed in requirements.txt, you can use this....
# RUN pip install --no-cache-dir -r requirements.txt
# COPY requirements.txt .
# RUN pip install --no-cache-dir -r requirements.txt

# Copy the source code
COPY . .

# Second stage: Production runtime environment
FROM python:3.9-slim

WORKDIR /app
COPY --from=build /app /app

# Set the default command to run when the container starts
CMD ["python", "app.py"]