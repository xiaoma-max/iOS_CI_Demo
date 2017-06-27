#!/bin/sh

#if [ "${TRAVIS_BRANCH}" = "development" ]; then
#    echo "Testing on a development branch."
#fi

#if [[ "$TRAVIS_PULL_REQUEST" != "false" ]]; then
#echo "This is a pull request. No deployment will be done."
#fi
#if [[ "$TRAVIS_BRANCH" != "master" ]]; then
#echo "Testing on a branch other than master. No deployment will be done."
#fi

if [ "$TRAVIS_BRANCH" = "development" ]; then
echo $TRAVIS_BRANCH;
fastlane test;
#fastlane ios beta;
fi
if [ "$TRAVIS_BRANCH" = "master" ]; then
echo $TRAVIS_BRANCH;
fastlane ios release;
fi

