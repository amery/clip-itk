#include "box.ch"
*charset koi8-r
//function main()
clear screen
set dispbox off
dispbox(1,1,4,10,2)
dispbox(5,1,10,10,'ฅ จกฎ ซก') // utf-8: 'โโโโโโโโ'
@ 1,20 say 'ฅ จกฎ ซก' // utf-8: 'โโโโโโโโ'
@ 1,30 say B_DOUBLE
set dispbox on
dispbox(11,1,15,10,2)
dispbox(16,1,20,10,'ฅ จกฎ ซก') // utf-8: 'โโโโโโโโ'
@ 10,20 say 'ฅ จกฎ ซก' // utf-8: 'โโโโโโโโ'
@ 10,30 say B_DOUBLE
@ 21,0 say ""
s1:='ฅ จกฎ ซก' // utf-8: 'โโโโโโโโ'
s2:=translate_charset(__CHARSET__,host_charset(),s1)
s3:=translate_charset(__CHARSET__,host_charset(),'ฅ จกฎ ซก') // utf-8: 'โโโโโโโโ'
? __CHARSET__,host_charset()
? s1,s2,s3,B_DOUBLE,s1==s2,s1==s3,s1==B_DOUBLE
?
return


