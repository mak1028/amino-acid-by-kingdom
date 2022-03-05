
create table amino_acids_arc(
 phe decimal(15,8), leu decimal(15,8), ser decimal(15,8), ile decimal(15,8), val decimal(15,8), pro decimal(15,8), thr decimal(15,8), ala decimal(15,8), 
 tyr decimal(15,8), his decimal(15,8), gln decimal(15,8), asn decimal(15,8), lys decimal(15,8), asp decimal(15,8), glu decimal(15,8), 
 cys decimal(15,8), arg decimal(15,8), gly decimal(15,8), stop_codon decimal(15,8), met decimal(15,8), trp decimal(15,8))

 --PHE CODONS
insert into amino_acids_arc(phe)  
select avg(try_convert(decimal(15,8), UUU)) from codons where Kingdom='arc'
union
select avg(try_convert(decimal(15,8), UUC)) from codons where Kingdom='arc'


--LYS CODONS
insert into amino_acids_arc(lys)  
select avg(convert(decimal(15,8), AAA)) from codons where Kingdom='arc'
union
select avg(convert(decimal(15,8), AAG)) from codons where Kingdom='arc'
select sum(lys) from amino_acids_arc


--ILE CODONS
insert into amino_acids_arc(ile)  
select avg(convert(decimal(15,8), AUU)) from codons where Kingdom='arc'
union
select avg(convert(decimal(15,8), AUC)) from codons where Kingdom='arc'
union
select avg(convert(decimal(15,8), AUA)) from codons where Kingdom='arc'

--LEU CODONS
insert into amino_acids_arc(leu)  
select avg(try_convert(decimal(15,8), UUA)) from codons where Kingdom='arc'
union
select avg(try_convert(decimal(15,8), UUG)) from codons where Kingdom='arc'
union
select avg(convert(decimal(15,8), CUU)) from codons where Kingdom='arc'
union
select avg(convert(decimal(15,8), CUC)) from codons where Kingdom='arc'
union
select avg(convert(decimal(15,8), CUA)) from codons where Kingdom='arc'
union
select avg(convert(decimal(15,8), CUG)) from codons where Kingdom='arc'

--SER CODONS
insert into amino_acids_arc(ser)  
select avg(convert(decimal(15,8), UCU)) from codons where Kingdom='arc'
union
select avg(convert(decimal(15,8), UCC)) from codons where Kingdom='arc'
union
select avg(convert(decimal(15,8), UCA)) from codons where Kingdom='arc'
union
select avg(convert(decimal(15,8), UCG)) from codons where Kingdom='arc'
union
select avg(convert(decimal(15,8), AGU)) from codons where Kingdom='arc'
union
select avg(convert(decimal(15,8), AGC)) from codons where Kingdom='arc'

--VAL CODONS
insert into amino_acids_arc(val)  
select avg(convert(decimal(15,8), GUU)) from codons where Kingdom='arc'
union
select avg(convert(decimal(15,8), GUC)) from codons where Kingdom='arc'
union
select avg(convert(decimal(15,8), GUA)) from codons where Kingdom='arc'
union
select avg(convert(decimal(15,8), GUG)) from codons where Kingdom='arc'

--PRO CODONS
insert into amino_acids_arc(pro)  
select avg(convert(decimal(15,8), CCU)) from codons where Kingdom='arc'
union
select avg(convert(decimal(15,8), CCC)) from codons where Kingdom='arc'
union
select avg(convert(decimal(15,8), CCA)) from codons where Kingdom='arc'
union
select avg(convert(decimal(15,8), CCG)) from codons where Kingdom='arc'


--THR CODONS
insert into amino_acids_arc(thr)  
select avg(convert(decimal(15,8), ACU)) from codons where Kingdom='arc'
union
select avg(convert(decimal(15,8), ACC)) from codons where Kingdom='arc'
union
select avg(convert(decimal(15,8), ACA)) from codons where Kingdom='arc'
union
select avg(convert(decimal(15,8), ACG)) from codons where Kingdom='arc'

--ALA CODONS
insert into amino_acids_arc(ala)  
select avg(convert(decimal(15,8), GCU)) from codons where Kingdom='arc'
union
select avg(convert(decimal(15,8), GCC)) from codons where Kingdom='arc'
union
select avg(convert(decimal(15,8), GCA)) from codons where Kingdom='arc'
union
select avg(convert(decimal(15,8), GCG)) from codons where Kingdom='arc'

--TYR CODONS
insert into amino_acids_arc(tyr)  
select avg(convert(decimal(15,8), UAU)) from codons where Kingdom='arc'
union
select avg(convert(decimal(15,8), UAC)) from codons where Kingdom='arc'

--HIS CODONS
insert into amino_acids_arc(his)  
select avg(convert(decimal(15,8), CAU)) from codons where Kingdom='arc'
union
select avg(convert(decimal(15,8), CAC)) from codons where Kingdom='arc'


--GIN CODONS
insert into amino_acids_arc(gln)  
select avg(convert(decimal(15,8), CAA)) from codons where Kingdom='arc'
union
select avg(convert(decimal(15,8), CAG)) from codons where Kingdom='arc'

--ASN CODONS
insert into amino_acids_arc(asn)  
select avg(convert(decimal(15,8), AAU)) from codons where Kingdom='arc'
union
select avg(convert(decimal(15,8), AAC)) from codons where Kingdom='arc'

--GLU CODONS
insert into amino_acids_arc(glu)  
select avg(convert(decimal(15,8), GAA)) from codons where Kingdom='arc'
union
select avg(convert(decimal(15,8), GAG)) from codons where Kingdom='arc'


--ASP CODONS
insert into amino_acids_arc(asp)  
select avg(convert(decimal(15,8), GAU)) from codons where Kingdom='arc'
union
select avg(convert(decimal(15,8), GAC)) from codons where Kingdom='arc'


--CYS CODONS
insert into amino_acids_arc(cys)  
select avg(convert(decimal(15,8), UGU)) from codons where Kingdom='arc'
union
select avg(convert(decimal(15,8), UGC)) from codons where Kingdom='arc'


--ARG CODONS
insert into amino_acids_arc(arg)  
select avg(convert(decimal(15,8), CGU)) from codons where Kingdom='arc'
union
select avg(convert(decimal(15,8), CGC)) from codons where Kingdom='arc'
union
select avg(convert(decimal(15,8), CGA)) from codons where Kingdom='arc'
union
select avg(convert(decimal(15,8), CGG)) from codons where Kingdom='arc'


--GLY CODONS
insert into amino_acids_arc(gly)  
select avg(convert(decimal(15,8), GGU)) from codons where Kingdom='arc'
union
select avg(convert(decimal(15,8), GGC)) from codons where Kingdom='arc'
union
select avg(convert(decimal(15,8), GGA)) from codons where Kingdom='arc'
union
select avg(convert(decimal(15,8), GGG)) from codons where Kingdom='arc'

--STOPS
insert into amino_acids_arc(stop_codon)  
select avg(try_convert(decimal(15,8), UAA)) from codons where Kingdom='arc'
union
select avg(try_convert(decimal(15,8), UAG)) from codons where Kingdom='arc'
union
select avg(try_convert(decimal(15,8), UGA)) from codons where Kingdom='arc'

--MET
insert into amino_acids_arc(met)  
select avg(convert(decimal(15,8), AUG)) from codons where Kingdom='arc'

--TRP
insert into amino_acids_arc(trp)  
select avg(convert(decimal(15,8), UGG)) from codons where Kingdom='arc'



create table arc(
	 phe decimal(15,8), leu decimal(15,8), ser decimal(15,8), ile decimal(15,8), val decimal(15,8), pro decimal(15,8), thr decimal(15,8), ala decimal(15,8), 
 tyr decimal(15,8), his decimal(15,8), gln decimal(15,8), asn decimal(15,8), lys decimal(15,8), asp decimal(15,8), glu decimal(15,8), 
 cys decimal(15,8), arg decimal(15,8), gly decimal(15,8), stop_codon decimal(15,8), met decimal(15,8), trp decimal(15,8))


insert into arc(phe) select sum(phe) from amino_acids_arc 
insert into arc(leu) select sum(leu) from amino_acids_arc
insert into arc(ser) select sum(ser) from amino_acids_arc
insert into arc(ile) select sum(ile) from amino_acids_arc
insert into arc(val) select sum(val) from amino_acids_arc
insert into arc(pro) select sum(pro) from amino_acids_arc
insert into arc(thr) select sum(thr) from amino_acids_arc
insert into arc(ala) select sum(ala) from amino_acids_arc
insert into arc(tyr) select sum(tyr) from amino_acids_arc
insert into arc(his) select sum(his) from amino_acids_arc
insert into arc(gln) select sum(gln) from amino_acids_arc
insert into arc(asn) select sum(asn) from amino_acids_arc
insert into arc(lys) select sum(lys) from amino_acids_arc
insert into arc(asp) select sum(asp) from amino_acids_arc
insert into arc(glu) select sum(glu) from amino_acids_arc
insert into arc(cys) select sum(cys) from amino_acids_arc
insert into arc(arg) select sum(arg) from amino_acids_arc
insert into arc(gly) select sum(gly) from amino_acids_arc
insert into arc(stop_codon) select sum(stop_codon) from amino_acids_arc
insert into arc(met) select sum(met) from amino_acids_arc
insert into arc(trp) select sum(trp) from amino_acids_arc

update arc set phe= 0 where  phe is null
update arc set leu= 0 where  leu is null
update arc set ser= 0 where  ser is null
update arc set ile= 0 where  ile is null
update arc set val= 0 where  val is null
update arc set pro= 0 where  pro is null
update arc set thr= 0 where  thr is null
update arc set ala= 0 where  ala is null
update arc set tyr= 0 where  tyr is null
update arc set his= 0 where  his is null
update arc set gln= 0 where  gln is null
update arc set asn= 0 where  asn is null
update arc set lys= 0 where  lys is null
update arc set asp= 0 where  asp is null
update arc set glu= 0 where  glu is null
update arc set cys= 0 where  cys is null
update arc set arg= 0 where  arg is null
update arc set gly= 0 where  gly is null
update arc set stop_codon= 0 where  stop_codon is null
update arc set met= 0 where  met is null
update arc set trp= 0 where  trp is null

create table archaea(
	 phe decimal(15,8), leu decimal(15,8), ser decimal(15,8), ile decimal(15,8), val decimal(15,8), pro decimal(15,8), thr decimal(15,8), ala decimal(15,8), 
 tyr decimal(15,8), his decimal(15,8), gln decimal(15,8), asn decimal(15,8), lys decimal(15,8), asp decimal(15,8), glu decimal(15,8), 
 cys decimal(15,8), arg decimal(15,8), gly decimal(15,8), stop_codon decimal(15,8), met decimal(15,8), trp decimal(15,8))

 
insert into archaea(phe, leu, ser, ile, val, pro, thr, ala, tyr, his, gln, asn, lys, asp, glu, cys, arg, gly, stop_codon, met, trp)
select MAX(phe), MAX(leu), MAX(ser), MAX(ile), MAX(val), MAX(pro), MAX(thr), MAX(ala), 
MAX(tyr), MAX(his), MAX(gln), MAX(asn), MAX(lys), MAX(asp), MAX(glu), MAX(cys), 
MAX(arg), MAX(gly), MAX(stop_codon), MAX(met), MAX(trp)
from arc

select * from archaea

drop table arc

