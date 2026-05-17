#import "../../template.typ": answer-style

#show: answer-style

#set text(lang: "zh")

= 上期答案

#heading(outlined: false, depth: 2)[数学挑战题 1]

当且仅当$m plus n eq p plus q$且$abs(frac(m,p)) = 2^k (k in ZZ)$，符合条件的$phi$和$psi$一定构造出来。

这里不作详细的证明，仅就主要思路作讲解。

首先，读者可以发现当一次二项式与$f,g,h$复合后，常数项与一次项系数的和一定不变。因此，保证该和不变后，仅需考虑一次项系数。而$f,g$分别使之扩大或缩小2倍，$h$使之变为相反数，$m$与$p$的关系就呼之欲出了。

#heading(outlined: false, depth: 2)[数学挑战题 2]

自然是不可能的。

这里也不详细证明。

不失一般性，从初始状态中选取任意两个盒子进行考察。可以证明，这两个盒子球数的差值在模$n$意义下一定是一个不变的非零值，从而永远不可能有多个盒子同时为空，因为这说明它们的球数的差值为零，这是不可能的。

#heading(outlined: false, depth: 2)[与非门实现异或门]

$
  F & =not(not(not(A and B) and A) and not(not(A and B) and B) )\
  & = not(not( (not A or not B) and A) and not( (not A or not B) and B) )\
  & = not(not(not B and A) and not(not A and B) )\
  & = not((B or not A) and (A or not B) )\
  & = not(B or not A) or not(A or not B)\
  & = not B and A or not A and B\
  & = A xor B
$