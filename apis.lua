-- verifica Gasosa
function detectFuel()
  if turtle.getFuelLevel() < 10 and turtle.getItemCount(16) > 0 then
      turtle.select(16)
      turtle.refuel(1)
      print("Recarreguei patrao tamo com: "..turtle.getFuelLevel())
  elseif turtle.getItemCount(16) == 0 and turtle.getFuelLevel() == 0 then
      print("Ow bota gasosa ai no slot 16 Mano")
  end
  turtle.select(1)
end

