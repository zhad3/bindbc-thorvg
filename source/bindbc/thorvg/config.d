module bindbc.thorvg.config;

enum TVGSupport {
    noLibrary,
    badLibrary,
    v0_8 = 0x0008,
    v0_9 = 0x0009,

    deprecated("use TVGSupport.v0_8 instead") tvg07 = 0x0007
}

version (BindBC_Status) version = BindTVG_Static;
version (BindTVG_Static) enum staticBinding = true;
else enum staticBinding = false;

version (TVG_0_9)      enum tvgSupport = TVGSupport.v0_9;
else                   enum tvgSupport = TVGSupport.v0_8;

