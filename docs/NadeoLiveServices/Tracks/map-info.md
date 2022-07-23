---
audience: NadeoLiveServices
url: https://live-services.trackmania.nadeo.live
description: Get a map info on Nadeo Services
route: /api/token/map/{mapUid}
method: GET
parameters:
    path:
        -   name: mapUid
            type: string
            description: The UID of the map
            required: true
            default: ""
---

Check if a given track by its UID is available on Nadeo Services and gives its map infos.

Example response for the track [MIDNIGHT METROPOLIS by htimh](https://trackmania.io/#/leaderboard/QleO8OiNAkIXrZs6r0YLSrLBjEi):

```json
{
    "uid": "QleO8OiNAkIXrZs6r0YLSrLBjEi",
    "mapId": "606e4e16-f1d6-467c-9859-f1837a452166",
    "name": "MIDNIGHT METROPOLIS",
    "author": "144fce06-9b90-4af9-a5b0-9148bcc0566f",
    "submitter": "144fce06-9b90-4af9-a5b0-9148bcc0566f",
    "authorTime": 55910,
    "goldTime": 60000,
    "silverTime": 68000,
    "bronzeTime": 84000,
    "nbLaps": 0,
    "valid": false,
    "downloadUrl": "https://prod.trackmania.core.nadeo.online/storageObjects/9c20aff3-2046-4d7c-aa9b-52617d8d99e2",
    "thumbnailUrl": "https://prod.trackmania.core.nadeo.online/storageObjects/4889bf39-a4f3-40b2-a582-9fa926e41930.jpg",
    "uploadTimestamp": 1631578171,
    "updateTimestamp": 1658421115,
    "fileSize": null,
    "public": false,
    "favorite": false,
    "playable": true,
    "mapStyle": "TrackMania\\TM_Race",
    "mapType": "TrackMania\\TM_Race",
    "collectionName": "Stadium"
}
```

Example response if any track does not exists:

```json
[
    "map:error-notFound"
]
```

Notes: be careful to check the response type; a valid track will return a object, **but a invalid track will return an array with a string in it.**