FROM python:3.7.11-stretch

## Step 1:
# Create a working directory
WORKDIR /app

## Step 2:
# Copy source code to working directory
COPY app.py .
COPY requirements.txt .
COPY model_data /app/model_data

## Step 3:
# Install packages from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

## Step 4:
EXPOSE 5001
## Step 5:
# Run app.py at container launch
CMD [ "python", "app.py" ]

