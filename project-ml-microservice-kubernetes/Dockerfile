FROM python:3.7.3-stretch

## Step 1:
# Create a working directory
RUN mkdir /app
## Step 2:
# Copy source code to working directory
WORKDIR /app
COPY . /app
## Step 3:
# hadolint ignore=DL3013
RUN apt-get update && \
    apt-get install -y --no-install-recommends libblas-dev liblapack-dev libatlas-base-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    make install
## Step 4:
# Expose port 80
EXPOSE 80
## Step 5:
# Run app.py at container launch
CMD ["python", "app.py"]