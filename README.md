# homebrew-cli

The IvoNet HomeBrew Tap room for some of my CLI tools.

This taproom will probably grow over time :-)
I will also reserve the right to remove scripts if I want to.

## Prerequisites

* [Brew](https://brew.sh) needs to be installed

## Usage

Add the tap room to your taps

```bash
brew tap ivonet/cli
```

After that just use the normal `install` commands
e.g. `brew install menv`


## Beers to tap

| brewed beer        | description                                              |
|:-------------------|:---------------------------------------------------------|
| ivo2u              | cli for creating ivo2u tiny urls                         |
| ivonet-docker      | some docker convenience scripts                          |
| ivonet-media       | some media manipulating commands (uses docker)           |
| menv               | maven Environment setter - developer tool                |
| drawio             | drawIO docker script                                     |
| reset-wifi         | turns the Wi-Fi off and on again                         |

## ivonet-common

| command            | description                                              |
|:-------------------|:---------------------------------------------------------|
| git_dump_all_versions_of_a_file | Dumps all the versions of a specific file to disk |
| sshh               | ssh into server without having to save to known_hosts    |

## ivonet-docker

| command            | description                                              |
|:-------------------|:---------------------------------------------------------|
| dig                | docker images grep                                       |
| docker-make        | creates a Makefile in the current folder                 |
| docker-project     | generates a standard ivonet docker starter project       |
| docker-ui-project  | generates a standard ivonet docker ui starter project    |

## ivonet-media

| command            | description                                              |
|:-------------------|:---------------------------------------------------------|
| m4b                | create an audiobook from mp3                             |
| m4v                | convert movies to m4v format                             |
| mkvmerge           | merge mkv files                                          |
| mkvinfo            | get Metadata information on a mkv file                   |
| mkv2x264           | convert x265 to x264 for older devices                   |
| mkv-rm-tracks      | remove unwanted tracks from an mkv envelope              |
| aif2mp3            | convert aif files to mp3                                 |

# Uninstall the tap

```bash
brew untap ivonet/cli
```

# License

    Copyright 2020 (c) Ivo Woltring

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

# Disclaimer

The scripts in this Tap room are mainly meant for myself and have been tested only on my MacBook Pro.
Some scripts might only be interesting to me but sometimes people ask me if they can have my
scripts too. Please use what you want but do be careful and you might want to look at the scripts first.

I do my utmost to make the scripts as generic as possible, but sometimes I make mistakes :-)

By using the scripts you are agreeing to the License.

