# Contributing for NadeoServices Helper

Here's all you need to know to contribute to the NadeoServices Helper project.

The NadeoServices Helper project is a collection of documentation, API, and other tools to help you get started using Nadeo's API.

# Docs

Each route from the Nadeo API is documented by each files, in the [docs folder](/docs/).

Each file is separated in categories with folders, for example if I have a route for getting my favorite tracks with the audience `NadeoLiveServices`, then it shoud be on `docs/NadeoLiveServices/Tracks/Favorites/get-favorites.md`

It must be in a Markdown (.md) file format and must contain this following data:

## 1. A metadata section

The metadata section must contains a short `description`, the `audience`, the base `url`, the `route`, the `method` and the `parameters`. This should be in YAML format.

```yaml
---
audience: NadeoLiveServices
url: https://live-services.trackmania.nadeo.live
description: Get your favorite tracks on Nadeo Services
route: /api/token/map/favorite
method: GET
parameters:
    query:
        -   name: offset
            type: integer
            description: The offset to start from
            required: false
            default: 0
        -   name: limit
            type: integer
            description: The maximum number of tracks to return
            required: false
            minimum: 1
            maximum: 100
        -   name: sort
            type: string
            description: The sort order of the tracks
            required: false
            default: "date"
            enum:
                - "date"
                - "name"
        -   name: order
            type: string
            description: The order of the tracks
            required: false
            default: "desc"
            enum:
                - "asc"
                - "desc"
        -   name: mapType
            type: string
            description: The map type filter
            required: false
            enum:
                - "TrackMania\\TM_Race"
        -   name: playable
            type: integer
            description: Whether the map is validated and playable
            required: false
            enum:
                - 0
                - 1
---
```

***The `parameters` section***

This section is a object that must contains 2 common keys: `query` and `path`. *The `body` key is unsupported to use and **must be in the documentation description**.*

Those keys are arrays of objects that must contains the following keys:
-  `name`: The name of the parameter
-  `type`: The type of the parameter (`string`, `integer` or `boolean`)
-  `description`: The description of the parameter
-  `required`: Whether the parameter is required or not
-  `default`: The default value of the parameter
-  `enum`: An array of possible values for the parameter
-  `minimum`: The minimum value of the parameter (if type is `integer`)
-  `maximum`: The maximum value of the parameter (if type is `integer`)

(note: this can be subject to change later)

## 2. The full description of the route

This description (in Markdown format) must contains the full description of the route, with a example response, and a example error response.

If your route requires a body to send (see the `body` key in the `parameters` section), then you must add a `body` section to the documentation, upper the example response.

Example:

```json
Example for ...

Body:

// Add here the opening code block tag for json (```json)
{
    "listPlayer": [
        {
            "accountId": "da4642f9-6acf-43fe-88b6-b120ff1308ba",
        }
    ]
}
// Closing tag (```)

Response:

// Opening code block tag for json (```json)
{
    "hello": "world"
}
// Closing tag (```)
```

# Openplanet Plugin

The Openplanet plugin is still in its creation phase, you might not contributing at the moment.

# JSON API / Builder script

This API is generated using Node.js and Github Actions.

If you want making changes to the JSON, you might making changes to the builder script [here](/script/index.js)