local timesignal_impl = {

    --
    -- 1 AM to 6 AM
    --
    { timeToCountBegin = 4.0 },
    { timeToCountBegin = 4.0 },
    { timeToCountBegin = 4.0 },
    { timeToCountBegin = 4.0 },
    { timeToCountBegin = 4.0 },
    { timeToCountBegin = 4.0, outroEvent = "Dummy_065", finishEvent = "TimeSignal_Finish06_Blend" },

    --
    -- 7 AM to 12 PM (Noon)
    --
    { timeToCountBegin = 4.0 },
    { timeToCountBegin = 4.0 },
    { timeToCountBegin = 4.0 },
    { timeToCountBegin = 4.0 },
    { timeToCountBegin = 4.0 },
    { timeToCountBegin = 4.0, outroEvent = "Dummy_065", finishEvent = "TimeSignal_Finish12_Blend" },

    --
    -- 1 PM to 6 PM
    --
    { timeToCountBegin = 4.0 },
    { timeToCountBegin = 4.0 },
    { timeToCountBegin = 4.0 },
    { timeToCountBegin = 4.0 },
    { timeToCountBegin = 4.0 },
    { timeToCountBegin = 4.0, outroEvent = "Dummy_065", finishEvent = "TimeSignal_Finish06_Blend" },

    --
    -- 7 PM to 12 AM (Midnight)
    --
    { timeToCountBegin = 4.0 },
    { timeToCountBegin = 4.0 },
    { timeToCountBegin = 4.0 },
    { timeToCountBegin = 4.0 },
    { timeToCountBegin = 4.0 },
    { timeToCountBegin = 4.0, outroEvent = "Dummy_065", finishEvent = "TimeSignal_Finish12_Blend" }
}
return timesignal_impl
