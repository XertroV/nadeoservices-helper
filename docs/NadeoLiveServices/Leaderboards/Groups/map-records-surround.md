---
audience: NadeoLiveServices
url: https://live-services.trackmania.nadeo.live
route: /api/token/leaderboard/group/{groupUid}/map/{mapUid}/top
description: Get map records for a group/season
method: GET
parameters:
    path:
        -   name: groupUid
            type: string
            description: >
                The UID of the group (aka. `seasonUid`). Example: the `.seasonUid` field in [Track of the Day entries](/docs/NadeoLiveServices/Campaigns/track-of-the-day.md).
            required: true
        -   name: mapUid
            type: string
            description: The UID of the map
            required: true
    query:
        -   name: onlyWorld
            type: boolean
            description: Whether to return only results for `zoneName == 'World'`
            required: false
            default: false
        -   name: offset
            type: integer
            description: (Requires `onlyWorld=true`) The offset to start from
            required: false
            default: 0
            minimum: 0
        -   name: length
            type: integer
            description: (Requires `onlyWorld=true`) The number of records to return
            required: false
            default: 5
            minimum: 0
            maximum: 100
        -   name: score
            type: integer
            description: >
                The player's personal best time in miliseconds. Possibly only used with `seasonUid=Personal_Best`. Unknown purpose.
---

Get the top records for a given map in a given season.

Note that if `onlyWorld=false` then `offset` and `length` have no effect.

`seasonUid` Example: see the `.seasonUid` field in [Track of the Day entries](/docs/NadeoLiveServices/Campaigns/track-of-the-day.md)

Note: There is a special seasonUid `Personal_Best` that includes all records set ever.

-----

Example response (`/api/token/leaderboard/group/ed0f8dd1-247d-4563-95e2-f8e824dc4c2f/map/tZROO7ZGFV5oSel3hyKrvZ60Xth/top?onlyWorld=true&length=3&offset=92`):

```json

```

-----

Example response (`/api/token/leaderboard/group/Personal_Best/map/tZROO7ZGFV5oSel3hyKrvZ60Xth/top?onlyWorld=true&length=2`):

```json

```

-----

Example response (`/api/token/leaderboard/group/ed0f8dd1-247d-4563-95e2-f8e824dc4c2f/map/tZROO7ZGFV5oSel3hyKrvZ60Xth/top?length=1&offset=92`):

```json
```

-----

Example errors:

when `length < 0` and/or `offset < 0`:
```json
["length:error-greaterOrEqualThan","offset:error-greaterOrEqualThan"]
```
