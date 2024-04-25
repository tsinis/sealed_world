# Use latest stable channel SDK.
FROM dart:stable AS build

# Resolve app dependencies.
WORKDIR /packages/sealed_languages/
RUN dart pub get
