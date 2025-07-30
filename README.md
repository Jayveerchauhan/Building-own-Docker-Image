# 🐳 Build Your Own Docker Image – Step-by-Step Guide

This guide helps you build your **own Docker image** using a simple Python file and a Dockerfile.  
Everything is explained step-by-step — perfect for beginners!

---

## ✅ Step 1: Create Your Project Folder

Open your terminal and run:

```bash
mkdir my-docker-app
cd my-docker-app

```
## Step 2: Create Your Python File
Create a file named app.py inside your folder and add this code:
```bash
# app.py
print(' Hello I am Jayveer chauhan')

```
## 🧱 Step 3: Create a Dockerfile
Now create a file named Dockerfile (no extension) and paste the following content:
```bash
# Use a small Python base image
FROM python:3.9-slim

# Set working directory inside the container
WORKDIR /app

# Copy your code into the container
COPY . /app

# Run the Python script
CMD ["python", "app.py"]

```
## 🛠️ Step 4: Build the Docker Image
Run the following command in your terminal (make sure you're still in the project folder):
```bash
docker build -t jayveer-image .
```
🧠 What this does:

-docker build: tells Docker to create an image

-t jayveer-image: gives your image a name

.: means "use the Dockerfile in the current directory"

## ▶️ Step 5: Run Your Docker Container
Now run the image you just built:
```bash
docker run jayveer-image
```
## ✅ Step 6: What You Should See
```
 Hello I am Jayveer chauhan


