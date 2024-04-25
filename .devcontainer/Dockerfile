# Use latest stable channel SDK.
FROM dart:stable AS build

# Resolve app dependencies.
WORKDIR /packages
COPY pubspec.* ./
RUN dart pub get
