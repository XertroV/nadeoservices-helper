---
audience: NadeoLiveServices
url: https://live-services.trackmania.nadeo.live
description: Remove a track by its UID from your favorite tracks on Nadeo Services
route: /api/token/map/favorite/{mapUid}/remove
method: POST
parameters:
    path:
        -   name: mapUid
            type: string
            description: The UID of the map
            required: true
            default: ""
---

Remove a track by its UID from your favorite tracks on Nadeo Services.

Example response:

```
Map favorite deleted
```

Example response if a map is unknown:

```json
[
    "map:error-notFound"
]
```

Example response if a map is not on your favorite tracks:

```json
[
    "mapFavorite:error-notFound"
]
```