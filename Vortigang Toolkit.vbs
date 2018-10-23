set shell = createobject ("wscript.shell")

strtext = inputbox ("Welcome Brother. What would you like to spam?")
strtimes = inputbox ("How many times would you like to spam your message Brother?")
strspeed = inputbox ("How fast would you like to spam your message Brother? (1000 = one per sec, 100 = 10 per sec. A speed of 800 wont trigger Discords antispam)")
strtimeneed = inputbox ("How many SECONDS do you need to get to your input box Brother?")
If not isnumeric (strtimes & strspeed & strtimeneed) then
msgbox "You didnt enter a number R-Tard. Try again."
wscript.quit
End If
strtimeneed2 = strtimeneed * 1000
do
msgbox "You have " & strtimeneed & " seconds to get to your input area where you are going to spam."
wscript.sleep strtimeneed2
shell.sendkeys ("Galunga" & "{enter}")
for i=0 to strtimes
shell.sendkeys (strtext & "{enter}")
wscript.sleep strspeed
Next
shell.sendkeys ("The Vortigang sends their regards" & "{enter}")
wscript.sleep strspeed * strtimes / 10
returnvalue=MsgBox ("Would you like to spam your message again Brother?",36)
If returnvalue=6 Then
Msgbox "Okay Brother, we will spam again"
End If
If returnvalue=7 Then
msgbox "Program Ending"
wscript.quit
End IF
loop