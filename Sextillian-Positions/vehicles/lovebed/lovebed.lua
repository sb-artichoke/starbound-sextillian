require("/scripts/vec2.lua")

function init()
end

function update()
  animate()
end

function animate()
  animator.rotateTransformationGroup("middleSeat", 1 * math.pi / 180, {0.2, 1.4})
end