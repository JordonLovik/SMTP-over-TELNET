Set cloner = Createobject("wscript.shell")
cloner.run"cmd" 'run cmd.exe
wscript.sleep 500

cloner.sendkeys"telnet smtpserveraddress 25" 'Example: telnet SMTP.gmail.com 587
cloner.sendkeys("{ENTER}")
wscript.sleep 1000

cloner.sendkeys"helo emaildomain.com" 'Example: gmail.com
cloner.sendkeys("{ENTER}")
wscript.sleep 500

cloner.sendkeys"MAIL FROM: attacker@emaildomain.com" 'Example: email@gmail.com
cloner.sendkeys("{ENTER}")
wscript.sleep 500

cloner.sendkeys"RCPT TO: anyone@email.com " 'Example: email2@gmail.com
cloner.sendkeys("{ENTER}")
wscript.sleep 500

cloner.sendkeys"DATA"
cloner.sendkeys("{ENTER}")
wscript.sleep 500
cloner.sendkeys("{ENTER}")
wscript.sleep 500

cloner.sendkeys"SUBJECT: SMTP over Telnet test"
cloner.sendkeys("{ENTER}")
wscript.sleep 500

cloner.sendkeys"Test performed by SMTP over Telnet a script by Jordon Lovik"
cloner.sendkeys("{ENTER}")
wscript.sleep 500

cloner.sendkeys"."
cloner.sendkeys("{ENTER}")
wscript.sleep 500

cloner.sendkeys"QUIT"
wscript.sleep 5000
cloner.sendkeys("{ENTER}")
wscript.sleep 5000
