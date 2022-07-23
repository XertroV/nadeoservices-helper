---
audience: NadeoLiveServices
url: https://live-services.trackmania.nadeo.live
description: Get map records for a season
route: /api/token/leaderboard/group/{groupUid}/map/{mapUid}/top
method: GET
parameters:
    path:
        -   name: groupUid
            type: string
            description: >
                The UID of the group (aka. season). Example: the `.seasonUid` field in [Track of the Day entries](/docs/NadeoLiveServices/Campaigns/track-of-the-day.md).
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
            required: false
            description: >
                The player's personal best time in miliseconds. Possibly only used with `groupUid=Personal_Best`. Unknown purpose.
---

Get the top records for a given map in a given group/season.

Note that if `onlyWorld=false` then `offset` and `length` have no effect.

`groupUid` Example: see the `.seasonUid` field in [Track of the Day entries](/docs/NadeoLiveServices/Campaigns/track-of-the-day.md)

Note: There is a special groupUid `Personal_Best` that includes all records set ever.

-----

Example response (`/api/token/leaderboard/group/ed0f8dd1-247d-4563-95e2-f8e824dc4c2f/map/tZROO7ZGFV5oSel3hyKrvZ60Xth/top?onlyWorld=true&length=3&offset=92`):

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
          "accountId": "98ba7b4e-597b-4d7a-8878-0f910c66f4d6",
          "zoneId": "3022d1af-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "Massachusetts",
          "position": 93,
          "score": 46094
        },
        {
          "accountId": "34c6cbff-c169-4f75-9998-2c73b8ee3673",
          "zoneId": "301fa93b-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "Nord",
          "position": 94,
          "score": 46100
        },
        {
          "accountId": "dc02db10-27bb-4e63-91f3-866d02b9a4de",
          "zoneId": "30224020-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "Madeira",
          "position": 95,
          "score": 46102
        }
      ]
    }
  ]
}
```

-----

Example response (`/api/token/leaderboard/group/Personal_Best/map/tZROO7ZGFV5oSel3hyKrvZ60Xth/top?onlyWorld=true&length=2`):

```json
{
  "groupUid": "Personal_Best",
  "mapUid": "tZROO7ZGFV5oSel3hyKrvZ60Xth",
  "tops": [
    {
      "zoneId": "301e1b69-7e13-11e8-8060-e284abfd2bc4",
      "zoneName": "World",
      "top": [
        {
          "accountId": "d46fb45d-d422-47c9-9785-67270a311e25",
          "zoneId": "301f555b-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "Středočeský kraj",
          "position": 1,
          "score": 44821
        },
        {
          "accountId": "d320a237-1b0a-4069-af83-f2c09fbf042e",
          "zoneId": "301e2e52-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "Australian Capital Territory",
          "position": 2,
          "score": 44971
        }
      ]
    }
  ]
}
```

-----

Example response (`/api/token/leaderboard/group/ed0f8dd1-247d-4563-95e2-f8e824dc4c2f/map/tZROO7ZGFV5oSel3hyKrvZ60Xth/top?length=1&offset=92`):

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
          "accountId": "d46fb45d-d422-47c9-9785-67270a311e25",
          "zoneId": "301f555b-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "Středočeský kraj",
          "position": 1,
          "score": 44927
        },
        {
          "accountId": "d320a237-1b0a-4069-af83-f2c09fbf042e",
          "zoneId": "301e2e52-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "Australian Capital Territory",
          "position": 2,
          "score": 45088
        },
        {
          "accountId": "65341b56-1625-4df2-8fb4-ad7145c03c34",
          "zoneId": "301fea75-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "Réunion",
          "position": 3,
          "score": 45167
        },
        {
          "accountId": "95f2b15a-cf1e-4e41-b826-21889fdb26d8",
          "zoneId": "302255bf-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "Primorska",
          "position": 4,
          "score": 45191
        },
        {
          "accountId": "bd45204c-80f1-4809-b983-38b3f0ffc1ef",
          "zoneId": "3020a27d-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "Norway",
          "position": 5,
          "score": 45211
        }
      ]
    },
    {
      "zoneId": "301e237a-7e13-11e8-8060-e284abfd2bc4",
      "zoneName": "Oceania",
      "top": [
        {
          "accountId": "d320a237-1b0a-4069-af83-f2c09fbf042e",
          "zoneId": "301e2e52-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "Australian Capital Territory",
          "position": 1,
          "score": 45088
        },
        {
          "accountId": "5a1b3368-d3cb-4a13-93e8-ff9800d7df2f",
          "zoneId": "301e309b-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "New South Wales",
          "position": 2,
          "score": 46855
        },
        {
          "accountId": "5936d8dc-3a5b-4daa-a95f-15d75e98b210",
          "zoneId": "30209ed5-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "New Zealand",
          "position": 3,
          "score": 47837
        },
        {
          "accountId": "f6cb57dd-7a38-4a09-9e5c-cfc104e42c91",
          "zoneId": "301e309b-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "New South Wales",
          "position": 4,
          "score": 47840
        },
        {
          "accountId": "a9d156e5-f2f7-4f3d-a2f2-5f5102751f2a",
          "zoneId": "30209ed5-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "New Zealand",
          "position": 5,
          "score": 47875
        }
      ]
    },
    {
      "zoneId": "301e2dc2-7e13-11e8-8060-e284abfd2bc4",
      "zoneName": "Australia",
      "top": [
        {
          "accountId": "d320a237-1b0a-4069-af83-f2c09fbf042e",
          "zoneId": "301e2e52-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "Australian Capital Territory",
          "position": 1,
          "score": 45088
        },
        {
          "accountId": "5a1b3368-d3cb-4a13-93e8-ff9800d7df2f",
          "zoneId": "301e309b-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "New South Wales",
          "position": 2,
          "score": 46855
        },
        {
          "accountId": "f6cb57dd-7a38-4a09-9e5c-cfc104e42c91",
          "zoneId": "301e309b-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "New South Wales",
          "position": 3,
          "score": 47840
        },
        {
          "accountId": "3c1505cd-8a53-4e4e-817c-d808c277e64c",
          "zoneId": "301e34ec-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "Queensland",
          "position": 4,
          "score": 47897
        },
        {
          "accountId": "51812800-8116-430e-a286-c06db919e80e",
          "zoneId": "301e309b-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "New South Wales",
          "position": 5,
          "score": 47973
        }
      ]
    },
    {
      "zoneId": "301e309b-7e13-11e8-8060-e284abfd2bc4",
      "zoneName": "New South Wales",
      "top": [
        {
          "accountId": "5a1b3368-d3cb-4a13-93e8-ff9800d7df2f",
          "zoneId": "301e309b-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "New South Wales",
          "position": 1,
          "score": 46855
        },
        {
          "accountId": "f6cb57dd-7a38-4a09-9e5c-cfc104e42c91",
          "zoneId": "301e309b-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "New South Wales",
          "position": 2,
          "score": 47840
        },
        {
          "accountId": "51812800-8116-430e-a286-c06db919e80e",
          "zoneId": "301e309b-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "New South Wales",
          "position": 3,
          "score": 47973
        },
        {
          "accountId": "ea0213fe-b2ef-43a4-867a-6aec8d59f034",
          "zoneId": "301e309b-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "New South Wales",
          "position": 4,
          "score": 49490
        },
        {
          "accountId": "3e1ecaff-d08e-4057-b224-829507885bd6",
          "zoneId": "301e309b-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "New South Wales",
          "position": 5,
          "score": 50162
        }
      ]
    }
  ]
}
```

-----

Example errors:

when `length < 0` and/or `offset < 0`:
```json
["length:error-greaterOrEqualThan","offset:error-greaterOrEqualThan"]
```
