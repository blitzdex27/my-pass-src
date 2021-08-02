# My Dummy Password manager

This uses [`pass`](https://www.passwordstore.org/), the standard unix password manager, and [`GnuPG`](https://gnupg.org/), a complete and free implementation of the OpenPGP standard as defined by RFC4880 (also known as PGP).

## How to use

Run my [`devtv`](https://hub.docker.com/repository/docker/blitzdex27/devtv) image from docker hub registry.

```
docker run --rm blitzdex27/devtv pass
```

You will see my password tree tags.

```
Password Store
└── DevTV
    ├── 1. Computer Science Principles
    ...
    └── LiL
        ├── 001 - Docker
        ...
```

Specify the password you want to see:

```
docker run --rm blitzdex27/devtv pass DevTV/"1. Computer Science Principles"
```

Then it will ask for my passphrase, of course I won't put it here. Event if you managed to guess it, these passwords are only used for my video archive.

## How to update

To update

```
docker run -ti blitzdex27/devtv bash
```

Make some changes. Then save the image

```bash
# Get the ID of last container that exited
docker -ls
# Commit the changes
docker commit CONTAINER blitzdex27/devtv:1.0X
```

Push to registry

```
docker login
docker push blitzdex27/devtv:1.0X
```

## Done!

This also serves as a note to myself, incase I forgot how to use it.
