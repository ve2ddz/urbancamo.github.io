10 MODE8:DIM:GOSUB900:c$=CHR$(5):DEFCHR$(252)="123E020000":DEFCHR$(253)="2E2A3A0000":DEFCHR$(254)="A2A49C92A2":t$="N(��,��),N(��,��) a<��-��<b"
20 CLS:PRINTt$;TAB(0);"input new data x� (Y/N) ?";:a$=INPUT$(1,@)
22 IFa$<>"Y" ANDa$<>"y" THEN30
25 s$="x�":GOSUB"LIB0:S6020":GOSUB900
30 CLS:PRINTt$;TAB(0);"input new data x� (Y/N) ?";:a$=INPUT$(1,@)
32 IFa$<>"Y" ANDa$<>"y" THEN36
35 s$="x�":GOSUB"LIB0:S6030":GOSUB900
36 r=sa:IFr>1 THENs=sg:t=sm ELSEs=0:t=0
37 f=95:u=sz:IFu>1 THENv=sh:w=sn ELSEv=0:w=0
45 CLS:PRINTt$;
50 z=r:s$="n�":GOSUB500:r=z
55 z=s:s$="��":GOSUB500:s=z
60 z=t:s$="S�":GOSUB500:t=z
70 z=u:s$="n�":GOSUB500:u=z
75 z=v:s$="��":GOSUB500:v=z
80 z=w:s$="S�":GOSUB500:w=z
90 CLS:PRINT"Confidence level (1-�)[%]";
95 z=f:s$="1-�":GOSUB500:f=z:IFf<0 ORf>100 THEN95
97 CLS:PRINT"N(��,��),N(��,��)   ";f;"%";TAB(0);".....";
100 n=r+u-2:p=(1-f/100)/2:sr=0:GOSUB"LIB0:S6430":GOSUB900:IFsr THEN*
110 z=s-v-x*SQR((1/r+1/u)*((t+w)/n)):GOSUB400:a=z
120 z=s-v+x*SQR((1/r+1/u)*((t+w)/n)):GOSUB400:b=z
130 PRINTc$;a;"< ��-�� <";b;:a$=INPUT$(1,@):GOTO45
400 IFz THENz=ROUND(z,LOG(ABSz)-5)
410 RETURN
500 LOCATE0,1:PRINTc$;s$;"=";z;"?";:INPUT@10;z:LOCATE0,0:RETURN
900 ONERRORGOTO910:RETURN
910 IFERR=1 THENCLS:ONERRORGOTO0
920 IFERL=500 THENRESUME500
930 LOCATE0,1:PRINTc$;"not found";:z$=INPUT$(1,@):RESUME20
