os.loadAPI("apis.lua")
-- verificar se eh uma arvore tio
function verificaArvore(direcao)
  -- direcao recebe f ou u
  if direcao == "f" then
    vf, valor = turtle.inspect()
  else
    vf, valor = turtle.inspectUp()
  end
  if vf then
    if valor.name == "minecraft:oak_log" then
      print("Eh uma arvore, pode cortar")
      return true
    else
      print("Vo da o fora mermao, isso ai eh: "..valor.name)
      return false
    end
  end
end

-- corta a arvore
turtle.select(1)
if verificaArvore("f") then
    turtle.dig()
    apis.detectFuel()
    turtle.forward()
end

while verificaArvore("u") do
  turtle.digUp()
  apis.detectFuel()
  turtle.up()
end

-- volta
while not turtle.detectDown() do
  apis.detectFuel()
  turtle.down()
end
