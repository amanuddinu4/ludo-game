# Use a lightweight Python image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the application code into the container
COPY run.py ./
COPY ludo ./ludo

# Install necessary Python dependencies
RUN pip install pygame

# Command to start the game
CMD ["python", "run.py"]
