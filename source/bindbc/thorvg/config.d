module bindbc.thorvg.config;

enum TVGSupport {
    noLibrary,
    badLibrary,
    tvg07 = 7
}

version (BindBC_Status) version = BindTVG_Static;
version (BindTVG_Static) enum staticBinding = true;
else enum staticBinding = false;

version (TVG_07)
{
    enum tvgSupport = TVGSupport.tvg07;
}
else
{
    enum tvgSupport = TVGSupport.tvg07;
}
