#!/bin/bash
read -p 'Enter account name: ' user
read -p 'Enter account pass: ' pass
java -server -Dfile.encoding=UTF-8 -Xmx32m -cp config:./* l2.authserver.AccountManager -c $user $pass
exit