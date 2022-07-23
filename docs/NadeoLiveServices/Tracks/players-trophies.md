---
audience: NadeoLiveServices
description: Gets a player's trophy count along with rankings in World, Continent, Country and Region.
route: /api/token/leaderboard/trophy/player/
method: POST
body: NEED HELP, EXAMPLE.
---

Check if the given player by their UID is on NadeoServices and give their total trophy count alongside their rankings in the World, Continent, Country and Region.

This endpoint also allows for multiple player UIDs in the body.

Example response for the player [Scrapie98](https://trackmania.io/#/player/scrapie)

```json
{
    "rankings": [
        {
            "countPoint": 194080897,
            "zones": [
                {
                    "zoneId": "301e1b69-7e13-11e8-8060-e284abfd2bc4",
                    "zoneName": "World",
                    "ranking": {
                        "position": 8,
                        "length": 0
                    }
                },
                {
                    "zoneId": "301e2106-7e13-11e8-8060-e284abfd2bc4",
                    "zoneName": "Europe",
                    "ranking": {
                        "position": 8,
                        "length": 0
                    }
                },
                {
                    "zoneId": "301e5bc8-7e13-11e8-8060-e284abfd2bc4",
                    "zoneName": "Belgium",
                    "ranking": {
                        "position": 1,
                        "length": 0
                    }
                },
                {
                    "zoneId": "301e5e63-7e13-11e8-8060-e284abfd2bc4",
                    "zoneName": "Li\u00e8ge",
                    "ranking": {
                        "position": 1,
                        "length": 0
                    }
                }
            ],
            "accountId": "da4642f9-6acf-43fe-88b6-b120ff1308ba",
            "echelon": 9
        }
    ],
    "length": 0
}
```

Body of above request

```json
{
    "listPlayer": [
        {
            "accountId": "da4642f9-6acf-43fe-88b6-b120ff1308ba",
        }
    ]
}
```


Example response for 3 players, [Scrapie98](https://trackmania.io/#/player/scrapie), [GranaDy.](https://trackmania.io/#/player/granady) and [NottCurious](https://trackmania.io/#/player/nottcurious) passed at once.

```json
{
    "rankings": [
        {
            "countPoint": 194080897,
            "zones": [
                {
                    "zoneId": "301e1b69-7e13-11e8-8060-e284abfd2bc4",
                    "zoneName": "World",
                    "ranking": {
                        "position": 8,
                        "length": 0
                    }
                },
                {
                    "zoneId": "301e2106-7e13-11e8-8060-e284abfd2bc4",
                    "zoneName": "Europe",
                    "ranking": {
                        "position": 8,
                        "length": 0
                    }
                },
                {
                    "zoneId": "301e5bc8-7e13-11e8-8060-e284abfd2bc4",
                    "zoneName": "Belgium",
                    "ranking": {
                        "position": 1,
                        "length": 0
                    }
                },
                {
                    "zoneId": "301e5e63-7e13-11e8-8060-e284abfd2bc4",
                    "zoneName": "Li\u00e8ge",
                    "ranking": {
                        "position": 1,
                        "length": 0
                    }
                }
            ],
            "accountId": "da4642f9-6acf-43fe-88b6-b120ff1308ba",
            "echelon": 9
        },
        {
            "countPoint": 169261629,
            "zones": [
                {
                    "zoneId": "301e1b69-7e13-11e8-8060-e284abfd2bc4",
                    "zoneName": "World",
                    "ranking": {
                        "position": 13,
                        "length": 0
                    }
                },
                {
                    "zoneId": "301e2106-7e13-11e8-8060-e284abfd2bc4",
                    "zoneName": "Europe",
                    "ranking": {
                        "position": 13,
                        "length": 0
                    }
                },
                {
                    "zoneId": "301ff622-7e13-11e8-8060-e284abfd2bc4",
                    "zoneName": "Germany",
                    "ranking": {
                        "position": 5,
                        "length": 0
                    }
                },
                {
                    "zoneId": "30202744-7e13-11e8-8060-e284abfd2bc4",
                    "zoneName": "Sachsen",
                    "ranking": {
                        "position": 1,
                        "length": 0
                    }
                },
                {
                    "zoneId": "30202b1c-7e13-11e8-8060-e284abfd2bc4",
                    "zoneName": "Dresden",
                    "ranking": {
                        "position": 1,
                        "length": 0
                    }
                }
            ],
            "accountId": "05477e79-25fd-48c2-84c7-e1621aa46517",
            "echelon": 8
        },
        {
            "countPoint": 5237868,
            "zones": [
                {
                    "zoneId": "301e1b69-7e13-11e8-8060-e284abfd2bc4",
                    "zoneName": "World",
                    "ranking": {
                        "position": 3124,
                        "length": 0
                    }
                },
                {
                    "zoneId": "301e2069-7e13-11e8-8060-e284abfd2bc4",
                    "zoneName": "Asia",
                    "ranking": {
                        "position": 47,
                        "length": 0
                    }
                },
                {
                    "zoneId": "30205919-7e13-11e8-8060-e284abfd2bc4",
                    "zoneName": "India",
                    "ranking": {
                        "position": 8,
                        "length": 0
                    }
                }
            ],
            "accountId": "b73fe3d7-a92a-4a6d-ab9d-49005caec499",
            "echelon": 6
        }
    ],
    "length": 0
}
```

Body of above request

```json
{
    "listPlayer": [
        {
            "accountId": "da4642f9-6acf-43fe-88b6-b120ff1308ba",
        },
        {
            "accountId": "05477e79-25fd-48c2-84c7-e1621aa46517",
        },
        {
            "accountId": "b73fe3d7-a92a-4a6d-ab9d-49005caec499",
        }
    ]
}
```

Example response if an invalid/non-existent player id is given

```json
{
    "rankings": [],
    "length": 0
}
```
