---
audience: NadeoLiveServices
url: https://live-services.trackmania.nadeo.live
route: /api/token/leaderboard/group/{groupUid}/map/{mapUid}/surround/{nbBefore}/{nbAfter}
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
        -   name: nbBefore
            type: integer
            description: >
                The number of records to include immediately before the player's.
                Note: values greater than 1 don't give any additional records.
            required: true
            minimum: 0
            maximum: 50
        -   name: nbAfter
            type: integer
            description: >
                The number of records to include immediately after the player's.
                Note: values greater than 1 don't give any additional records.
            required: true
            minimum: 0
            maximum: 50
    query:
        -   name: onlyWorld
            type: boolean
            description: Whether to return only results for `zoneName == 'World'`
            required: false
            default: false
        -   name: score
            type: integer
            description: >
                The player's personal best time in miliseconds. Possibly only used with `groupUid=Personal_Best`. Unknown purpose.
---

Get the player's record and the adjacent records for a given map in a given season over all zones.

Note: There is a special groupUid `Personal_Best` that includes all records set ever.

-----

Example response (`https://live-services.trackmania.nadeo.live/api/token/leaderboard/group/ed0f8dd1-247d-4563-95e2-f8e824dc4c2f/map/tZROO7ZGFV5oSel3hyKrvZ60Xth/surround/0/1?onlyWorld=true`):

```json
{
  "groupUid": "ed0f8dd1-247d-4563-95e2-f8e824dc4c2f",
  "mapUid": "tZROO7ZGFV5oSel3hyKrvZ60Xth",
  "tops": [
    {
      "zoneId": "301e1b69-7e13-11e8-8060-e284abfd2bc4",
      "zoneName": "World",
      "top": [
        {
          "accountId": "0a2d1bc0-4aaa-4374-b2db-3d561bdab1c9",
          "zoneId": "301e309b-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "New South Wales",
          "position": 4264,
          "score": 57051
        },
        {
          "accountId": "45191988-cf45-456a-a0b9-5a34edb3d219",
          "zoneId": "301fb654-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "Seine-Maritime",
          "position": 4265,
          "score": 57065
        }
      ]
    }
  ]
}
```

-----

Example response (`https://live-services.trackmania.nadeo.live/api/token/leaderboard/group/ed0f8dd1-247d-4563-95e2-f8e824dc4c2f/map/tZROO7ZGFV5oSel3hyKrvZ60Xth/surround/50/50`):

```json
{
  "groupUid": "ed0f8dd1-247d-4563-95e2-f8e824dc4c2f",
  "mapUid": "tZROO7ZGFV5oSel3hyKrvZ60Xth",
  "tops": [
    {
      "zoneId": "301e1b69-7e13-11e8-8060-e284abfd2bc4",
      "zoneName": "World",
      "top": [
        {
          "accountId": "d9285580-3905-449d-af7a-88d6489781f8",
          "zoneId": "301f3fa4-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "Costa Rica",
          "position": 4263,
          "score": 57046
        },
        {
          "accountId": "0a2d1bc0-4aaa-4374-b2db-3d561bdab1c9",
          "zoneId": "301e309b-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "New South Wales",
          "position": 4264,
          "score": 57051
        },
        {
          "accountId": "45191988-cf45-456a-a0b9-5a34edb3d219",
          "zoneId": "301fb654-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "Seine-Maritime",
          "position": 4265,
          "score": 57065
        }
      ]
    },
    {
      "zoneId": "301e237a-7e13-11e8-8060-e284abfd2bc4",
      "zoneName": "Oceania",
      "top": [
        {
          "accountId": "67b85852-0495-43ac-9341-7d16b7dc7f2d",
          "zoneId": "301e3683-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "South Australia",
          "position": 46,
          "score": 56448
        },
        {
          "accountId": "0a2d1bc0-4aaa-4374-b2db-3d561bdab1c9",
          "zoneId": "301e309b-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "New South Wales",
          "position": 47,
          "score": 57051
        },
        {
          "accountId": "0286971a-b03d-4060-8a70-85dd064d7f23",
          "zoneId": "301e3b69-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "Victoria",
          "position": 48,
          "score": 57160
        }
      ]
    },
    {
      "zoneId": "301e2dc2-7e13-11e8-8060-e284abfd2bc4",
      "zoneName": "Australia",
      "top": [
        {
          "accountId": "67b85852-0495-43ac-9341-7d16b7dc7f2d",
          "zoneId": "301e3683-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "South Australia",
          "position": 35,
          "score": 56448
        },
        {
          "accountId": "0a2d1bc0-4aaa-4374-b2db-3d561bdab1c9",
          "zoneId": "301e309b-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "New South Wales",
          "position": 36,
          "score": 57051
        },
        {
          "accountId": "0286971a-b03d-4060-8a70-85dd064d7f23",
          "zoneId": "301e3b69-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "Victoria",
          "position": 37,
          "score": 57160
        }
      ]
    },
    {
      "zoneId": "301e309b-7e13-11e8-8060-e284abfd2bc4",
      "zoneName": "New South Wales",
      "top": [
        {
          "accountId": "9ec43b76-73f7-45d3-a935-0a73b3f06b86",
          "zoneId": "301e309b-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "New South Wales",
          "position": 6,
          "score": 50452
        },
        {
          "accountId": "0a2d1bc0-4aaa-4374-b2db-3d561bdab1c9",
          "zoneId": "301e309b-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "New South Wales",
          "position": 7,
          "score": 57051
        },
        {
          "accountId": "902dc2a2-6837-4e86-996b-b3c492a53017",
          "zoneId": "301e309b-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "New South Wales",
          "position": 8,
          "score": 62463
        }
      ]
    }
  ]
}
```

-----

Example errors:

when `nbAfter < 0` and `nbBefore > 50`:
```json
["nbAfter:error-greaterOrEqualThan","nbBefore:error-range"]
```
