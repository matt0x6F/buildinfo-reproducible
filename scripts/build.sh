#!/bin/bash

TRG_PKG="github.com/matt0x6f/buildinfo-repeatable/internal"
CommitHash=$(git describe | cut -d- -f3)
GoVersion=$(go version | cut -c 14- | cut -d' ' -f1)
GitTag=$(git describe | cut -d- -f1)

FLAG="-X $TRG_PKG.CommitHash=$CommitHash"
FLAG="$FLAG -X $TRG_PKG.GoVersion=$GoVersion"
FLAG="$FLAG -X $TRG_PKG.GitTag=$GitTag"

mkdir -p tmp/build

go build -o tmp/build/buildinfo -v -ldflags "$FLAG" 