5 ONERRORGOTO1000
10 MODE8:DIM:ERASEa,a$:DIMa(5),a$(1):a$(1)="Input":a$(0)="Delete":c$=CHR$(5)
20 CLS:PRINT"Input data (";s$;")";TAB(0);">Input,Delete,Clear,List,End ?";
30 a=ASC(INPUT$(1)):IFa>96 THENa=a-32
40 ONa-66 GOTO300,100,200,,,,100,,,500
50 GOTO30
100 CLS:PRINTa$(SGN(a-68));" data (";s$;")";TAB(21);"[EXE]:menu";:z=SGN(a-69)
110 LOCATE0,1:PRINTc$;s$;"?";
120 LOCATELEN(s$)+1,1:INPUT@12;z$:LOCATE0,0:IFz$="" THEN20 ELSEx=VALF(z$)
150 r=sa+z:s=sb+x*z:u=sd+x*x*z
160 sa=r:sb=s:sd=u:GOTO110
200 c=6
210 sg=sb/sa
220 sm=sd-sg*sb:IFsm<0 THENsm=0
250 si=SQR(sm/sa)
260 sk=SQR(sm/(sa-1))
280 RETURN
300 PRINTc$;"clear data  (Y/N) ?";
310 a$=INPUT$(1,@):IFa$<>"Y" ANDa$<>"y" THEN20
320 sa=0:sb=0:sd=0:GOTO20
500 CLS:GOSUB200:GOSUB580:i=1:GOSUB600:i=2
510 GOSUB600
520 z=ASC(INPUT$(1,@)):IFz=28 ORz=29 THEN20
530 IFz<>13 ANDz<>30 ANDz<>31 THEN520
540 IF(z=30 ANDi=1) OR(z=31 ANDi=c) THEN520
550 IFz=30 THENi=i-2
560 i=i+1:IFi=<c THEN510 ELSE20
580 DEFCHR$(255)="0808003E00"
590 a(0)=sa:a(1)=sb:a(2)=sd:a(3)=sg:a(4)=si:a(5)=sk:RETURN
600 RESTORE(600+i*10):READa$,b$:PRINTTAB(0);a$;TAB(7);":";b$;TAB(13);"=";a(i-1);:RETURN
610 DATACNT,n
620 DATASUMX,�x
630 DATASUMX2,�x�
640 DATAMEANX,�x/n
650 DATASDXN,x�n
660 DATASDX,x�n�
1000 IFERR=1 THENCLS:ONERRORGOTO0
1010 IFERL=120 THENRESUME120
1050 IFERL=210 THENc=3:RESUME280
1060 IFERL=260 THENc=5:RESUME280
1080 IFERL=150 THENLOCATE0,1:PRINTc$;"data over";:z$=INPUT$(1,@):RESUME20
1090 LOCATE0,1:PRINTc$;"not found";:a$=INPUT$(1,@):RESUME20
