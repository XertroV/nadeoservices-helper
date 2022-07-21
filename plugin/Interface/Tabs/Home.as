class HomePageTab : Tab
{
    string GetLabel() override { return Icons::Home; }
    vec4 GetColor() override { return vec4(1,0.5,0,1); }
    string GetTooltip() override { return "Home"; }

    void Render() override
    {
        UI::Text("Home");
    }
}