echo $TRAVIS_BRANCH;

if [ "$TRAVIS_BRANCH" = "development" ]; then
fastlane test;
fi

if [ "$TRAVIS_BRANCH" = "beta" ]; then
fastlane ios beta;
fi

if [ "$TRAVIS_BRANCH" = "master" ]; then
fastlane ios release;
fi

