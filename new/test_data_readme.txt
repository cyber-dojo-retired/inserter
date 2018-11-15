
These IDs include some which have an l (ell) in them.

Extracted from the live storer using...

docker exec cyber-dojo-storer tar -c -f - -C /usr/src/cyber-dojo/katas 9f
   | tar -x -f - -C .

which created...

9f/8TeZMZAq/...
9f/67Q9PyZm/...

Then create tgz files for each of these dirs...

tar -czvf 9f8TeZMZAq.tgz 9f/8TeZMZAq
tar -czvf 9f67Q9PyZm.tgz 9f/67Q9PyZm
