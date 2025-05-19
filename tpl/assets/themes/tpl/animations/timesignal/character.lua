local character = {

    --
    -- Version -----------------------------------------------------------------
    --
    version = 4,

    --
    -- Name --------------------------------------------------------------------
    --
    name = "themes/tpl/animations/timesignal/character",

    --
    -- Animations --------------------------------------------------------------
    --
    shiroAnims = {

        --
        -- Intro Animation -----------------------------------------------------
        --
        intro = {
            loopType = "Once",
            clampMode = "last",
            playTime = 102,
            intervalFrame = 17,
            timelineInfos = {
                imageTimeline = {
                    { frame = 0,  imageName = "intro_00", position = { x=0, y=0 }, eventName = "initPosition" },
                    { frame = 17, imageName = "intro_00" },
                    { frame = 34, imageName = "intro_01" },
                    { frame = 51, imageName = "intro_02" },
                    { frame = 68, imageName = "intro_03" },
                    { frame = 85, imageName = "intro_04" }
                }
            }
        },


        --
        -- Outro Animation (Unused) --------------------------------------------
        --
        outro = {
            loopType = "Once",
            clampMode = "last",
            playTime = 20,
            intervalFrame = -1,
            timelineInfos = {
                imageTimeline = {}
            }
        },

        --
        -- Hour Count Animation ------------------------------------------------
        --
        count = {
            loopType = "Once",
            clampMode = "last",
            playTime = 12,
            intervalFrame = 2,
            timelineInfos = {
                imageTimeline = {
                    { frame = 0, imageName = "count_00", position = { x=0, y=0 }, eventName = "initPosition" },
                    { frame = 2, imageName = "count_01" }
                }
            }
        },

        --
        -- Regular Finish ------------------------------------------------------
        --
        Finish = {
            loopType = "Once",
            clampMode = "last",
            playTime = 80,
            intervalFrame = -1,
            timelineInfos = {
                imageTimeline = {
                    { frame = 0,  imageName = "finish_00", position = { x=0, y=0 }, eventName = "initPosition" },
                    { frame = 8,  imageName = "finish_01" },
                    { frame = 24, imageName = "outro_00" },
                    { frame = 32, imageName = "outro_01" },
                    { frame = 40, imageName = "outro_02" },
                    { frame = 48, imageName = "outro_03" },
                    { frame = 56, imageName = "outro_04", alpha=255 },
                    { frame = 64, imageName = "outro_04", alpha=0 }
                }
            }
        },

        --
        -- Finish @ 6:00 -------------------------------------------------------
        --
        Finish06 = {
            loopType = "Once",
            clampMode = "last",
            playTime = 96,
            intervalFrame = -1,
            timelineInfos = {
                imageTimeline = {
                    { frame = 0,  imageName = "finish06_00", position = { x=0, y=0 }, eventName = "initPosition" },
                    { frame = 8,  imageName = "finish06_01" },
                    { frame = 16, imageName = "finish06_00" },
                    { frame = 24, imageName = "finish06_02" },
                    { frame = 40, imageName = "outro_00" },
                    { frame = 48, imageName = "outro_01" },
                    { frame = 56, imageName = "outro_02" },
                    { frame = 64, imageName = "outro_03" },
                    { frame = 72, imageName = "outro_04", alpha=255 },
                    { frame = 80, imageName = "outro_04", alpha=0 }
                }
            }
        },

        --
        -- Finish @ 12:00 ------------------------------------------------------
        --
        Finish12 = {
            loopType = "Once",
            clampMode = "last",
            playTime = 176,
            intervalFrame = -1,
            timelineInfos = {
                imageTimeline = {
                    { frame = 0,   imageName = "finish12_00", position = { x=0, y=0 }, eventName = "initPosition" },
                    { frame = 8,   imageName = "finish12_01" },
                    { frame = 16,  imageName = "finish12_00" },
                    { frame = 24,  imageName = "finish12_02" },
                    { frame = 40,  imageName = "finish12_03" },
                    { frame = 48,  imageName = "finish12_04" },
                    { frame = 56,  imageName = "finish12_03" },
                    { frame = 64,  imageName = "finish12_05" },
                    { frame = 80,  imageName = "finish12_00" },
                    { frame = 88,  imageName = "finish12_01" },
                    { frame = 96,  imageName = "finish12_00" },
                    { frame = 104, imageName = "finish12_02" },
                    { frame = 120, imageName = "outro_00" },
                    { frame = 128, imageName = "outro_01" },
                    { frame = 136, imageName = "outro_02" },
                    { frame = 144, imageName = "outro_03" },
                    { frame = 152, imageName = "outro_04", alpha=255 },
                    { frame = 160, imageName = "outro_04", alpha=0 }
                }
            }
        }
    },

    --
    -- Animation Sets ----------------------------------------------------------
    --
    animationSets = {
        count = {
            animationNames = {
                "count"
            }
        }
    }
}
return character
