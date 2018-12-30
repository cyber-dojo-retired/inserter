
Inserts named test-data sets into a named data-container.

Used to test
[storer](https://github.com/cyber-dojo/storer)
and
[porter](https://github.com/cyber-dojo/porter)
services.

For example:
```bash
local cid=$(docker run \
  --detach \
  --interactive \
  --volumes-from my-stub-data-container \
   cyberdojo/storer sh)

docker run \
  --rm \
  --volume /var/run/docker.sock:/var/run/docker.sock \
    cyberdojo/inserter \
      ${cid} `# where to insert data-sets` \
      02 red `# data-sets to insert`
```
