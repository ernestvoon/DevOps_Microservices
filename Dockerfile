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
    apt-get install -y --no-install-recommends libblas-dev=3.7.0-2 liblapack-dev=3.7.0-2 libatlas-base-dev=3.10.3-1 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    make install
## Step 4:
# Expose port 80
EXPOSE 80
## Step 5:
# Run app.py at container launch
CMD ["python", "app.py"]