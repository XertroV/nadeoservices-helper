# NadeoServices Helper
A documentation, an API, a website, and a Openplanet plugin to get started using [NadeoServices](https://openplanet.dev/docs/reference/nadeoservices).

# Getting started

The NadeoServices API provides an easy interface into Trackmania's online services authentication.

## Why use NadeoServices?

It is important to depend on the NadeoServices plugin if you intend to communicate with Nadeo's API in plugins! This is because authentication tokens aren't easy to reliably get in scripts, and multiple plugins trying to access the same token can cause the game to start behaving bad. The NadeoServices plugin takes care of cleanly accessing authentication tokens from the game and creating HTTP requests plugins.

## Audiences

Nadeo's API has several types of tokens with different audiences. The following audiences exist:

- `NadeoLiveServices` - Live API
- `NadeoClubServices` - Club API, Competition API, Matchmaking API
- `NadeoServices` - Core API

Note that you can't actually request the last audience with the NadeoServices dependency for Openplanet, and you don't need to - the game's API itself provides functions to access data on the core API.

# What contains this repository?

This repository contains a [documentation](/docs/) for each common routes of the NadeoServices API, plus a [JSON API](/api/) to access the documentation for other applications [such as the Openplanet plugin](/plugin/).

# Using NadeoServices

## In Openplanet plugins

Include `NadeoServices` in your dependencies on your info.toml file.

Follow [this documentation](https://openplanet.dev/docs/reference/nadeoservices) on how to use this dependency.

## Outside Openplanet

Outside Openplanet (trackmania.io for example), [this Gist](https://gist.github.com/codecat/4dfd3719e1f8d9e5ef439d639abe0de4) contains information about authenticating with Nadeo's API externally.

# Contributions
<div align="center">

![Alt](https://repobeats.axiom.co/api/embed/ed1dd0d62eaccc5e33f471c15be04e78b62390f4.svg "Repobeats analytics image")

</div>