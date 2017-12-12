-- param entity
-- param anchorIndex
function vehicleLounge(args, board)
  if args.entity == nil then return false end
  if not npc.isLounging() or npc.loungingIn() ~= args.entity then
    npc.setLounging(args.entity, args.anchorIndex)
  end
  self.lounge = true
  return true
end