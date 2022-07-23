---
audience: NadeoLiveServices
description: Get the leaderboard for a season
route: /api/token/leaderboard/group/{seasonUid}/top
method: GET
parameters:
    path:
        -   name: seasonUid
            type: string
            description: >
                The UID of the "season". Example: the `.seasonUid` field in [Track of the Day entries](/docs/NadeoLiveServices/Campaigns/track-of-the-day.md).
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
---

Get the leaderboard for a given season.

Note that if onlyWorld=false then `offset` and `length` have no effect.

`seasonUid` Example: see the `.seasonUid` field in [Track of the Day entries](/docs/NadeoLiveServices/Campaigns/track-of-the-day.md)

-----

Example errors:

when `length < 0` and/or `offset < 0`:
```json
["length:error-greaterOrEqualThan","offset:error-greaterOrEqualThan"]
```

-----

Example response (`/api/token/leaderboard/group/ed0f8dd1-247d-4563-95e2-f8e824dc4c2f/top?onlyWorld=true&length=3&offset=1`):

```json
{
  "groupUid": "ed0f8dd1-247d-4563-95e2-f8e824dc4c2f",
  "tops": [
    {
      "zoneId": "301e1b69-7e13-11e8-8060-e284abfd2bc4",
      "zoneName": "World",
      "top": [
        {
          "accountId": "d320a237-1b0a-4069-af83-f2c09fbf042e",
          "zoneId": "301e2e52-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "Australian Capital Territory",
          "position": 2,
          "sp": "20000"
        },
        {
          "accountId": "65341b56-1625-4df2-8fb4-ad7145c03c34",
          "zoneId": "301fea75-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "Réunion",
          "position": 3,
          "sp": "13333"
        },
        {
          "accountId": "95f2b15a-cf1e-4e41-b826-21889fdb26d8",
          "zoneId": "302255bf-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "Primorska",
          "position": 4,
          "sp": "10000"
        }
      ]
    }
  ]
}
```

-----

Example response (`/api/token/leaderboard/group/ed0f8dd1-247d-4563-95e2-f8e824dc4c2f/top?onlyWorld=false&length=3&offset=1`):

```json
{
  "groupUid": "ed0f8dd1-247d-4563-95e2-f8e824dc4c2f",
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
          "sp": "40000"
        },
        {
          "accountId": "d320a237-1b0a-4069-af83-f2c09fbf042e",
          "zoneId": "301e2e52-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "Australian Capital Territory",
          "position": 2,
          "sp": "20000"
        },
        {
          "accountId": "65341b56-1625-4df2-8fb4-ad7145c03c34",
          "zoneId": "301fea75-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "Réunion",
          "position": 3,
          "sp": "13333"
        },
        {
          "accountId": "95f2b15a-cf1e-4e41-b826-21889fdb26d8",
          "zoneId": "302255bf-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "Primorska",
          "position": 4,
          "sp": "10000"
        },
        {
          "accountId": "bd45204c-80f1-4809-b983-38b3f0ffc1ef",
          "zoneId": "3020a27d-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "Norway",
          "position": 5,
          "sp": "8000"
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
          "sp": "40000"
        },
        {
          "accountId": "5a1b3368-d3cb-4a13-93e8-ff9800d7df2f",
          "zoneId": "301e309b-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "New South Wales",
          "position": 2,
          "sp": "20000"
        },
        {
          "accountId": "5936d8dc-3a5b-4daa-a95f-15d75e98b210",
          "zoneId": "30209ed5-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "New Zealand",
          "position": 3,
          "sp": "13333"
        },
        {
          "accountId": "f6cb57dd-7a38-4a09-9e5c-cfc104e42c91",
          "zoneId": "301e309b-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "New South Wales",
          "position": 4,
          "sp": "10000"
        },
        {
          "accountId": "a9d156e5-f2f7-4f3d-a2f2-5f5102751f2a",
          "zoneId": "30209ed5-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "New Zealand",
          "position": 5,
          "sp": "8000"
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
          "sp": "40000"
        },
        {
          "accountId": "5a1b3368-d3cb-4a13-93e8-ff9800d7df2f",
          "zoneId": "301e309b-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "New South Wales",
          "position": 2,
          "sp": "20000"
        },
        {
          "accountId": "f6cb57dd-7a38-4a09-9e5c-cfc104e42c91",
          "zoneId": "301e309b-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "New South Wales",
          "position": 3,
          "sp": "13333"
        },
        {
          "accountId": "3c1505cd-8a53-4e4e-817c-d808c277e64c",
          "zoneId": "301e34ec-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "Queensland",
          "position": 4,
          "sp": "10000"
        },
        {
          "accountId": "51812800-8116-430e-a286-c06db919e80e",
          "zoneId": "301e309b-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "New South Wales",
          "position": 5,
          "sp": "8000"
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
          "sp": "40000"
        },
        {
          "accountId": "f6cb57dd-7a38-4a09-9e5c-cfc104e42c91",
          "zoneId": "301e309b-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "New South Wales",
          "position": 2,
          "sp": "20000"
        },
        {
          "accountId": "51812800-8116-430e-a286-c06db919e80e",
          "zoneId": "301e309b-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "New South Wales",
          "position": 3,
          "sp": "13333"
        },
        {
          "accountId": "ea0213fe-b2ef-43a4-867a-6aec8d59f034",
          "zoneId": "301e309b-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "New South Wales",
          "position": 4,
          "sp": "10000"
        },
        {
          "accountId": "3e1ecaff-d08e-4057-b224-829507885bd6",
          "zoneId": "301e309b-7e13-11e8-8060-e284abfd2bc4",
          "zoneName": "New South Wales",
          "position": 5,
          "sp": "8000"
        }
      ]
    }
  ]
}
```
