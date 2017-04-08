# Docker container synchronization example

This is an example of how to synchronize docker containers, i.e. how to make some containers wait for dependant containers to start.

The idea is that every container opens up a diagnostic port which serves component's status (warming up/running). The dependant containers can then delay their start until the server is ready.
