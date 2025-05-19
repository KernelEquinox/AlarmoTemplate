local alarm_impl = {

    --
    -- Regular Alarm
    --
    alarm = {
        sounds = { "Main" },
        snooze = {
            {
                curveType = "L",
                slotCount = 8
            }
        },
        actionEvent = {
            eventType = "Switch",
            curveType = "XL",
            slotCount = 16
        },
        isLocalized = false,
        restartBgmAfterSnooze = false,
        useCommon = false,
        introToSnoozeDuration = 0
    },

    --
    -- Hurry Up Alarm
    --
    hurryup = {
        sounds = { "Main" },
        snooze = {
            {
                curveType = "L",
                slotCount = 8
            }
        },
        actionEvent = {
            eventType = "Slot",
            curveType = "XL",
            slotCount = 16
        },
        isLocalized = false,
        restartBgmAfterSnooze = false,
        useCommon = false,
        introToSnoozeDuration = 5
    }
}
return alarm_impl
