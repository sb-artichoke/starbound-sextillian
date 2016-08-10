function init()
  if storage.state == nil then
    storage.state = config.getParameter("defaultTvState", 0)
  end

  self.interactive = config.getParameter("interactive", true)
  object.setInteractive(self.interactive)

  if config.getParameter("inputNodes") then
    processWireInput()
  end

  setTvState(storage.state)
end

function onNodeConnectionChange(args)
  processWireInput()
end

function onInputNodeChange(args)
  processWireInput()
end

function onInteraction(args)
  if not config.getParameter("inputNodes") or not object.isInputNodeConnected(0) then
    local channels = config.getParameter("tvNumChannels", 1) + 1
    local nextChannel = storage.state + 1
    local newChannel = nextChannel - math.floor(nextChannel/channels) * channels
    storage.state = newChannel
    setTvState(storage.state)
  end
end

function processWireInput()
  if object.isInputNodeConnected(0) then
    object.setInteractive(false)
    local isOn = object.getInputNodeLevel(0)
    if isOn then
      setTvState(0)
    else
      local newChannel = math.random(config.getParameter("tvNumChannels", 1))
      storage.state = newChannel
      setTvState(storage.state)
    end
  elseif self.interactive then
    object.setInteractive(true)
  end
end

function setTvState(channel)
  if channel > 0 then
    animator.setGlobalTag("channel", channel);
    animator.setAnimationState("tv", "channel")
    object.setSoundEffectEnabled(true)
    if animator.hasSound("on") then
      animator.playSound("on");
    end
    object.setLightColor(config.getParameter("lightColor", {255, 255, 255}))
  else
    animator.setAnimationState("tv", "off")
    object.setSoundEffectEnabled(false)
    if animator.hasSound("off") then
      animator.playSound("off");
    end
    object.setLightColor(config.getParameter("lightColorOff", {0, 0, 0}))
  end
end
