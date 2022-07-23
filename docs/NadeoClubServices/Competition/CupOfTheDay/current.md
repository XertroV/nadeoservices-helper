---
audience: NadeoClubServices
url: https://competition.trackmania.nadeo.club
route: /api/cup-of-the-day/current
description: Get the status and details of the current or next Cup of the Day
method: GET
---

Get the status and details of the current or next Cup of the Day.

Note: this seems to be a duplicate of [/api/daily-cup/current](/docs/NadeoClubServices/Competition/DailyCup/current.md)

Example response:

```json
{
  "id": 1325,
  "edition": 2,
  "competition": {
    "id": 3207,
    "liveId": "LID-COMP-4betamhaprlakto",
    "creator": "afe7e1c1-7086-48f7-bde9-a7e320647510",
    "name": "Cup of the Day 2022-07-23 #2",
    "participantType": "PLAYER",
    "description": null,
    "registrationStart": null,
    "registrationEnd": null,
    "startDate": 1658625390,
    "endDate": 1658632590,
    "matchesGenerationDate": 1658625365,
    "nbPlayers": 0,
    "spotStructure": "{\"version\":1,\"rounds\":[{\"name\":\"\",\"matchGeneratorType\":\"daily_cup\",\"matchGeneratorData\":{\"match_size\":64}}]}",
    "leaderboardId": 7937,
    "manialink": null,
    "rulesUrl": null,
    "streamUrl": null,
    "websiteUrl": null,
    "logoUrl": null,
    "verticalUrl": null,
    "allowedZones": [],
    "deletedOn": null,
    "autoNormalizeSeeds": true,
    "region": "ca-central",
    "autoGetParticipantSkillLevel": "DISABLED",
    "matchAutoMode": "ENABLED"
  },
  "challenge": {
    "id": 1583,
    "uid": "932e349a-0152-4741-828f-2d85dded78e5",
    "name": "Cup of the Day 2022-07-23 #2 - Challenge",
    "scoreDirection": "ASC",
    "startDate": 1658624460,
    "endDate": 1658625360,
    "status": "INIT",
    "resultsVisibility": "PUBLIC",
    "creator": "afe7e1c1-7086-48f7-bde9-a7e320647510",
    "admins": [
      "0060a0c1-2e62-41e7-9db7-c86236af3ac4",
      "54e4dda4-522d-496f-8a8b-fe0d0b5a2a8f",
      "2116b392-d808-4264-923f-2bfcfa60a570",
      "6ce163d5-f240-4741-870b-f2adad843865",
      "5e7b0c82-263b-41d5-8fa4-98d36ad4d57c",
      "a76653e1-998a-4c53-8a91-0a396e15bfb5"
    ],
    "nbServers": 0,
    "autoScale": true,
    "nbMaps": 1,
    "leaderboardId": 7935,
    "deletedOn": null,
    "leaderboardType": "SUM",
    "completeTimeout": 5
  },
  "startDate": 1658624460,
  "endDate": 1658632590,
  "deletedOn": null
}
```
