#!/bin/bash

SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
ZIP="${SCRIPTPATH}/components.zip"

printf "enter a project name: "
read dirName

## Initialize the app
yarn create react-app $dirName --template typescript

## Install the necessary dependencies
yarn add sass react-router-dom react-redux
yarn add --dev @reduxjs/toolkit

## folder cleaning
rm -f ./$dirName/src/*

## Create the necessary directories
unzip -d ./$dirName/ $ZIP

## Initialize git and create the initial commit
git init
git add .
git commit -m "Let's Rock 🤘"

## run app
cd ./$dirName
yarn start

printf "🚀 Done 🚀"
