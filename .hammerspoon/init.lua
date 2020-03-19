-- https://superuser.com/questions/303424/can-i-enable-scrolling-with-middle-button-drag-in-os-x
-- modified to:
-- - reverse vertical+horizontal scroll direction consistently
-- - use the back button for scrolling
-- - when the back button is pressed and released and the cursor is not moved,
--   send Command-left instead of the back button
-- - send Command-right when the forward button is pressed

-- HANDLE SCROLLING WITH MOUSE BUTTON PRESSED
local scrollMouseButton = 3 -- 0-indexed; back button
local deferred = false

overrideOtherMouseDown = hs.eventtap.new({ hs.eventtap.event.types.otherMouseDown }, function(e)
    -- print("down")
    local pressedMouseButton = e:getProperty(hs.eventtap.event.properties['mouseEventButtonNumber'])
    if scrollMouseButton == pressedMouseButton then
        deferred = true
        return true
    end
end)

overrideOtherMouseUp = hs.eventtap.new({ hs.eventtap.event.types.otherMouseUp }, function(e)
    -- print("up")
    local pressedMouseButton = e:getProperty(hs.eventtap.event.properties['mouseEventButtonNumber'])
    if scrollMouseButton == pressedMouseButton 
    then 
        if (deferred) then
            overrideOtherMouseDown:stop()
            overrideOtherMouseUp:stop()
            -- hs.eventtap.otherClick(e:location(), pressedMouseButton)
            sendBack()
            overrideOtherMouseDown:start()
            overrideOtherMouseUp:start()
            return true
        end
        return false
    end
    return false
end)

function sendBack()
    hs.eventtap.keyStroke({"cmd"}, "left")
end

local oldmousepos = {}
local scrollmult = 3   -- negative multiplier makes mouse work like traditional scrollwheel

dragOtherToScroll = hs.eventtap.new({ hs.eventtap.event.types.otherMouseDragged }, function(e)
    local pressedMouseButton = e:getProperty(hs.eventtap.event.properties['mouseEventButtonNumber'])
    -- print ("pressed mouse " .. pressedMouseButton)
    if scrollMouseButton == pressedMouseButton 
    then 
        -- print("scroll");
        deferred = false
        oldmousepos = hs.mouse.getAbsolutePosition()    
        local dx = e:getProperty(hs.eventtap.event.properties['mouseEventDeltaX'])
        local dy = e:getProperty(hs.eventtap.event.properties['mouseEventDeltaY'])
        local scroll = hs.eventtap.event.newScrollEvent({dx * scrollmult, dy * scrollmult},{},'pixel')
        -- put the mouse back
        hs.mouse.setAbsolutePosition(oldmousepos)
        return true, {scroll}
    else 
        return false, {}
    end 
end)

overrideOtherMouseDown:start()
overrideOtherMouseUp:start()
dragOtherToScroll:start()


-- CONVERT THE FORWARD MOUSE BUTTON TO Command-RIGHT

local forwardMouseButton = 4

function sendForward()
    hs.eventtap.keyStroke({"cmd"}, "right")
end

forwardToForward = hs.eventtap.new({ hs.eventtap.event.types.otherMouseDown }, function(e)
    if e:getProperty(hs.eventtap.event.properties['mouseEventButtonNumber']) ~= forwardMouseButton then
        return false
    end

    sendForward()
    return true
end)
forwardToForward:start()
