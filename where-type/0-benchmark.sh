#!/bin/bash

echo 'dart-linter cannot rewrite. this is just a benchmark'

cd linter
RESULT=`time dartanalyzer --options analysis_options.yaml test/rules/prefer_iterable_whereType.dart`
echo $RESULT | grep "whereType"

time ~/rooibos-future/main -d test/rules -filter whereType.dart -templates `echo ~/rooibos-future/catalogue/dart/dart_style/use-where-type* | tr ' ' ','`

git checkout -- .
cd ..
