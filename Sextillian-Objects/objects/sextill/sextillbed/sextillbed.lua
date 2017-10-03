require "/scripts/vec2.lua"
require "/scripts/actions/npc.lua"

function init()
  
  storage.userNpc = false
  self.interactive = config.getParameter("interactive", true)
  object.setInteractive(self.interactive)

end

function update()
  -- local occupied = world.loungeableOccupied(entity.id())
  -- if not occupied and storage.userNpc then
  --   world.callScriptedEntity(storage.userNpc, "status.setResource", "health", 0)
  --   world.callScriptedEntity(storage.userNpc2, "status.setResource", "health", 0)
  --   storage.userNpc = false
  --   storage.userNpc2 = false
  -- end
end

function onInteraction(args)
  -- local testConfig = root.npcVariant("sextill", "gal", 1, 1)
  
  -- local userIndentity = world.getObjectParameter(args.sourceId, "name")
  
  -- sb.logInfo(tostring(userIndentity))
  -- sb.logInfo(tostring(world.entityExists(args.sourceId)))
  
  -- for k, v in pairs(testConfig.humanoidIdentity) do
  -- -- for k, v in pairs(userIndentity) do
  --   sb.logInfo(tostring(k))
  --   sb.logInfo(tostring(v))
  -- end
  
  -- storage.userNpc = world.spawnNpc(
  --   vec2.add({0.5, 5}, object.position()),
  --   "sextill",
  --   "giver",
  --   1,
  --   nil,
  --   {
  --     identity = {
  --       gender = "male"
  --     }
  --   }
  -- )
  -- 
  -- storage.userNpc2 = world.spawnNpc(
  --   vec2.add({-0.5, 5}, object.position()),
  --   "sextill",
  --   "receiver",
  --   1,
  --   nil,
  --   {
  --     identity = {
  --       gender = "female"
  --     }
  --   }
  -- )
  
  -- world.callScriptedEntity(storage.userNpc, "status.setResource", "health", 1)
  -- world.callScriptedEntity(storage.userNpc, "npc.dance", "posedance")
  
  -- world.callScriptedEntity(storage.userNpc2, "status.setResource", "health", 1)
    -- world.callScriptedEntity(args.sourceId, "")
  
  -- for k, v in pairs(args.source) do
  --   sb.logInfo(tostring(k))
  -- end
  -- local levelResult = world.breakObject(userNpc, true)
  -- local levelResult = world.callScriptedEntity(userNpc, "status.setResource", "health", 1)
  -- sb.logInfo(tostring(levelResult))
  
  -- for k, v in pairs(args) do
  --   sb.logInfo(tostring(k))
  --   sb.logInfo(tostring(v))
  --   if k == 'source' then
  --     for k1, v1 in pairs(v) do
  --       sb.logInfo(tostring(v1))
  --     end
  --   end
  -- end
  
end
