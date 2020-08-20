
function sleep(s)
  local ntime = os.time() + s
  repeat until os.time() > ntime
end-- Opens a file in read

file = io.open("cache/wasd.log", "r")
while true do 
	file:seek("end", -1)
cmd = file:read("*a")
if cmd == "w" then
	
os.execute("w.ahk")

elseif cmd == "s" then
os.execute("s.ahk")

elseif cmd == "a" then
os.execute("a.ahk")

elseif cmd == "d" then
os.execute("d.ahk")
else
	print("else")
	print(cmd)
end
end
sleep(10)