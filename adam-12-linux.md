Replace all single quotes with double: ```sed -i "" "s/\'/\"/g" sed_practice.txt```
The empty quotes after -i I think is to specify that you want it done in the original file and not make another file.

When working with replacing quotes you have to escape them, and have to surround the sed string with double quotes not single.  This will not work: ```sed -i '' 's/\"/\'/g' sed_practice.txt```

You can replace all files in the sed_prac directory from the current directory with: ```sed -i "" "s/\'/\"/g" ./sed_prac/*```

Also, you can use this to output the filenames that are ranked by the number of lines in them:
```
find ./app -name *.rb | xargs wc -l | sort
```
