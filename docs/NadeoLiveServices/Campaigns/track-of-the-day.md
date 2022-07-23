---
audience: NadeoLiveServices
url: https://live-services.trackmania.nadeo.live
description: Get Tracks of the Day by month
route: /api/token/campaign/month
method: GET
parameters:
    query:
        -   name: offset
            type: integer
            description: The offset to start from
            required: true
            minimum: 0
        -   name: length
            type: integer
            description: The number of months to return
            required: true
            minimum: 1
            maximum: 100
---

Get a list of month objects, each of which contains the tracks of the day for that month.

Example response (`length=1&offset=0`; made approx 3.6 hrs prior to new TOTD):

```json
{
  "monthList": [
    {
      "year": 2022,
      "month": 7,
      "lastDay": 31,
      "days": [
        {
          "campaignId": 27234,
          "mapUid": "usz9S_c76pH9uHiU5Hd8BE9NJ60",
          "day": 4,
          "monthDay": 1,
          "seasonUid": "a1ee77d9-ee12-414b-a60e-ad1ad7722660",
          "leaderboardGroup": null,
          "startTimestamp": 1656694800,
          "endTimestamp": 1656781200,
          "relativeStart": -1887797,
          "relativeEnd": -1801397
        },
        {
          "campaignId": 27202,
          "mapUid": "wTGgeauQrFJZhpr_weWaVv7gZxh",
          "day": 5,
          "monthDay": 2,
          "seasonUid": "11622bc7-d9f9-4c3c-9a39-27902583da73",
          "leaderboardGroup": null,
          "startTimestamp": 1656781200,
          "endTimestamp": 1656867600,
          "relativeStart": -1801397,
          "relativeEnd": -1714997
        },
        {
          "campaignId": 27203,
          "mapUid": "Pv7aELleCy7xTwnIsI3DuTQDm_8",
          "day": 6,
          "monthDay": 3,
          "seasonUid": "7a764823-524d-49ab-a8bb-43ddadfeee5f",
          "leaderboardGroup": null,
          "startTimestamp": 1656867600,
          "endTimestamp": 1656954000,
          "relativeStart": -1714997,
          "relativeEnd": -1628597
        },
        {
          "campaignId": 27462,
          "mapUid": "89I3ZHH0qhCtGYfX3vOf90jz2h4",
          "day": 0,
          "monthDay": 4,
          "seasonUid": "87ef64ce-eb9c-4a16-83fa-1dac93551540",
          "leaderboardGroup": null,
          "startTimestamp": 1656954000,
          "endTimestamp": 1657040400,
          "relativeStart": -1628597,
          "relativeEnd": -1542197
        },
        {
          "campaignId": 27463,
          "mapUid": "Cq2TxKZupLBCvtQc5jxBbsq0X8e",
          "day": 1,
          "monthDay": 5,
          "seasonUid": "56b7a592-2ee1-482b-9a27-d7a8562df590",
          "leaderboardGroup": null,
          "startTimestamp": 1657040400,
          "endTimestamp": 1657126800,
          "relativeStart": -1542197,
          "relativeEnd": -1455797
        },
        {
          "campaignId": 27464,
          "mapUid": "mlikgNqQTxsjBXyB7L46fdq0bkg",
          "day": 2,
          "monthDay": 6,
          "seasonUid": "7dfd31de-bf3d-41be-b17f-fa3861d4ff50",
          "leaderboardGroup": null,
          "startTimestamp": 1657126800,
          "endTimestamp": 1657213200,
          "relativeStart": -1455797,
          "relativeEnd": -1369397
        },
        {
          "campaignId": 27465,
          "mapUid": "bKN9epoJXuOSLZ2EICCNbCUVwSm",
          "day": 3,
          "monthDay": 7,
          "seasonUid": "5f158564-40a2-44c8-81f1-323eb542e491",
          "leaderboardGroup": null,
          "startTimestamp": 1657213200,
          "endTimestamp": 1657299600,
          "relativeStart": -1369397,
          "relativeEnd": -1282997
        },
        {
          "campaignId": 27466,
          "mapUid": "PGZpn8WBCQIb6cpxtcisbLYDaLf",
          "day": 4,
          "monthDay": 8,
          "seasonUid": "02b7ffeb-571b-465b-a5e1-991c36e21091",
          "leaderboardGroup": null,
          "startTimestamp": 1657299600,
          "endTimestamp": 1657386000,
          "relativeStart": -1282997,
          "relativeEnd": -1196597
        },
        {
          "campaignId": 27467,
          "mapUid": "iGJAethRRGn2S7Q48SomDJl6fX2",
          "day": 5,
          "monthDay": 9,
          "seasonUid": "71ee86c2-abad-41cf-81cf-b8d81f54ec6b",
          "leaderboardGroup": null,
          "startTimestamp": 1657386000,
          "endTimestamp": 1657472400,
          "relativeStart": -1196597,
          "relativeEnd": -1110197
        },
        {
          "campaignId": 27468,
          "mapUid": "d4dKnZXI_8rpOzw1px8ca1c38x6",
          "day": 6,
          "monthDay": 10,
          "seasonUid": "c21af32d-c15e-4f92-8ff0-b16193d53968",
          "leaderboardGroup": null,
          "startTimestamp": 1657472400,
          "endTimestamp": 1657558800,
          "relativeStart": -1110197,
          "relativeEnd": -1023797
        },
        {
          "campaignId": 27862,
          "mapUid": "IhGzPu9zI_smjwT5126E9GJ2Sc1",
          "day": 0,
          "monthDay": 11,
          "seasonUid": "a17f87a6-7fdd-488a-a046-80db88a46a60",
          "leaderboardGroup": null,
          "startTimestamp": 1657558800,
          "endTimestamp": 1657645200,
          "relativeStart": -1023797,
          "relativeEnd": -937397
        },
        {
          "campaignId": 27863,
          "mapUid": "zTR86vqSCHDwtezephysc3KjRwk",
          "day": 1,
          "monthDay": 12,
          "seasonUid": "a479ec74-7fb5-4496-8b23-ca5930a5a11b",
          "leaderboardGroup": null,
          "startTimestamp": 1657645200,
          "endTimestamp": 1657731600,
          "relativeStart": -937397,
          "relativeEnd": -850997
        },
        {
          "campaignId": 27864,
          "mapUid": "xa7KriuLK5MtaB04W5NSvw4ouhe",
          "day": 2,
          "monthDay": 13,
          "seasonUid": "9396a0da-9a89-44d6-90d3-aa7f7683e5e6",
          "leaderboardGroup": null,
          "startTimestamp": 1657731600,
          "endTimestamp": 1657818000,
          "relativeStart": -850997,
          "relativeEnd": -764597
        },
        {
          "campaignId": 28048,
          "mapUid": "dpGAuTlbU43ZFXo9ebBq8O8BsL5",
          "day": 3,
          "monthDay": 14,
          "seasonUid": "48289e52-49ac-4fb2-83db-cca1a8169288",
          "leaderboardGroup": null,
          "startTimestamp": 1657818000,
          "endTimestamp": 1657904400,
          "relativeStart": -764597,
          "relativeEnd": -678197
        },
        {
          "campaignId": 27865,
          "mapUid": "7fhWA2IieiLaZ1WQvUH1E4sgpml",
          "day": 4,
          "monthDay": 15,
          "seasonUid": "5c186ec4-843f-4bba-89fc-37565a63c872",
          "leaderboardGroup": null,
          "startTimestamp": 1657904400,
          "endTimestamp": 1657990800,
          "relativeStart": -678197,
          "relativeEnd": -591797
        },
        {
          "campaignId": 27866,
          "mapUid": "DSkN2z8FQjp_QQmntm4thbrsf8g",
          "day": 5,
          "monthDay": 16,
          "seasonUid": "dd8e9213-f623-4d02-9a0d-6c0c72e6fcc3",
          "leaderboardGroup": null,
          "startTimestamp": 1657990800,
          "endTimestamp": 1658077200,
          "relativeStart": -591797,
          "relativeEnd": -505397
        },
        {
          "campaignId": 28051,
          "mapUid": "4LehXWF_sLKwoBd9zDdeqwV51Cg",
          "day": 6,
          "monthDay": 17,
          "seasonUid": "bcac48a9-f863-4159-bc73-61472c1fed27",
          "leaderboardGroup": null,
          "startTimestamp": 1658077200,
          "endTimestamp": 1658163600,
          "relativeStart": -505397,
          "relativeEnd": -418997
        },
        {
          "campaignId": 28052,
          "mapUid": "CMYPpc0wqoVP_UVg6cWTKVAWZll",
          "day": 0,
          "monthDay": 18,
          "seasonUid": "efe28da5-80a9-4349-9b76-fe1a22a2437d",
          "leaderboardGroup": null,
          "startTimestamp": 1658163600,
          "endTimestamp": 1658250000,
          "relativeStart": -418997,
          "relativeEnd": -332597
        },
        {
          "campaignId": 28053,
          "mapUid": "lcxFr_45WhmcySkxBxGu9th1EGm",
          "day": 1,
          "monthDay": 19,
          "seasonUid": "65e77da1-4dbe-4efa-9309-7f42efc3c2a9",
          "leaderboardGroup": null,
          "startTimestamp": 1658250000,
          "endTimestamp": 1658336400,
          "relativeStart": -332597,
          "relativeEnd": -246197
        },
        {
          "campaignId": 28054,
          "mapUid": "UKOLUXHylzP9fdbM2JKdOoYPAA4",
          "day": 2,
          "monthDay": 20,
          "seasonUid": "9ea90562-b492-4886-8bda-41300cf7648a",
          "leaderboardGroup": null,
          "startTimestamp": 1658336400,
          "endTimestamp": 1658422800,
          "relativeStart": -246197,
          "relativeEnd": -159797
        },
        {
          "campaignId": 28055,
          "mapUid": "_QuSefCEuqBvRPhRI8_eW9u0RBg",
          "day": 3,
          "monthDay": 21,
          "seasonUid": "bab1f074-9f3e-4161-84e6-087ceefdf0b5",
          "leaderboardGroup": null,
          "startTimestamp": 1658422800,
          "endTimestamp": 1658509200,
          "relativeStart": -159797,
          "relativeEnd": -73397
        },
        {
          "campaignId": 28056,
          "mapUid": "kNB2rqE08jUlWf78w11YjrMCYuj",
          "day": 4,
          "monthDay": 22,
          "seasonUid": "82857040-2471-4cdd-ae9f-adb5dcf36ca0",
          "leaderboardGroup": null,
          "startTimestamp": 1658509200,
          "endTimestamp": 1658595600,
          "relativeStart": -73397,
          "relativeEnd": 13003
        },
        {
          "campaignId": 0,
          "mapUid": "",
          "day": 5,
          "monthDay": 23,
          "seasonUid": "",
          "leaderboardGroup": null,
          "startTimestamp": 1658595600,
          "endTimestamp": 1658682000,
          "relativeStart": 13003,
          "relativeEnd": 99403
        },
        {
          "campaignId": 0,
          "mapUid": "",
          "day": 6,
          "monthDay": 24,
          "seasonUid": "",
          "leaderboardGroup": null,
          "startTimestamp": 1658682000,
          "endTimestamp": 1658768400,
          "relativeStart": 99403,
          "relativeEnd": 185803
        },
        {
          "campaignId": 0,
          "mapUid": "",
          "day": 0,
          "monthDay": 25,
          "seasonUid": "",
          "leaderboardGroup": null,
          "startTimestamp": 1658768400,
          "endTimestamp": 1658854800,
          "relativeStart": 185803,
          "relativeEnd": 272203
        },
        {
          "campaignId": 0,
          "mapUid": "",
          "day": 1,
          "monthDay": 26,
          "seasonUid": "",
          "leaderboardGroup": null,
          "startTimestamp": 1658854800,
          "endTimestamp": 1658941200,
          "relativeStart": 272203,
          "relativeEnd": 358603
        },
        {
          "campaignId": 0,
          "mapUid": "",
          "day": 2,
          "monthDay": 27,
          "seasonUid": "",
          "leaderboardGroup": null,
          "startTimestamp": 1658941200,
          "endTimestamp": 1659027600,
          "relativeStart": 358603,
          "relativeEnd": 445003
        },
        {
          "campaignId": 0,
          "mapUid": "",
          "day": 3,
          "monthDay": 28,
          "seasonUid": "",
          "leaderboardGroup": null,
          "startTimestamp": 1659027600,
          "endTimestamp": 1659114000,
          "relativeStart": 445003,
          "relativeEnd": 531403
        },
        {
          "campaignId": 0,
          "mapUid": "",
          "day": 4,
          "monthDay": 29,
          "seasonUid": "",
          "leaderboardGroup": null,
          "startTimestamp": 1659114000,
          "endTimestamp": 1659200400,
          "relativeStart": 531403,
          "relativeEnd": 617803
        },
        {
          "campaignId": 0,
          "mapUid": "",
          "day": 5,
          "monthDay": 30,
          "seasonUid": "",
          "leaderboardGroup": null,
          "startTimestamp": 1659200400,
          "endTimestamp": 1659286800,
          "relativeStart": 617803,
          "relativeEnd": 704203
        },
        {
          "campaignId": 0,
          "mapUid": "",
          "day": 6,
          "monthDay": 31,
          "seasonUid": "",
          "leaderboardGroup": null,
          "startTimestamp": 1659286800,
          "endTimestamp": 1659373200,
          "relativeStart": 704203,
          "relativeEnd": 790603
        }
      ],
      "media": {
        "buttonBackgroundUrl": "",
        "buttonForegroundUrl": "",
        "decalUrl": "",
        "popUpBackgroundUrl": "",
        "popUpImageUrl": "",
        "liveButtonBackgroundUrl": "",
        "liveButtonForegroundUrl": ""
      }
    }
  ],
  "itemCount": 25,
  "nextRequestTimestamp": 1658595600,
  "relativeNextRequest": 13003
}
```

Example errors:

```json
["offset:error-propertyNotSet","length:error-propertyNotSet"]
```

```json
["length:error-greaterOrEqualThan"]
```
