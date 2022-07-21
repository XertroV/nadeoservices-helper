class Window{
    bool isOpened = false;

    array<Tab@> tabs;
    Tab@ activeTab;
    Tab@ selectedTab;
    Tab@ c_lastActiveTab;
    Tab@ m_homePageTab;

    Window(){
        @m_homePageTab = HomePageTab();
        AddTab(m_homePageTab);
    }

    void AddTab(Tab@ tab, bool select = false, int index = -1){
        if (index == -1) tabs.InsertLast(tab);
        else tabs.InsertAt(index, tab);
        if (select) {
            @activeTab = tab;
        }
    }

    void RemoveTab(Tab@ tab){
        tabs.RemoveAt(tabs.FindByRef(tab));
    }

    void Render(){
        if(!isOpened) return;

        UI::PushStyleColor(UI::Col::WindowBg,vec4(.1,.1,.1,1));
        UI::PushStyleVar(UI::StyleVar::WindowPadding, vec2(10, 10));
        UI::PushStyleVar(UI::StyleVar::WindowRounding, 10.0);
        UI::PushStyleVar(UI::StyleVar::FramePadding, vec2(10, 6));
        UI::PushStyleVar(UI::StyleVar::WindowTitleAlign, vec2(.5, .5));
        UI::SetNextWindowSize(900, 600);
        if(UI::Begin(Icons::Book + " NadeoServices Helper", isOpened)){
            // Push the last active tab style so that the separator line is colored (this is drawn in BeginTabBar)
            auto lastActiveTab = c_lastActiveTab;
            if (lastActiveTab !is null) {
                lastActiveTab.PushTabStyle();
            }
            UI::BeginTabBar("Tabs");

            for(uint i = 0; i < tabs.Length; i++){
                auto tab = tabs[i];
                if (!tab.IsVisible()) continue;

                UI::PushID(tab);

                int flags = 0;
                if (tab is activeTab) {
                    flags |= UI::TabItemFlags::SetSelected;
                    if (!tab.GetLabel().Contains("Loading")) @activeTab = null;
                }

                tab.PushTabStyle();

                if (tab.CanClose()){
                    bool open = true;
                    bool beginTabClosable = UI::BeginTabItem(tab.GetLabel()+(tab.GetTooltip().Length > 0 ? "###"+tab.GetTooltip() : ""), open, flags);
                    if (tab.GetTooltip().Length > 0) UI::SetPreviousTooltip(tab.GetTooltip());
                    if (beginTabClosable){
                        @c_lastActiveTab = tab;

                        UI::BeginChild("Tab");
                        @selectedTab = tab;
                        tab.Render();
                        UI::EndChild();

                        UI::EndTabItem();
                    }
                    if (!open){
                        tabs.RemoveAt(i--);
                    }
                } else {
                    bool beginTab = UI::BeginTabItem(tab.GetLabel()+(tab.GetTooltip().Length > 0 ? "###"+tab.GetTooltip() : ""), flags);
                    if (tab.GetTooltip().Length > 0) UI::SetPreviousTooltip(tab.GetTooltip());
                    if (beginTab){
                        @c_lastActiveTab = tab;

                        UI::BeginChild("Tab");
                        @selectedTab = tab;
                        tab.Render();
                        UI::EndChild();

                        UI::EndTabItem();
                    }
                }

                tab.PopTabStyle();

                UI::PopID();

            }

            UI::EndTabBar();

            // Pop the tab style (for the separator line) only after EndTabBar, to satisfy the stack unroller
            if (lastActiveTab !is null) {
                lastActiveTab.PopTabStyle();
            }
        }
        UI::End();
        UI::PopStyleVar(4);
        UI::PopStyleColor(1);
    }

}