#!/usr/bin/env bash
set -e

pushd rust-android/
docker build -t appaquet/rust-android:latest .
docker push appaquet/rust-android:latest
popd

docker build -t appaquet/cargo-apk:latest .
docker push appaquet/cargo-apk:latest
