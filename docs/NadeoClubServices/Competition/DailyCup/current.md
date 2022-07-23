---
audience: NadeoClubServices
url: https://competition.trackmania.nadeo.club
route: /api/daily-cup/current
description: Get the status and details of the current or next Cup of the Day
method: GET
---

Get the status and details of the current or next Cup of the Day.

Note: this endpoint often returns `null` between off-peak COTD events.

Example response (after COTD is finished; in this case approx 2:15 after COTD started):

```json
{
  "id": 1324,
  "edition": 1,
  "competition": {
    "id": 3206,
    "liveId": "LID-COMP-sp12wal2oqgwv5n",
    "creator": "afe7e1c1-7086-48f7-bde9-a7e320647510",
    "name": "Cup of the Day 2022-07-23 #1",
    "participantType": "PLAYER",
    "description": null,
    "registrationStart": null,
    "registrationEnd": null,
    "startDate": 1658596590,
    "endDate": 1658603790,
    "matchesGenerationDate": 1658596565,
    "nbPlayers": 3370,
    "spotStructure": "{\"version\":1,\"rounds\":[{\"name\":\"\",\"matchGeneratorType\":\"daily_cup\",\"matchGeneratorData\":{\"match_size\":64}}]}",
    "leaderboardId": 7934,
    "manialink": null,
    "rulesUrl": null,
    "streamUrl": null,
    "websiteUrl": null,
    "logoUrl": null,
    "verticalUrl": null,
    "allowedZones": [],
    "deletedOn": null,
    "autoNormalizeSeeds": true,
    "region": "eu-west",
    "autoGetParticipantSkillLevel": "DISABLED",
    "matchAutoMode": "ENABLED"
  },
  "challenge": {
    "id": 1582,
    "uid": "1f39e0cd-b016-49ab-8b15-b214ca70ec8d",
    "name": "Cup of the Day 2022-07-23 #1 - Challenge",
    "scoreDirection": "ASC",
    "startDate": 1658595660,
    "endDate": 1658596560,
    "status": "HAS_SERVERS",
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
    "leaderboardId": 7932,
    "deletedOn": null,
    "leaderboardType": "SUM",
    "completeTimeout": 5
  },
  "startDate": 1658595660,
  "endDate": 1658603790,
  "deletedOn": null
}
```

example response (before COTD starts; in this case approx 2:25 after prior COTD started):

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
