#!/bin/sh

# select the "correct" version of xcode
#sudo xcode-select -s /Users/lutherstanton/archives/xcode/xcode_13.4.1/xcode.app

# create archives for 
# * device - AdditionCalculator.framework-iphoneos.xcarchive
# * sim - arm64 and x86_64 architectures
# * x86_64 architecture sim -  AdditionCalculator.framework-iphonesimulator-x86_64.xcarchive
xcodebuild archive -scheme AdditionCalculator -configuration Release -sdk iphonesimulator -archivePath './build/AdditionCalculator.framework-iphonesimulator.xcarchive' SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=YES ONLY_ACTIVE_ARCH=NO
xcodebuild archive -scheme AdditionCalculator -configuration Release -sdk iphoneos -archivePath './build/AdditionCalculator.framework-iphoneos.xcarchive' SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=YES

# create the XCFramework for the generic simulator and iPhone architecture frameworks
xcodebuild -create-xcframework -framework './build/AdditionCalculator.framework-iphonesimulator.xcarchive/Products/Library/Frameworks/AdditionCalculator.framework' -framework './build/AdditionCalculator.framework-iphoneos.xcarchive/Products/Library/Frameworks/AdditionCalculator.framework' -output './build/AdditionCalculator.xcframework'

#sudo xcode-select -s /Applications/xcode.app