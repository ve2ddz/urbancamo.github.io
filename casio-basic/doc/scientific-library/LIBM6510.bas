5 ONERRORGOTO1000:RESTORE :MODE8:DIM:ERASEa,a$:DIMa(14),a$(5):c$=CHR$(5):IFsq<0ORsq>3ORFRACsq<>0THENsq=0
12 IFtz<0ORtz>3ORFRACtz<>0THENtz=0
14 FORi=0TO5:READa$(i):NEXT:d$="             :y?"
15 DATAy=a+bx,y=a+blnx,y=ab^x,y=ax^b,Delete,Input
20 l=21+ABS(SGN(sq-1))*2:CLS:PRINT"Regression analysis";TAB(l);"[";a$(sq);"]";TAB(0);">In,Del,Clear,List,eoX,eoY,P ?";
30 IFINKEY$=""THENa=ASC(INPUT$(1)):IFa>96THENa=a-32
40 IFa=186THENsq=(sq+1)MOD4:GOTO20
50 ONa-66GOTO300,100,,,,,100:IF(sq ANDtz)=0THENONa-75GOTO500,,,,800,,,,,,,,400,450
60 GOTO30
100 CLS:PRINTa$(SGN(a-68)+4);" data (x,y)";TAB(21);"[EXE]:menu";:z=SGN(a-69)
110 LOCATE0,1:PRINTc$;"x?";d$;
120 LOCATE2,1:INPUT@12;z$:LOCATE0,0:IFz$=d$ ORASC(z$)=0THEN20ELSEx=VALF(z$):j=0
125 IFx=<0THENIF(1ANDsq)=1THEN120ELSEtz=tz OR1ELSEIFx>0THENj=LNx:g=ss+j*z:m=su+j*j*z
130 r=sa+z:s=sb+x*z:u=sd+x*x*z
140 LOCATE18,1:INPUT@12;z$:LOCATE0,0:IFz$=""THEN20ELSEy=VALF(z$)
145 IFy=<0THENIFsq>1THEN140ELSEtz=tz OR2ELSEIFy>0THENk=LNy:h=st+k*z:n=sv+k*k*z:p=sx+x*k*z:q=sy+j*k*z
160 t=sc+y*z:v=se+y*y*z:w=sf+x*y*z:o=sw+j*y*z:sa=r:sb=s:sc=t:sd=u:se=v:sf=w:ss=g:st=h:su=m:sv=n:sw=o:sx=p:sy=q:GOTO110
200 c=15:GOSUB350:ONsq GOSUB360,370,380
210 sg=a(1)/sa:sh=a(2)/sa
220 sm=a(3)-sg*a(1):IFsm<0THENsm=0
230 sn=a(4)-sh*a(2):IFsn<0THENsn=0
240 so=a(5)-a(1)*sh:sp=sh*a(3)-sg*a(5):si=SQR(sm/sa):sj=SQR(sn/sa)
260 sk=SQR(sm/(sa-1)):sl=SQR(sn/(sa-1))
270 p=sp/sm:q=so/sm:r=so/SQR(sm*sn):IFsq>1THENp=EXPp:IFsq=2THENq=EXPq
280 RETURN
300 PRINTc$;"clear data  (Y/N) ?";:a$=INPUT$(1,@)
310 IFa$="Y"ORa$="y"THENsa=0:sb=0:sc=0:sd=0:se=0:sf=0:ss=0:st=0:su=0:sv=0:sw=0:sx=0:sy=0:tz=0
320 GOTO20
350 a(1)=sb:a(2)=sc:a(3)=sd:a(4)=se:a(5)=sf:RETURN
360 a(1)=ss:a(3)=su:a(5)=sw:RETURN
370 a(2)=st:a(4)=sv:a(5)=sx:RETURN
380 a(1)=ss:a(2)=st:a(3)=su:a(4)=sv:a(5)=sy:RETURN
400 CLS:GOSUB200:IFc<15ORso=0THEN20
410 DEFCHR$(255)="12548C4A12":CLS:PRINT"Estimation of x [";a$(sq);"]";
420 LOCATE0,1:PRINTc$;"y?";:INPUT@10;z$:LOCATE0,0:IFz$="" THEN20ELSEs=VALF(z$)
430 ONsq+1GOSUB950,960,970,980:LOCATE12,1:PRINT":�=";STR$(a);:z$=INPUT$(1,@):GOTO420
450 CLS:GOSUB200:IFc<15ORsm=0THEN20
460 DEFCHR$(255)="124A844810":CLS:PRINT"Estimation of y [";a$(sq);"]";
470 LOCATE0,1:PRINTc$;"x?";:INPUT@10;z$:LOCATE0,0:IFz$="" THEN20ELSEs=VALF(z$)
480 ONsq+1GOSUB900,910,920,930:LOCATE12,1:PRINT":�=";STR$(a);:z$=INPUT$(1,@):GOTO470
500 CLS:GOSUB200:GOSUB580:i=1:GOSUB600:i=2
510 GOSUB600
520 z=ASC(INPUT$(1,@)):IFz=28ORz=29THEN20
530 IFz<>13ANDz<>30ANDz<>31THEN520
540 IF(z=30ANDi=1)OR(z=31ANDi=c)THEN520
550 IFz=30THENi=i-2
560 i=i+1:IFi=<c THEN510ELSE20
580 DEFCHR$(254)="0808003E00":DEFCHR$(253)="FE003E203E"
590 a(0)=sa:a(6)=sg:a(7)=sh:a(8)=si:a(9)=sj:a(10)=sk:a(11)=sl:a(12)=p:a(13)=q:a(14)=r:RETURN
600 GOSUB605:READa$,a$,b$:PRINTTAB(0);a$;TAB(7);":";b$;TAB(13);"=";a(i-1);:RETURN
605 IFi=1ORi=15THENj=0:GOTO609
606 IFi=6THENj=sq:GOTO609
607 IFi>12THENj=SGN(sq):GOTO609
608 k=i MOD2:IF(i<6ANDk=1)OR(i>6ANDk=0)THENj=INT(sq/2)ELSEj=(sq MOD2)
609 RESTORE(600+i*10+j):RETURN
610 DATACNT,CNT,n
620 DATASUMX,SUMX,�x
621 DATASUMLNX,SUM�X,��x
630 DATASUMY,SUMY,�y
631 DATASUMLNY,SUM�Y,��y
640 DATASUMX2,SUMX2,�x�
641 DATASUMLNX2,SUM�X2,��x�
650 DATASUMY2,SUMY2,�y�
651 DATASUMLNY2,SUM�Y2,��y�
660 DATASUMXY,SUMXY,�xy
661 DATASUMLNXY,SUM�XY,��xy
662 DATASUMXLNY,SUMX�Y,�x�y
663 DATASUMLNXLNY,SUM�X�Y,��x�y
670 DATAMEANX,MEANX,�x/n
671 DATAMEANLNX,MEAN�X,��x/n
680 DATAMEANY,MEANY,�y/n
681 DATAMEANLNY,MEAN�Y,��y/n
690 DATASDXN,SDXN,x�n
691 DATASDLNXN,SD�XN,�x�n
700 DATASDYN,SDYN,y�n
701 DATASDLNYN,SD�YN,�y�n
710 DATASDX,SDX,x�n�
711 DATASDLNX,SD�X,�x�n�
720 DATASDY,SDY,y�n�
721 DATASDLNY,SD�Y,�y�n�
730 DATALRA,LRA,a
731 DATARA,RA,a
740 DATALRB,LRB,b
741 DATARB,RB,b
750 DATACOR,COR,r
800 LOCATE0,1:PRINTc$;".....";:GOSUB200:GOSUB590
810 FORi=1TOc:GOSUB605:READa$:LPRINTa$;TAB(10);"=";a(i-1):NEXT:GOTO20
900 a=p+q*s:RETURN
910 a=p+q*LNs:RETURN
920 a=p*q^s:RETURN
930 a=p*s^q:RETURN
950 a=(s-p)/q:RETURN
960 a=EXP((s-p)/q):RETURN
970 a=(LNs-LNp)/LNq:RETURN
980 a=EXP((LNs-LNp)/q):RETURN
1000 IFERR=1THENCLS:ONERRORGOTO0
1010 IFERL=120THENRESUME120
1020 IFERL=140THENRESUME140
1030 IFERL=420THENRESUME420
1040 IFERL=470THENRESUME470
1050 IFERL=210THENc=6:RESUME280
1060 IFERL=260THENc=10:RESUME280
1070 IFERL=270THENc=12:RESUME280
1080 IF(ERL=130ORERL=150)ANDERR=13THENLOCATE0,1:PRINTc$;"data over";:z$=INPUT$(1,@):RESUME20
1090 LOCATE0,1:PRINTc$;"not found";:a$=INPUT$(1,@):RESUME20
