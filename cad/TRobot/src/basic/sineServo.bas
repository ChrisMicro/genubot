let pin = 4 
let angle = 0 
let value = 0
let pos=0
let s = 1

timer 50,[taskRoutine]

html |<p> angle </p>|
textbox angle 
html |<p> pos </p>|
textbox pos
html |<p> speed </p>|
slider s,0,500

print
button "Exit", [stopProgram] 
wait 


[taskRoutine] 
angle=angle+s*0.001
value=sin(angle)
pos=(value+1)*100
io(servo,pin,pos) 
wait 

[stopProgram]
' set servo pin to zero ( turn off pwm ) 
io(po,pin,0) 
end

