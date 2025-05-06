# app.py
from flask import Flask

# Create a Flask application instance
app = Flask(__name__)

# Define a route for the root URL '/'
@app.route('/')
def hello_world():
  """
  This function is called when the root URL is accessed.
  It returns the string "Hello, World!".
  """
  return 'Hello, World!'

# This block allows the script to be run directly
if __name__ == '__main__':
  # Run the Flask development server
  # debug=True enables debug mode, which provides helpful error pages
  # and reloads the server automatically on code changes.
  # host='0.0.0.0' makes the server accessible externally (useful in Docker)
  app.run(host='0.0.0.0')

