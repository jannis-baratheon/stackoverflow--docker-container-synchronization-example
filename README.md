# Docker container synchronization example

This is an example of how to synchronize docker containers, i.e. how to make a container wait until a dependant container starts up.

The idea is that every container opens up a diagnostic port which serves component's status (warming up/running) for other containers to test on and delay their start until the dependant containers are ready.
