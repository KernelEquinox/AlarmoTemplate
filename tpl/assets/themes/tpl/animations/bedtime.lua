local bedtime = {

    --
    -- Version -----------------------------------------------------------------
    --
    version = 4,

    --
    -- Name --------------------------------------------------------------------
    --
    name = "themes/tpl/animations/bedtime",

    --
    -- Animations --------------------------------------------------------------
    --
    shiroAnims = {

        --
        -- Sleeping ------------------------------------------------------------
        --
        sleeping = {
            loopType = "Always",
            clampMode = "last",
            playTime = 60,
            intervalFrame = 30,
            timelineInfos = {
                imageTimeline = {
                    { frame = 0,  imageName = "sleep_00", position = { x=126, y=35 }, eventName = "initPosition" },
                    { frame = 30, imageName = "sleep_01" }
                }
            }
        }
    },

    --
    -- Animation Sets ----------------------------------------------------------
    --
    animationSets = {}
}
return bedtime
