# Step 1: Specify the base image
FROM python:3.10-slim  # or whatever runtime you're using

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy requirements and install dependencies
COPY requirements.txt .  # Make sure your requirements.txt is in the root
RUN pip install -r requirements.txt

# Step 4: Copy all code into the container
COPY . .

# Step 5: Expose the port the app runs on
EXPOSE 5000  # Adjust if your app runs on a different port

# Step 6: Define the command to run the app
CMD ["python", "app.py"]  # Adjust the command as needed

