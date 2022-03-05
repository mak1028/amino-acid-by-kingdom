select * from codons where Kingdom='pln'

create table amino_acids_pln(
 phe decimal(15,8), leu decimal(15,8), ser decimal(15,8), ile decimal(15,8), val decimal(15,8), pro decimal(15,8), thr decimal(15,8), ala decimal(15,8), 
 tyr decimal(15,8), his decimal(15,8), gln decimal(15,8), asn decimal(15,8), lys decimal(15,8), asp decimal(15,8), glu decimal(15,8), 
 cys decimal(15,8), arg decimal(15,8), gly decimal(15,8), stop_codon decimal(15,8), met decimal(15,8), trp decimal(15,8))

 --PHE CODONS
insert into amino_acids_pln(phe)  
select avg(try_convert(decimal(15,8), UUU)) from codons where Kingdom='pln'
union
select avg(try_convert(decimal(15,8), UUC)) from codons where Kingdom='pln'


--LYS CODONS
insert into amino_acids_pln(lys)  
select avg(convert(decimal(15,8), AAA)) from codons where Kingdom='pln'
union
select avg(convert(decimal(15,8), AAG)) from codons where Kingdom='pln'
select sum(lys) from amino_acids_pln


--ILE CODONS
insert into amino_acids_pln(ile)  
select avg(convert(decimal(15,8), AUU)) from codons where Kingdom='pln'
union
select avg(convert(decimal(15,8), AUC)) from codons where Kingdom='pln'
union
select avg(convert(decimal(15,8), AUA)) from codons where Kingdom='pln'

--LEU CODONS
insert into amino_acids_pln(leu)  
select avg(try_convert(decimal(15,8), UUA)) from codons where Kingdom='pln'
union
select avg(try_convert(decimal(15,8), UUG)) from codons where Kingdom='pln'
union
select avg(convert(decimal(15,8), CUU)) from codons where Kingdom='pln'
union
select avg(convert(decimal(15,8), CUC)) from codons where Kingdom='pln'
union
select avg(convert(decimal(15,8), CUA)) from codons where Kingdom='pln'
union
select avg(convert(decimal(15,8), CUG)) from codons where Kingdom='pln'

--SER CODONS
insert into amino_acids_pln(ser)  
select avg(convert(decimal(15,8), UCU)) from codons where Kingdom='pln'
union
select avg(convert(decimal(15,8), UCC)) from codons where Kingdom='pln'
union
select avg(convert(decimal(15,8), UCA)) from codons where Kingdom='pln'
union
select avg(convert(decimal(15,8), UCG)) from codons where Kingdom='pln'
union
select avg(convert(decimal(15,8), AGU)) from codons where Kingdom='pln'
union
select avg(convert(decimal(15,8), AGC)) from codons where Kingdom='pln'

--VAL CODONS
insert into amino_acids_pln(val)  
select avg(convert(decimal(15,8), GUU)) from codons where Kingdom='pln'
union
select avg(convert(decimal(15,8), GUC)) from codons where Kingdom='pln'
union
select avg(convert(decimal(15,8), GUA)) from codons where Kingdom='pln'
union
select avg(convert(decimal(15,8), GUG)) from codons where Kingdom='pln'

--PRO CODONS
insert into amino_acids_pln(pro)  
select avg(convert(decimal(15,8), CCU)) from codons where Kingdom='pln'
union
select avg(convert(decimal(15,8), CCC)) from codons where Kingdom='pln'
union
select avg(convert(decimal(15,8), CCA)) from codons where Kingdom='pln'
union
select avg(convert(decimal(15,8), CCG)) from codons where Kingdom='pln'


--THR CODONS
insert into amino_acids_pln(thr)  
select avg(convert(decimal(15,8), ACU)) from codons where Kingdom='pln'
union
select avg(convert(decimal(15,8), ACC)) from codons where Kingdom='pln'
union
select avg(convert(decimal(15,8), ACA)) from codons where Kingdom='pln'
union
select avg(convert(decimal(15,8), ACG)) from codons where Kingdom='pln'

--ALA CODONS
insert into amino_acids_pln(ala)  
select avg(convert(decimal(15,8), GCU)) from codons where Kingdom='pln'
union
select avg(convert(decimal(15,8), GCC)) from codons where Kingdom='pln'
union
select avg(convert(decimal(15,8), GCA)) from codons where Kingdom='pln'
union
select avg(convert(decimal(15,8), GCG)) from codons where Kingdom='pln'

--TYR CODONS
insert into amino_acids_pln(tyr)  
select avg(convert(decimal(15,8), UAU)) from codons where Kingdom='pln'
union
select avg(convert(decimal(15,8), UAC)) from codons where Kingdom='pln'

--HIS CODONS
insert into amino_acids_pln(his)  
select avg(convert(decimal(15,8), CAU)) from codons where Kingdom='pln'
union
select avg(convert(decimal(15,8), CAC)) from codons where Kingdom='pln'


--GIN CODONS
insert into amino_acids_pln(gln)  
select avg(convert(decimal(15,8), CAA)) from codons where Kingdom='pln'
union
select avg(convert(decimal(15,8), CAG)) from codons where Kingdom='pln'

--ASN CODONS
insert into amino_acids_pln(asn)  
select avg(convert(decimal(15,8), AAU)) from codons where Kingdom='pln'
union
select avg(convert(decimal(15,8), AAC)) from codons where Kingdom='pln'

--GLU CODONS
insert into amino_acids_pln(glu)  
select avg(convert(decimal(15,8), GAA)) from codons where Kingdom='pln'
union
select avg(convert(decimal(15,8), GAG)) from codons where Kingdom='pln'


--ASP CODONS
insert into amino_acids_pln(asp)  
select avg(convert(decimal(15,8), GAU)) from codons where Kingdom='pln'
union
select avg(convert(decimal(15,8), GAC)) from codons where Kingdom='pln'


--CYS CODONS
insert into amino_acids_pln(cys)  
select avg(convert(decimal(15,8), UGU)) from codons where Kingdom='pln'
union
select avg(convert(decimal(15,8), UGC)) from codons where Kingdom='pln'


--ARG CODONS
insert into amino_acids_pln(arg)  
select avg(convert(decimal(15,8), CGU)) from codons where Kingdom='pln'
union
select avg(convert(decimal(15,8), CGC)) from codons where Kingdom='pln'
union
select avg(convert(decimal(15,8), CGA)) from codons where Kingdom='pln'
union
select avg(convert(decimal(15,8), CGG)) from codons where Kingdom='pln'


--GLY CODONS
insert into amino_acids_pln(gly)  
select avg(convert(decimal(15,8), GGU)) from codons where Kingdom='pln'
union
select avg(convert(decimal(15,8), GGC)) from codons where Kingdom='pln'
union
select avg(convert(decimal(15,8), GGA)) from codons where Kingdom='pln'
union
select avg(convert(decimal(15,8), GGG)) from codons where Kingdom='pln'

--STOPS
insert into amino_acids_pln(stop_codon)  
select avg(try_convert(decimal(15,8), UAA)) from codons where Kingdom='pln'
union
select avg(try_convert(decimal(15,8), UAG)) from codons where Kingdom='pln'
union
select avg(try_convert(decimal(15,8), UGA)) from codons where Kingdom='pln'

--MET
insert into amino_acids_pln(met)  
select avg(convert(decimal(15,8), AUG)) from codons where Kingdom='pln'

--TRP
insert into amino_acids_pln(trp)  
select avg(convert(decimal(15,8), UGG)) from codons where Kingdom='pln'



create table pln(
	 phe decimal(15,8), leu decimal(15,8), ser decimal(15,8), ile decimal(15,8), val decimal(15,8), pro decimal(15,8), thr decimal(15,8), ala decimal(15,8), 
 tyr decimal(15,8), his decimal(15,8), gln decimal(15,8), asn decimal(15,8), lys decimal(15,8), asp decimal(15,8), glu decimal(15,8), 
 cys decimal(15,8), arg decimal(15,8), gly decimal(15,8), stop_codon decimal(15,8), met decimal(15,8), trp decimal(15,8))


insert into pln(phe) select sum(phe) from amino_acids_pln 
insert into pln(leu) select sum(leu) from amino_acids_pln
insert into pln(ser) select sum(ser) from amino_acids_pln
insert into pln(ile) select sum(ile) from amino_acids_pln
insert into pln(val) select sum(val) from amino_acids_pln
insert into pln(pro) select sum(pro) from amino_acids_pln
insert into pln(thr) select sum(thr) from amino_acids_pln
insert into pln(ala) select sum(ala) from amino_acids_pln
insert into pln(tyr) select sum(tyr) from amino_acids_pln
insert into pln(his) select sum(his) from amino_acids_pln
insert into pln(gln) select sum(gln) from amino_acids_pln
insert into pln(asn) select sum(asn) from amino_acids_pln
insert into pln(lys) select sum(lys) from amino_acids_pln
insert into pln(asp) select sum(asp) from amino_acids_pln
insert into pln(glu) select sum(glu) from amino_acids_pln
insert into pln(cys) select sum(cys) from amino_acids_pln
insert into pln(arg) select sum(arg) from amino_acids_pln
insert into pln(gly) select sum(gly) from amino_acids_pln
insert into pln(stop_codon) select sum(stop_codon) from amino_acids_pln
insert into pln(met) select sum(met) from amino_acids_pln
insert into pln(trp) select sum(trp) from amino_acids_pln

update pln set phe= 0 where  phe is null
update pln set leu= 0 where  leu is null
update pln set ser= 0 where  ser is null
update pln set ile= 0 where  ile is null
update pln set val= 0 where  val is null
update pln set pro= 0 where  pro is null
update pln set thr= 0 where  thr is null
update pln set ala= 0 where  ala is null
update pln set tyr= 0 where  tyr is null
update pln set his= 0 where  his is null
update pln set gln= 0 where  gln is null
update pln set asn= 0 where  asn is null
update pln set lys= 0 where  lys is null
update pln set asp= 0 where  asp is null
update pln set glu= 0 where  glu is null
update pln set cys= 0 where  cys is null
update pln set arg= 0 where  arg is null
update pln set gly= 0 where  gly is null
update pln set stop_codon= 0 where  stop_codon is null
update pln set met= 0 where  met is null
update pln set trp= 0 where  trp is null

create table plant(
	 phe decimal(15,8), leu decimal(15,8), ser decimal(15,8), ile decimal(15,8), val decimal(15,8), pro decimal(15,8), thr decimal(15,8), ala decimal(15,8), 
 tyr decimal(15,8), his decimal(15,8), gln decimal(15,8), asn decimal(15,8), lys decimal(15,8), asp decimal(15,8), glu decimal(15,8), 
 cys decimal(15,8), arg decimal(15,8), gly decimal(15,8), stop_codon decimal(15,8), met decimal(15,8), trp decimal(15,8))

 
insert into plant(phe, leu, ser, ile, val, pro, thr, ala, tyr, his, gln, asn, lys, asp, glu, cys, arg, gly, stop_codon, met, trp)
select MAX(phe), MAX(leu), MAX(ser), MAX(ile), MAX(val), MAX(pro), MAX(thr), MAX(ala), 
MAX(tyr), MAX(his), MAX(gln), MAX(asn), MAX(lys), MAX(asp), MAX(glu), MAX(cys), 
MAX(arg), MAX(gly), MAX(stop_codon), MAX(met), MAX(trp)
from pln

select * from plant
drop table pln

