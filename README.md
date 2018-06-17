# mdzhang/dsui

[![mdzhang/dsui][docker-pulls-image]][docker-hub-url] [![mdzhang/dsui][docker-stars-image]][docker-hub-url] [![mdzhang/dsui][docker-size-image]][docker-hub-url] [![mdzhang/dsui][docker-layers-image]][docker-hub-url]



A docker image to run [dsui](https://github.com/streamrail/dsui), a UI for the Google Cloud Datastore emulator.

# How to use this image

```console
$ docker run -p 3000:3000 -e DATASTORE_PROJECT_ID=my-proj-id mdzhang/dsui
```

Then you can hit `http://localhost:3000` in your browser.

# Configuration

Environment variables are passed to the `run` command for configuring the `dsui` UI.

	Name                             |           Default | Description
	-------------------------------- | ----------------- | ------------
	DATASTORE_PROJECT_ID             |           'dev-0' | Same project id used by emulator/your datastore project
	DATASTORE_HOST                   |  'localhost:8081' | Emulator host

[docker-hub-url]: https://hub.docker.com/r/mdzhang/dsui
[docker-layers-image]: https://img.shields.io/imagelayers/layers/mdzhang/dsui/latest.svg?style=flat-square
[docker-pulls-image]: https://img.shields.io/docker/pulls/mdzhang/dsui.svg?style=flat-square
[docker-size-image]: https://img.shields.io/imagelayers/image-size/mdzhang/dsui/latest.svg?style=flat-square
[docker-stars-image]: https://img.shields.io/docker/stars/mdzhang/dsui.svg?style=flat-square
