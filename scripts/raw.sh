#!/bin/bash

# Created by sromku with ☕
package=com.sromku.sample.runtests
rawTests=$1

adb shell am instrument -w -r -e log true -e package $package.all -e listener $package.AnnotationsTestPrinter $package.test/android.support.test.runner.AndroidJUnitRunner > $rawTests