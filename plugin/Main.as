Window@ g_window;

void CheckForPermsDisable()
{
    // Check if the player is running the club access of the game, if not send a error to the player and disable the plugin
    if (!OpenplanetHasFullPermissions()) {
        error("Insufficient permissions to run this plugin. Please check you are running the club edition of the game.");
        UI::ShowNotification(Icons::Times + " NadeoServices Helper", "Insufficient permissions to run this plugin. Please check you are running the club edition of the game.", vec4(1, 0, 0, 1), 10000);
        Meta::ExecutingPlugin().Disable();
        return;
    }
}

void OnEnabled()
{
    startnew(CheckForPermsDisable);
}

void Main()
{
    startnew(CheckForPermsDisable);
    if (!OpenplanetHasFullPermissions()) return;

    @g_window = Window();

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

void RenderMenu()
{
    if(UI::BeginMenu(Icons::Book + " NadeoServices Helper")){
        if (UI::MenuItem(Icons::WindowMaximize + " Open helper menu", "", g_window.isOpened)) {
            g_window.isOpened = !g_window.isOpened;
        }
        if(UI::BeginMenu("\\$f90"+Icons::CircleThin + " \\$zAdvanced")){
            if (UI::MenuItem(Icons::Clipboard + " Auth token", "", false, NadeoServices::IsAuthenticated(NADEO_LIVE_AUDIENCE))) {
                auto app = cast<CGameManiaPlanet>(GetApp());
			    auto api = app.ManiaPlanetScriptAPI;
                IO::SetClipboard("nadeo_v1 t=" + api.Authentication_Token);
            }
            UI::Separator();
            if (UI::MenuItem(Icons::Clipboard + " Live Base URL", "", false, NadeoServices::IsAuthenticated(NADEO_LIVE_AUDIENCE))) {
                IO::SetClipboard(NadeoServices::BaseURL());
            }
            if (UI::MenuItem(Icons::Clipboard + " Club Base URL", "", false, NadeoServices::IsAuthenticated(NADEO_LIVE_AUDIENCE))) {
                IO::SetClipboard(NadeoServices::BaseURLClub());
            }
            if (UI::MenuItem(Icons::Clipboard + " Competition Base URL", "", false, NadeoServices::IsAuthenticated(NADEO_LIVE_AUDIENCE))) {
                IO::SetClipboard(NadeoServices::BaseURLCompetition());
            }
            if (UI::MenuItem(Icons::Clipboard + " Matchmaking Base URL", "", false, NadeoServices::IsAuthenticated(NADEO_LIVE_AUDIENCE))) {
                IO::SetClipboard(NadeoServices::BaseURLMatchmaking());
            }
            UI::EndMenu();
        }
        UI::EndMenu();
    }
}

void RenderInterface()
{
    g_window.Render();
}