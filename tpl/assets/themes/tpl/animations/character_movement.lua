local character_movement = {

    --
    -- Version -----------------------------------------------------------------
    --
    version = 3,

    --
    -- Name --------------------------------------------------------------------
    --
    name = "themes/tpl/animations/character_movement",

    --
    -- Animations --------------------------------------------------------------
    --
    shiroAnims = {

        --
        -- Walking -------------------------------------------------------------
        --
        walking = {
            loopType = "Always",
            clampMode = "last",
            playTime = 12,
            isRelativeCoordinate = false,
            timelineInfos = {
                imageTimeline = {
                    {
                        frame = 0,
                        imageName = "walk.0",
                        position = { x=0, y=0 },
                        isVisible = true,
                        transitionType = "step",
                        scale = 1,
                        isRelativeCoordinate = false
                    },
                    {
                        frame = 4,
                        imageName = "walk.1",
                        position = { x=0, y=0 },
                        isVisible = true,
                        transitionType = "step",
                        scale = 1,
                        isRelativeCoordinate = false
                    },
                    {
                        frame = 8,
                        imageName = "walk.2",
                        position = { x=0, y=0 },
                        isVisible = true,
                        transitionType = "step",
                        scale = 1,
                        isRelativeCoordinate = false
                    }
                },
                positionTimeline = {}
            }
        },

        --
        -- Appeal --------------------------------------------------------------
        --
        appeal = {
            loopType = "Once",
            clampMode = "last",
            playTime = 24,
            isRelativeCoordinate = false,
            timelineInfos = {
                imageTimeline = {
                    {
                        frame = 0,
                        imageName = "appeal.0",
                        position = { x=0, y=0 },
                        isVisible = true,
                        transitionType = "Auto",
                        scale = 1,
                        isRelativeCoordinate = false
                    }
                },
                positionTimeline = {}
            }
        },

        --
        -- Stay Centered On The Bar --------------------------------------------
        --
        stay_center_on_the_bar = {
            loopType = "Always",
            clampMode = "last",
            playTime = 24,
            isRelativeCoordinate = false,
            timelineInfos = {
                imageTimeline = {},
                positionTimeline = {
                    {
                        frame = 0,
                        position = { x=140, y=40 },
                        isVisible = true,
                        transitionType = "Auto",
                        scale = 1,
                        isRelativeCoordinate = false,
                        eventName = ""
                    }
                }
            }
        },

        --
        -- Stay Centered -------------------------------------------------------
        --
        stay_center = {
            loopType = "Always",
            clampMode = "last",
            playTime = 24,
            isRelativeCoordinate = false,
            timelineInfos = {
                imageTimeline = {},
                positionTimeline = {
                    {
                        frame = 0,
                        position = { x=140, y=0 },
                        isVisible = true,
                        transitionType = "Auto",
                        scale = 1,
                        isRelativeCoordinate = false,
                        eventName = ""
                    }
                }
            }
        },

        --
        -- Invisible -----------------------------------------------------------
        --
        invisible = {
            loopType = "Always",
            clampMode = "last",
            playTime = 24,
            isRelativeCoordinate = false,
            timelineInfos = {
                imageTimeline = {
                    {
                        frame = 0,
                        imageName = "walk.0",
                        position = { x=0, y=0 },
                        isVisible = false,
                        transitionType = "Auto",
                        scale = 1,
                        isRelativeCoordinate = false
                    }
                },
                positionTimeline = {}
            }
        }
    }
}
return character_movement
