local ViewportId = require("ShiroEnum.ViewportId")

--
-- Visualize Character Configuration -------------------------------------------
--
VisualizeCharacterConfig = {

    --
    -- On-Screen Character List ------------------------------------------------
    --
    characters = {

        --
        -- Character 1 ---------------------------------------------------------
        --
        {
            name = "character",
            actionThresholdFrame = 15,
            nearThreshold = 13,
            defaultPosition = { x=126, y=35 },
            isStayAction = true,
            waitToLookSeconds = 2.4,
            hasEffect = false,
            animationSpeeds = { 1, 1, 1, 1 }
        }
    },

    --
    -- Pixel Count Per Distance ------------------------------------------------
    --
    pixelPerDistance = 240
}
return VisualizeCharacterConfig
