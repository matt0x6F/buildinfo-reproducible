# Build info with reproducible builds

This repository is an example of how to do reproducible builds with build information. Tracking build information in a binary is incredibly useful if you use or maintain software that releases at a frequent cadence. I've often found that places I've worked have a deployment tracking system but the SHAs of that system don't directly tie back to a binary. While the deployment artifact SHA is useful to know because there's a potential many to one relationship between deploy artifacts and binaries, it can be hard to trace back.

## Background

This repository is setup with 1 commit and 1 annotated tag on that commit.

The git commit I use references annotated tags. Annotated tags are what you get when you do a release on GitHub, they have something akin to a commit message attached to them. If you wanted unannotated tags for some reason you'd need to change the script.

## Processes

1. Run `./scripts/build.sh`
2. Rename the resulting binary (`buildinfo`) to something like `buildinfo-old`
3. Run `./scripts/build.sh`
4. Compare the binaries on https://try.diffoscope.org/

## Things to consider about reproducibility

Including dates and times in build information break reproducibility. Seems like a no-brainer to some but is a total "aha" to others. In fact, all non-immutable information about a particular build should be omitted.