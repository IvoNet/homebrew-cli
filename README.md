# homebrew-ivonet

The IvoNet HomeBrew Tap room for some of my CLI tools.

## Prerequisites

* [Brew](https://brew.sh) needs to be installed

## Usage

Add the tap room to your taps

```bash
brew tap ivonet/ivonet
```

After that just use the normal install commands
e.g. `brew install menv`


## Beers to tap

| brew      | description                     |
|:----------|:--------------------------------|
| ivo2u | cli for creating ivo2u tiny urls    |
| ivonet-docker | some docker convenience scripts |
| ivonet-media  | some media manipulating commands (uses docker) |
| menv | Maven Environment setter - developer tool |
| drawio | DrawIO docker script |

## ivonet-docker

| commands  | description                     |
|:----------|:--------------------------------|
| dig | Docker images grep    |
| docker-make | Creates a Makefile in the current folder |
| docker-project | Generates a standard ivonet docker project |
| docker-ui-project | Generates a standard ivonet docker ui project |

## ivonet-media

| commands  | description                     |
|:----------|:--------------------------------|
| m4b | Create Audiobook from mp3 |
| m4v | Convert movies to m4v format |
| mkvmerge | Merge mkv files |
| mkvinfo | Get Metadata information on a mkv file |
| mkv2x264 | Convert x265 to x264 for older devices |
| mkv-rm-tracks | remove unwanted tracks from an mkv envelope |

