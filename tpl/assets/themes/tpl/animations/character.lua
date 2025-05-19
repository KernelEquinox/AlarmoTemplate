local character = {

    --
    -- Version -----------------------------------------------------------------
    --
    version = 4,

    --
    -- Name --------------------------------------------------------------------
    --
    name = "themes/tpl/animations/character",

    --
    -- Animations --------------------------------------------------------------
    --
    shiroAnims = {

        --
        -- Wait :: Facing Left -------------------------------------------------
        --
        wait_l = {
            loopType = "Always",
            clampMode = "last",
            playTime = 24,
            intervalFrame = 12,
            timelineInfos = {
                imageTimeline = {
                    { frame = 0,  imageName = "wait_L_00" },
                    { frame = 12, imageName = "wait_L_01" }
                }
            }
        },

        --
        -- Walk :: Facing Left -------------------------------------------------
        --
        walk_l = {
            loopType = "Always",
            clampMode = "last",
            playTime = 8,
            intervalFrame = 4,
            timelineInfos = {
                imageTimeline = {
                    { frame = 0, imageName = "walk_L_00" },
                    { frame = 4, imageName = "walk_L_01" }
                }
            }
        },

        --
        -- Action :: Facing Right ----------------------------------------------
        --
        action_r = {
            loopType = "Once",
            clampMode = "last",
            playTime = 12,
            intervalFrame = 12,
            timelineInfos = {
                imageTimeline = {
                    { frame = 0, imageName = "action_R_00" }
                }
            }
        },

        --
        -- Action :: Facing Left -----------------------------------------------
        --
        action_l = {
            loopType = "Once",
            clampMode = "last",
            playTime = 12,
            intervalFrame = 12,
            timelineInfos = {
                imageTimeline = {
                    { frame = 0, imageName = "action_L_00" }
                }
            }
        },

        --
        -- Walk :: Facing Right ------------------------------------------------
        --
        walk_r = {
            loopType = "Always",
            clampMode = "last",
            playTime = 8,
            intervalFrame = 4,
            timelineInfos = {
                imageTimeline = {
                    { frame = 0, imageName = "walk_R_00" },
                    { frame = 4, imageName = "walk_R_01" }
                }
            }
        },

        --
        -- Wait :: Facing Right ------------------------------------------------
        --
        wait_r = {
            loopType = "Always",
            clampMode = "last",
            playTime = 24,
            intervalFrame = 12,
            timelineInfos = {
                imageTimeline = {
                    { frame = 0,  imageName = "wait_R_00" },
                    { frame = 12, imageName = "wait_R_01" }
                }
            }
        },

        --
        -- Look :: Facing Right ------------------------------------------------
        --
        look_r = {
            loopType = "Once",
            clampMode = "last",
            playTime = 12,
            intervalFrame = 12,
            timelineInfos = {
                imageTimeline = {
                    { frame = 0, imageName = "look_R_00" }
                }
            }
        },

        --
        -- Look :: Facing Left -------------------------------------------------
        --
        look_l = {
            loopType = "Once",
            clampMode = "last",
            playTime = 12,
            intervalFrame = 12,
            timelineInfos = {
                imageTimeline = {
                    { frame = 0, imageName = "look_L_00" }
                }
            }
        },

        --
        -- Leave The Screen ----------------------------------------------------
        --
        leave = {
            loopType = "Once",
            clampMode = "last",
            playTime = 25,
            intervalFrame = 1,
            timelineInfos = {
                imageTimeline = {
                    { frame = 0,  imageName = "leave_00" },
                    { frame = 10, imageName = "leave_01" },
                    { frame = 11, imageName = "leave_02" },
                    { frame = 12, imageName = "leave_03" },
                    { frame = 13, imageName = "leave_04" },
                    { frame = 14, imageName = "leave_05" },
                    { frame = 15, imageName = "leave_06" }
                }
            }
        },

        --
        -- Appear Onto Screen --------------------------------------------------
        --
        appear = {
            loopType = "Once",
            clampMode = "last",
            playTime = 15,
            intervalFrame = 1,
            timelineInfos = {
                imageTimeline = {
                    { frame = 0,  imageName = "appear_00" },
                    { frame = 1,  imageName = "appear_01" },
                    { frame = 2,  imageName = "appear_02" },
                    { frame = 3,  imageName = "appear_03" },
                    { frame = 4,  imageName = "appear_04" },
                    { frame = 5,  imageName = "appear_05" },
                    { frame = 6,  imageName = "appear_06" },
                    { frame = 7,  imageName = "appear_07" },
                    { frame = 8,  imageName = "appear_08" },
                    { frame = 9,  imageName = "appear_09" },
                    { frame = 10, imageName = "appear_10" },
                    { frame = 11, imageName = "appear_11" },
                    { frame = 12, imageName = "appear_12" },
                    { frame = 13, imageName = "appear_13" },
                    { frame = 14, imageName = "appear_14" }
                }
            }
        }
    },

    --
    -- Animation Sets ----------------------------------------------------------
    --
    animationSets = {}
}
return character
