#!perl -ln0
sub h{$_=pop;while(/(\d)(\s*)(?=\d)/g){$f=$1;$s=$2;$'=~/./;s/$f$s$&/ $s / if$f+$&==10||$f==$&}$_}@r=0..(s/\n//g)-1;$o=$_;while($,ne$o){$,=$o;for$i(0..8){$e[$i]=h join'',map{substr$,,$i+$_*9,1}@r}$,='';for$i(@r){$,.=substr$_,$i,1for@e}$o=h$,}/\d/?print:0for$o=~/.{9}/g