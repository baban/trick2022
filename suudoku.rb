  $g=->&b{$b.times    .map(          &b)}   ;fork          {exit   };$h=->p{$g             .(){|i|$:[        i][p]}}       ;$o=->(      o,&b)       {o.map.
 with_index(&b)};;    $e=->          &b{;   (0..2)         .to_a   .shuffle.map(         &b)};$t=->{$s.(     ).map{      |cn|[cn,       $m.(         cn)]}
.sort_by{|c|c[1].     size;          }};$c  =0..8          ;;$p=   ->(o){o.flatten};    Process.wait;$a=     ->(&b)    {(0..2)          .to_a        .map(
&b)};                 $j=->          p{$g   .(){|          k|$p.   ($:)       [9*(3*   (p/9/3       )+k/3    )+3*(p  %9/3)+k            %3]}}        ;$b=9
$m=->p                {(1..9)        .to_a  .-($h          .(p%9   )+$i        .(p/9   )+$j          .(p)    ).compact};                $u=->        {puts(
"\033[2J\033[0;0H"    )};$s          =->{   $o.(           $p.(    $:)){       |v,i|   (!v&&         i)||    nil}.select                {|v|v        }};$f=
->(t,&b){$o.(t){|a,   i|$o.          (a){|  v,j|b          .(v,i   ,j)}}       };$r=   ->(p,v        ){$:[   p/9][p%9]=v;               $u.();       pg($")
print;pg($:);sleep    0.02;          };def  pg(g);         g.map   {|l|(       print   *l.map       {|v|v    ||'-'})};end;              $-K=       ->(f,s){
            pg($:)    ;;$w.         ();$v   .(s).          map{|   i|$:[       i/9][   i%9]=       $-i=nil   };$>=open(f,"w");          pg($:);$><<"\n"};$h=
->p{$g.(){|i|$:[i][   p]}};def suudoku(*_   );cs=$t.() ;(return    $:)if       $x.(    cs);$c,     $b=_;cn   ,vs=cs[0   ];vs.each        do |v|;;;$r.(cn,v)
  return($:) if         suudoku(*_);end;     $:[cn/9][cn%9]=nil    ;end;$v=->s{(0..     80).to_a.sort_by     {rand(      s)}[0..55       ]};;$l=->s{$f.($e.
  (){|i|$i.(s+          i)}){|v,i,j|$:[      s+i][j]=v}};$k=->     (s){$f.($e.(){       |i|$h.(s+i)}){|v,    i,j|$:[      j][s+i]=v      }};;;$x=->(cs){cs
  .empty?};$w=          ->{$a.(){|i|$k.       (i*3)};$a.(){|i|     $l.(i*3)}};            $d=->(&b){$c      .map(&b)}     ;$i=->p{$g.(    ){|i|$:[p][i]}}

