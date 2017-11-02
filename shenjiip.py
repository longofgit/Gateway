import pycli

pycli.cmd("config\r\n")
pycli.cmd("was audit server-ip 10.1.254.253\r\n")
pycli.cmd("exit\r\n")
pycli.cmd("write\r\n")
