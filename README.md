# GeoDB Base Docker Image

Welcome to the geodb docker image repostory.

The Docker image can be found at [Docker Hub](https://hub.docker.com/r/lacmta/geodb-base).

 This image is based on the official python:3.8-slim-buster image and with the following libraries installed:

- gdal
- geopandas
- pandas
- postgresql
- psycopg2
- sqlalchemy

It is intended to be used as a base image for other images that need to use the above libraries.

## Versions

Currently following versions are available:
- base: latest

This is the base image for all other images. It contains the above libraries for Python 3.8.

## Usage

To use this image, you can use the following Dockerfile:

```dockerfile
FROM lacmta/geodb-base:latest
```

You can also pull the image directly from Docker Hub and run it:

```bash
docker run -it lacmta/geodb-base:latest
```


