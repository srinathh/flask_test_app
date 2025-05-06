# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define environment variable for Flask
ENV FLASK_APP=app.py

# Run the application when the container launches
# Using 'flask run' command
CMD ["python", "app.py"]

# Alternative CMD using gunicorn (a production-ready WSGI server)
# You would need to add gunicorn to requirements.txt for this
# CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:5000", "app:app"]

