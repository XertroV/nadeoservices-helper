---
audience: NadeoLiveServices
url: https://live-services.trackmania.nadeo.live
description: Add a track by its UID to your favorite tracks on Nadeo Services
route: /api/token/map/favorite/{mapUid}/add
method: POST
parameters:
    path:
        -   name: mapUid
            type: string
            description: The UID of the map
            required: true
            default: ""
---

Adds a track by its UID to your favorite tracks on Nadeo Services.

Example response:

```
Map favorite created
```

Example response if a map is unknown:

```json
[
    "map:error-notFound"
]
```