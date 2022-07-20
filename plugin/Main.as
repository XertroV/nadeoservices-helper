void Main()
{
    // if (!OpenplanetHasFullPermissions()) {
    //     throw("Openplanet has insufficient permissions to run this plugin. Please check you are running the club edition of the game.");
    //     return;
    // }

    NadeoServices::AddAudience(NADEO_LIVE_AUDIENCE);
    while (!NadeoServices::IsAuthenticated(NADEO_LIVE_AUDIENCE)) yield();
    print(NADEO_LIVE_AUDIENCE + " Authenticated");

    NadeoServices::AddAudience(NADEO_CLUB_AUDIENCE);
    while (!NadeoServices::IsAuthenticated(NADEO_CLUB_AUDIENCE)) yield();
    print(NADEO_CLUB_AUDIENCE + " Authenticated");

    print("Live: " + NadeoServices::BaseURL());
    print("Club: " + NadeoServices::BaseURLClub());
    print("Competition: " + NadeoServices::BaseURLCompetition());
    print("Matchmaking: " + NadeoServices::BaseURLMatchmaking());
}