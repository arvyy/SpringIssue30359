#!/bin/bash

for i in {1..2}
do
    mkdir "src/main/java/com/example/demo/foo${i}"
    sed "s/INDEX/${i}/g" tpl/AnotherService.java > "src/main/java/com/example/demo/foo${i}/AnotherService${i}.java"
    sed "s/INDEX/${i}/g" tpl/Config.java > "src/main/java/com/example/demo/foo${i}/Config${i}.java"
    sed "s/INDEX/${i}/g" tpl/Service.java > "src/main/java/com/example/demo/foo${i}/Service${i}.java"
    sed "s/INDEX/${i}/g" tpl/ServiceImpl.java > "src/main/java/com/example/demo/foo${i}/ServiceImpl${i}.java"
    sed "s/INDEX/${i}/g" tpl/ServiceUser.java > "src/main/java/com/example/demo/foo${i}/ServiceUser${i}.java"
done
