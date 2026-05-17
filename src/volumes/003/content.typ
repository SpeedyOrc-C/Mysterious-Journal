#import "@preview/rubby:0.10.2": get-ruby
#import "@preview/simple-plot:0.3.0": plot
#import "../../template.typ": content-style, cover, egy
#import "../../editors.typ" as Editor

#let ruby = get-ruby(
  size: 0.6em,
  dy: 0.5mm,
  pos: top,
  alignment: "center",
  delimiter: "|",
  auto-spacing: false,
)

#show: content-style
#set math.equation(numbering: none)

#cover([3], table(
  columns: (auto, auto),
  inset: 1.2mm,
  align: (right, left),
  stroke: none,
  Editor.吴悠然, [时政热点],
  Editor.郑肖阳, [汉语诗],
  Editor.孙姚可欣, [地理],
  Editor.盛悦, [历史],
  Editor.龚逸晨, [化学],
  Editor.周宇帆, [计算机],
  Editor.陈湛明, [数学,排版],
  Editor.Hikaritsu, [数学,计算机,化学,物理,English,排版],
))

#pagebreak()

#set text(lang: "zh")

= 时政热点

== 国内指向

5月15日，国家主席习近平在中南海同美国总统特朗普举行小范围会晤。中共中央政治局委员、外交部长王毅介绍，两国元首同意将“中美建设性战略稳定关系”作为两国关系新定位。应特朗普总统邀请，习近平主席将于今年秋季对美国进行国事访问。

5月15日12时33分，我国在东风商业航天创新试验区使用力箭一号遥十三运载火箭，成功将泰景三号05A/05B星、天仪50星等5颗卫星发射升空，卫星顺利进入预定轨道。

5月15日，中央广播电视总台与国际足联共同宣布达成世界杯新周期版权合作，涵盖2026年、2030年世界杯及2027年、2031年女足世界杯。此前谈判因国际足联报价高达2.5亿至3亿美元陷入僵局，最终版权费据称为6000万美元，较最初报价大幅降低。

== 国际视野

以黎停火协议延长45天，以方称准备重启对伊行动。美国国务院5月15日宣布，以色列与黎巴嫩已同意将停火协议延长45天，双方将于6月2日至3日再次谈判。与此同时，一位以色列高级官员称，以色列正在为重启针对伊朗的军事行动做准备，行动可能持续数天甚至数周。

== 词汇点击：经济杠杆

“经济杠杆”的核心含义就是 “用少量的钱，撬动大量的资金”。最经典的比喻就是用杠杆撬动重物。
它主要有四个层面的应用：

- *财务杠杆*：指借钱经营或投资。例如，你自有100万，再借900万买1000万的房。房价每涨10%，你的本金回报率是100%。但风险对等：跌10%，你的本金就亏光。一个关键指标是资产负债率，借的钱比例越高，杠杆越大，风险也越大。
- *经营杠杆*：源于固定成本（租金、设备折旧）。企业收入高时，多卖的货几乎全是利润；收入低时，高额固定成本会迅速吞噬利润。这解释了为什么一些重资产公司（如航空、钢铁）的利润波动特别剧烈。
- *宏观杠杆*：指整个国家的总债务水平。通常用 $"总债务"/"国内生产总值"$ 衡量。杠杆率上升意味着经济整体在“加杠杆”，也就是借钱刺激增长，但过高可能引发金融危机。
- *交易杠杆*：常见于期货、外汇。通常只需存入保证金（如 $10%$）就能交易 $100%$ 价值的合约。盈亏按 $100%$ 计算，收益风险都放大 $10$ 倍。追加保证金就是杠杆交易的风险警示。

= 汉语诗三首

#let poem(title, author, body) = {
  align(center, {
    v(9mm)
    par(text(weight: "semibold", size: 14pt, title))
    par(text(size: 8pt, author))
    body
  })
}

#poem([九月初], [笑笑老师], [
  豆蔻梢头九月初，一笑百媚数回眸。

  不料花来#footnote[*花来*：指女方曾在学校主动向男方送花，以表好感。]花似火，只觉夜过夜温柔。

  一纸夙愿#footnote[*一纸夙愿*：指男方写下的表白信，寄托了对这段感情的期许。]惨遭拒，几度复合终不#ruby("shóu")[熟]#footnote[此处“熟”为押韵需要，采用口语化读音。“不熟”意为男女双方最终形同陌路，相互分离，未能走到一起。]。

  满屏饰辞#footnote[*饰辞*：指借口、托词。诗中“满屏饰词”暗指后来通过手机等通讯工具交流时，对方以各种借口推托，终成荒唐之局。]荒唐泪，挥之不去在心头。
])

#poem([夜雨旧梦], [匿名], [
  难眠夜雨覆彷徨，叶掩琉璃室更凉。

  素月空皎难我知，惟作旧人暂梦藏。

  绞心欲忘却难忘，初见苍茫今仍茫。

  若怜痴人重相历，惜非旧梦再不长。
])

#poem([无题], [匿名], [
  故地重游思难抒，旧日月景惜相逐。

  遥恨共随升落月，何人伴行孤独路。

  故人离兮离人故，同心共愿再无处。

  孤丝乱线断欲绝，惟余残忆论甘苦。
])

#pagebreak()

= 岛上的云朵

热带海洋的岛可以产生对流，会导致云朵出现在岛屿上空。

一个岛能形成对流的方式有很多种。首先在白天的时候，岛屿比它周围的海洋升温更快。因此岛屿上最湿最热的地方的热空气会上升。但这是由两个附加因素引起的：海岸边的风还有地形的抬升。海岸边的风是白天升温的海岛伴随产生的。许多入门的气象学教科书和各大媒体通常把这个简化成陆地上空的空气变热导致其上升，而海洋的冷空气则跑进来填补。但事实比这个更复杂也更有趣。对于一个小岛来说，风吹的距离没有办法很远，因为它不一会儿就会和其他方向的风撞上了。这使得这些风在一个较低的地方汇聚，进而使白天的热空气上升得更剧烈。另一个因素是，热带岛屿的地形通常是崎岖的，所以向岸风也会被岛屿的地形抬升。#footnote[https://cimss.ssec.wisc.edu/satellite-blog/archives/70024]

#grid(
  columns: (1fr, 1fr),
  column-gutter: 5mm,
  figure(
    caption: [南中国海 #footnote[https://www.facebook.com/mei.cheeseong.9/posts/南中国海蓝/10164508892979176]],
    image("img/south-china-sea.jpg"),
  ),
  figure(caption: [马尔代夫 #footnote[https://www.instagram.com/reels/DX4iK2Focsq]], image("img/maldeives.jpg")),
)

#pagebreak()

= 你一块，我一块的均田制—吗？
诚然，我们都从历史书上学到过均田制。But，那这均田制到底是什么？

== 起源 - 北魏

桑田=最初的永业田 #footnote[*永业田*：农民私有（国家承认世袭）死后不还，传给子孙，唐朝后基本放开；保障家庭基本生计；鼓励种植经济作物。20亩/男丁。]。男丁授桑田20亩，作为永业田，终身不还，世代相传。北魏的桑田不仅是土地，还是古代的"社会保障"。政府强制要求种植桑树、枣树、榆树，就是为了让农民在灾年可以靠养蚕、卖枣、伐木工钱度过饥荒，相当于给每个家庭上了一份"农业保险"。直到北齐与隋才被正式定名为"世业田"。那个时候开始允许身死家贫无以供葬者出卖世业田，而这，打开了土地买卖的第一个缺口。

== 鼎盛与失控 - 唐朝

这时，永业田全面普及。男丁可分到永业田20亩，口分田 #footnote[*分口田*：国家所有，农民只有使用权 ；农民60岁或死亡后必须归还国家 ；仅特殊情况可卖，严格限制；提供了主要的粮食生产用地 。80亩/男丁（狭乡减半） 。] 80亩。并且将范围扩大至工商业者、僧尼、道士。大幅放宽买卖限制，迁徙他乡者可卖永业田； 贫无以葬者可卖永业田；从狭乡迁往宽乡者，连口分田也可一并出卖。这似乎很自由，但豪强地主趁机通过各种手段兼并农民的土地，导致国家掌握的土地越来越少。国家既无地可授，也无法征收租庸调。最终，唐德宗建中元年（780年），均田制被两税法取代，永业田彻底变成了完全私有的土地。

== 均田不均

是的，根据以上，我们可以知道：均田制听起来很美好，但实际上从来没有真正实现过"均田"。贵族和官僚可以按品级获得大量永业田 #footnote[*官僚贵族的永业田*（"均田不均"的最大体现）：亲王：100顷（10000亩）；正一品官：60顷；正二品官：40顷；正七品官：2.5顷。这些土地完全免税、永不归还，是官僚地主阶级的特权保障。]，最高可达100顷（10000亩）。在人口稠密的"狭乡"，农民实际分到的土地往往只有标准的三分之一甚至更少。隋初狭乡一丁只有20亩土地，还不到标准的四分之一。 敦煌出土的唐代户籍显示，很多农户的"已受田"只有"应受田"的20%-30%，失去土地的农民变成流民。#footnote[*敦煌文书里的“受田不足”实录*：敦煌出土的《唐天宝三载（744年）敦煌郡敦煌县神沙乡弘远里籍》记载了户主张奴奴的受田情况：  应受田82亩（老男50亩+寡母30亩+园宅地2亩），实际仅受22亩（永业田20亩+园宅地2亩），口分田60亩全部未受。 但张奴奴是63岁的老男当户，按唐令应受50亩（丁男100亩的一半），但文书明确写“六十亩未受”。同批文书中，阴承光户的婆母袁和母亲齐氏共应受田60亩（各30亩），但实际仅受7亩口分田。而唐代规定寡妻妾为户主可受30亩，远超老男当户的50亩。]而有些和尚得到的，甚至比勤勤恳恳干活的农民都多 #footnote[敦煌文书S.1475《唐天宝六载敦煌县田簿》显示，某寺院一僧名下登记田产达150亩，远超法定额度。]。

既然知道了均田制，那么其影响也不可忽视。它在一定程度上抑制了土地兼并，使无地农民获得了小块土地，促进了农业生产的恢复和发展。它将大量流民固定在土地上，增加了国家的财政收入和兵源，为北魏统一北方和隋唐盛世奠定了经济基础。它是中国古代国家对土地资源进行宏观调控的一次伟大尝试，对后世产生了深远影响。均田制不仅影响了中国，还传播到了东亚其他国家。日本的班田制（646年大化改新后实行）完全模仿均田制；朝鲜的丁田制也借鉴了均田制的核心思想。可以说，均田制是古代东亚地区最具影响力的土地制度之一。

清代的纪晓岚曾在其诗中写道：“江都留得均田法，只有如今塞外行”。他感叹这种理想化的制度在内地早已难以实行，反而在人地关系不那么紧张的边疆地区才能看到其痕迹，仿佛为这个伟大的制度构想，画上了一个意味深长的句号。

== 那些均田制中“轶事”

+ 均田制的真正创始人不是孝文帝。很多人以为均田制是孝文帝发明的，其实它的首倡者是北魏给事中：李安世。当时北方长期战乱，大量农民流亡，土地荒芜，豪强兼并严重。李安世上书孝文帝，提出两个关键建议：一、对于有争议的土地，"事久难明，悉归今主"，承认现有耕种者的使用权，避免无休止的诉讼。二、国家将无主荒地按人口分配给农民，"使力业相称"，让劳动力和土地匹配。后来，孝文帝采纳了他的建议，颁布了均田令。《魏书》明确记载："后均田之制起于此矣"。

+ 王莽因“王田制”被疑为穿越者。在西汉末年，王莽曾推行类似的“王田制”，宣布土地国有、禁止买卖、分给无地农民。由于这些理念与当时社会格格不入，以至于至今网上都有戏言，怀疑王莽是一位现代“穿越者”，在错误的时间推行了过于超前的政策。
+ 奴婢和耕牛也能"分田地"：北魏均田制最奇特的一点是：奴婢和耕牛都能像人一样分到土地。奴婢和普通农民一样，每人授露田40亩、桑田20亩，而且人数不限。丁牛#footnote[*丁牛*：四岁以上耕牛。]每头授露田30亩，一户最多限4头。这本来是为了鼓励农民养牛、发展生产，但却被豪强地主钻了空子。他们大量蓄养奴婢，一户就能分到几千亩土地，反而加剧了土地不均。
+ 拓跋鲜卑的“牛才权”。北魏作为游牧民族建立的王朝，对耕牛极为重视。在早期的均田制中，每户人家拥有的耕牛也可获得授田，标准为每头耕牛授田30亩，且一户限4头牛。更有趣的是，北魏均田制规定妇女授田20亩，而一头牛却能获30亩，这种“牛比人贵”的景象，充分体现了游牧民族对牛的高度重视。

#pagebreak()

= English

#heading(outlined: false, depth: 2)[Weekly Poem]

#align(center, box([
  #text(font: "Snell Roundhand", weight: "regular", size: 24pt)[If You Believe]
  #v(-6mm)
  #align(left)[
    If you believe inside your heart\
    Nobody's second class\
    Every day's a brand new start\
    What's past is past\
    And if your dreams go nowhere\
    Don't give up the fight\

    Come with me and you will see\
    It all looks different in the morning light\

    If you're feeling you can't go on and   you're\
    Lost and lonely and feel so afraid\
    Remember, things can only get better\

  ]

  #align(right)[_Kylie Minogue_]
]))

== Usage of Way

1. You can say something is done *in a particular way*, e.g.\

We have to describe this *in some other way*.\

When you use *this* or *that* with *way*, you usually omit the "in", e.g.\

... she was crazy to talk to those thugs *that way*.\
I can do it *this way*.\

You can also omit "in" when you are using *the* or a possessive, e.g.\

We don't look at things *the same way*.\
I'm going to handle *this my way*.\
  
2. You can talk about *a way of doing something* or *a way to do it*.There is no difference in meaning, e.g.\

There's *no way of proving* he stole the watch.\
There's *no way to prove* he stole the watch.\

Note that if you use a possessive with *way*, you must use "of" and an "-ing" form after it. You do not use a "to" infinitive, e.g.\

I'm used to *her way of doing* things.\

3. When *the way* is followed by a clause, this clause can be a "that" clause or a clause beginning with "in which". "That" can also be omitted. For example, you can say "*the way that* she told the story", "*the way in which* she told the story" or "*the way* she told the story". There is no difference in meaning.

== Expressions

以下是 “(尽最大)努力……” 的一些英文表达\

+ endeavour to do sth.

+ make every endeavour to do sth.
+ strive to do sth.
+ go to/take great trouble to do sth. = 不 辞辛苦...
+ will sb. /sth. to do sth. (特例: will oneself(not)to do sth.)
+ do everything in one's power to do sth.
+ ... ,no expense spared(独立主格结构)
+ go at it hammer and tongs = 全力以赴做...; 激烈争吵或打斗
+ come out(with)all guns blazing=火力全开;付诸全部的精力去做;全力以赴
+ go/work/move/be full steam ahead(with ... )=全速推进;开足马力进行;全力以赴

=== Examples

+ We should *struggle to* overcome our shortcomings.

+ The company came out *with all guns blazing*.
+ I'm going to take you out to dinner, *no expense spared*.
+ First, we should *endeavour to* work for the well-being of the next generation.
+ Even if I work *full steam ahead*, it will take me the whole day to finish typing this long report.
+ She's going to *come out all guns blazing* in the future and, if it is possible to be more likely to perform in the future, I think she will.
+ Katy Perry *has come out with all guns blazing* against a former heroine who ill-treated her when she first arrived in Los Angeles desperately looking for musical success.

#pagebreak()

= 化学

== 保护羰基

#grid(
  align: left,
  columns: (1.3fr, 2.7fr),
  gutter: 5mm,
  [羰基，特别是醛基，在进行氧化反应或遇碱时，往往要进行保护。对此，一般采用生成缩醛或缩酮的反应。生成的缩醛或缩酮水解后又变回原来的醛基或羰基。],
  image("img/protection.png")
)

== $h nu$

一些人在书写化学方程式时，常学习大学教材，把光照写成$h nu$，实际上，反应条件表明了反应的能量输入（催化剂则是改变活化能），因此$h nu$实为物理中表示光子能量的公式。

#align(center, [$E eq h nu$])

== 完型填空 but 化学

#image("img/organic-chemistry.png")

无机试剂任选，完成该有机合成流程图。（部分物质已给出）


== 第一期判断题答案

如果忘记了题目，可以再翻出第一期看一下。

+ $times$（同素异形体间的转化）

+ $sqrt(space)$（引发剂不是催化剂）
+ $sqrt(space)$（无需多言，尿素合成开天辟地）

#pagebreak()

= 物理

== 偏振光

#grid(
  align: left,
  columns: (1.5fr, 2fr),
  gutter: 5mm,
  image("img/lights.png"),
  [我们知道让自然光通过偏振片可以产生偏振光。但如果不使用偏振片，还存在另一种产生偏振光的方式。
    
  自然光射到两种介质的分界面上，如果光入射的方向合适，使反射光线和折射光线之间的夹角恰好是90°时，反射光和折射光都是偏振光，且偏振方向相互垂直。
  ]
)

== 热力学第二定律

我们知道热力学第二定律有克劳修斯表述和开尔文表述，它们之间似乎没有明显的联系。所以，本期将介绍如何证明它们是等价的。其实只需要证明只要两者之一不成立，另一个也不成立，从而两者必须同时成立。

=== 部分证明

如果克劳修斯表述不成立，则热量能从低温热库自动传到高温热库。因而可以设计一种卡诺热机，工作于这两个热库之间。$T_1$，为高温热库，$T_2$，为低温热库。我们从高温热库吸热$Q_1$.，向低温热库放热$Q_2$，同时对外做功$W$。我们使$Q_2$，自动地从低温热库传到高温热库。经过一个循环后，总的效果是从高温热库$T_1$吸收热量$Q_1 minus Q_2$，对外做功$Q_1 minus Q_2$，低温热库状态不变。这相当于是一台从单一热库吸取热量对外做功的机器，因而违背了开尔文表述。所以如果克劳修斯表述不成立，则开尔文表述也不成立。

如果开尔文表述不成立，则克劳修斯表述也不成立。同样可以用“反证法”来证明。

#grid(align: center,[#image("img/machine.png", height : 130pt)])

#pagebreak()

= 数学

== 我爱加减乘除

如果知道一个实数的函数长什么样子，那么能通过*简单的加减乘除*来模拟这个函数吗？这听起来似乎是不可能的，比如三角函数没法通过正常的加减乘除来计算。但我想先在这里给出几个看似“不可能”的函数的定义 #footnote[$n! = 1 times 2 times 3 times ... times n "但是" 0! = 1$]：

#set math.equation(numbering: "(1.1)")
$
  sin(x) & = x - x^3/3! + x^5/5! - x^7/7! + x^9/9! - x^11/11! + ...
$ <taylor-sin>
$
  ln(x+1) & = x - x^2/2 + x^3/3 - x^4/4 + x^5/5 - x^6/6 + ...
$
$ e^x & = 1 + x + x^2/2! + x^3/3! + x^4/4! + x^5/5! + x^6/6! + ... $
#set math.equation(numbering: none)

我们发现等号右边只有加减乘除而没有其他的运算。如果你尝试去计算等号右边的值，会发现算的越多就越接近原函数。那么这个算式是怎么得出来的呢？因为我们假设了只能使用加减乘除，那么可以把这些函数的解析式看作一个多项式。
$
  f(x) approx a_0 + a_1 x + a_2 x^2 + a_3 x^3 + ...
$
那现在问题就变成了：我们要怎么才能把各个系数 $a_n$ 算出来呢？如果我们尝试计算 $f(0)$，会发现结果正好就是 $a_0$，也就是多项式的常数项！那我们再尝试带入 $f(1)$：
$
  f(1) = a_0 + a_1 + a_2 + a_3 + ...
$
原来 $f(1)$ 的结果是所有的系数的总和！这就麻烦了，没有办法得到单个系数的值……如果我们仔细观察 $f(x)$ 的估值，会发现只有 $a_0$ 是和 $x$ 没关系的，其他的系数全部都要跟 $x$ 的某个次方相乘，这就是为啥带入 $0$ 可以得出 $a_0$. 那么问题就变成了：要怎么做才能把 $a_1$ 的 $x$ 给它去掉呢？

答案就是微分！你看，如果计算 $f$ 的导数：
$
  f'(x) = a_1 + 2a_2x + 3a_3x^2 + 4a_4x^3 + ...
$
就会发现 $a_0$ 由于是一个常数，在导的时候消失了，而 $a_1x$ 的 $x$ 只有一次方，所以导的时候只剩下它的系数了。因此我们终于可以得出第二个系数的值 $f'(0) = a_1$. 更有意思的是，因为每一项都被导了，所以每个 $x$ 的幂次都变小了！这意味着我们可以通过不断计算导数，依次得到所有系数的值。比如二阶导可以得到 $a_2$：

#pagebreak()

#grid(
  columns: (2fr, 1.8fr, 1fr),
  $
    f''(x) & = 2a_2 + 6a_3x + 12a_4x^2 + ... \
    f''(0) & = 2a_2 \
       a_2 & = (f''(0))/2
  $,
  $
    f'''(x) & = 6a_3 + 24a_4x + ... \
    f'''(0) & = 6a_3 \
        a_3 & = (f'''(0))/6
  $,
  $
    f''''(x) & = 24a_4 + ... \
    f''''(0) & = 24a_3 \
         a_3 & = (f''''(0))/24
  $,
)

通过观察规律发现，$a_n$ 需要先求 $f$ 的 $n$ 次导，然后再除以 $n!$.
$
  a_n = (f^((n))(0))/n!
$
因此我们就能得出任意函数的近似解析式：
$
  f(x) = sum^infinity_(n=0) (f^((n))(0))/n! dot x^n
$
这种形式叫做*泰勒级数 (Taylor series)*。这类计算无限长式子的值的问题在很早以前就已经被古希腊追乌龟的芝诺 (#text(lang: "grc", font: "Gentium Book Plus")[Ζήνων ὁ Ἐλεᾱ́της]) 以及东汉的刘徽讨论过。直到1715年，英国数学家布鲁克·泰勒（Brook Taylor）发表了通用的展开方法。

对于泰勒级数，还有两个要注意的地方。首先它只能够对*处处可导的连续函数*使用。其次，如果一个函数在 $x=0$ 处没有办法取值（比如 $ln(x)$），那就需要取其他点的导数，比如 $x = 1$，因为取的是 $x=1$ 处的导数，函数的形状是在那个点上近似的，因此如果这个时候算近似函数 $hat(f)(0)$ 的值，实际上得出来的是原函数 $f(1)$ 的值，因此我们需要从自变量 $x$ 中再减去这个偏移量，变成 $x-1$.
$
  f(x) = sum^infinity_(n=0) (f^((n))(1))/n! dot (x - 1)^n
$
也就是说，如果我们在 $x = k$ 上取值，那么函数的近似就变成了：
$
  f(x) = sum^infinity_(n=0) (f^((n))(k))/n! dot (x - k)^n
$

=== 练习题

+ 计算 $sqrt(x)$ 的泰勒级数。
+ 计算 $a x^2 + b x + c$ 的泰勒级数，并说说你发现了什么？
+ 计算 $cos(x)$ 的泰勒级数。
+ 对 $sin(x)$ 的泰勒级数进行求导（上文已经给出级数），并验证是否和 $cos(x)$ 的一致。
+ 计算 $1/sin(x)$ 的泰勒级数。（需要偏移）
+ 对于上方的函数，说说你展开了多少项？精确度有达到你的预期吗？

#pagebreak()

== 放缩

#columns(2)[

  如果证明 $a > b$ 可以怎么做？\
  根据不等号的传递性我们知道：
  $
    "如果" a > c "且" c > b"，那么" a > b
  $
  所以寻找 $c$ 的过程就是放缩的过程。

  === 例一

  如果要证明 $e^x > ln x$（其中 $x > 0$），\
  可以用不等式 $e^x > x$ 和 $x > ln x$.

  #colbreak()

  #plot(
    width: 4,
    height: 4,
    xmin: 0,
    xmax: 3,
    ymin: -3,
    ymax: 4,
    (fn: x => x, stroke: black, label: $y = x$, label-side: "above-left"),
    (fn: x => calc.exp(x), stroke: red, label: $y=e^x$, label-pos: 0.3, label-side: "below-right"),
    (fn: x => if (x > 0) { calc.ln(x) }, stroke: green, label: $y = ln x$, label-pos: 0.8, label-side: "above"),
  )
]

=== 例二

$
  "证明 " sum_(i=1)^n 1/(2i+1)^2 < 1/4
$
第一眼看过去可能没有思路，但可以发现左侧的分母有平方，所以试试弄出平方差，再弄出可以互相抵消的项即可。
$
  sum_(i=1)^n 1/(2i+1)^2 & < sum_(i=1)^n 1/((2i+1)^2 - 1) = sum_(i=1)^n 1/((2i+2)(2i)) = 1/4 sum_(i=1)^n 1/((i+1)(i)) \
                         & = 1/4 sum_(i=1)^n (1/i - 1/(i+1)) = 1/4 dot (1 - 1/(n+1)) < 1/4
$
所以在放缩中最难的不是证明过程，而是想到第一步要怎么放。（当然拉马努金除外。）

=== 例三
$
  "证明 " sum_(i=1)^50 sin (2i-1)/100 < 24
$
#columns(2)[
  这个时候，注意力惊人的同学就想到了前面 @taylor-sin 提到的 $sin$ 的泰勒展开。所以我们展开前三项试试：
  $
    x - x^3/3! + x^5/5! > sin x
  $
  第一项 $x$ 可以很容易得出：
  $
    sum_(i=1)^50 (2i-1)/100 = 25
  $

  #colbreak()

  #plot(
    width: 5,
    height: 3,
    xmin: 0,
    xmax: calc.pi * 1.5,
    ymin: -1.1,
    ymax: 1.1,
    xtick-step: calc.pi,
    (fn: x => calc.sin(x), stroke: black, label: $y = sin x$),
    (
      fn: x => x - calc.pow(x, 3) / 6 + calc.pow(x, 5) / 120,
      stroke: red,
      label: $y = x - x^3/3! + x^5/5!$,
      label-pos: 0.72,
      label-side: "above",
    ),
  )
]

第二项需要用到一个特别的结论：$Sigma x^3 = (Sigma x)^2$，但由于证明过于丑陋，就留给你了。

== 叉乘

在立体几何中，我们经常需要处理一个平面的法向量。在课内，简单情况下可以一眼瞪出来，不然只能设 $arrow(n)=(x,y,z)$,然后在平面内找两个向量$arrow(a)$和$arrow(b)$，最后根据向量点乘为零，得到一个三元一次方程组，解出一个$arrow(n)$。这一点都不优雅！幸运的是有一种数学工具可以轻松处理法向量——叉乘。

=== 定义

物理中，我们学习过圆周运动中线速度与角速度的关系：$v=omega r$。我们一直把它当标量式，而不是矢量式。但这些量在空间中明显是有方向的。

#grid(
  columns: (1fr, 3fr),
  column-gutter: 5mm,
  image("img/circle-movement.png"),
  [
    $arrow(omega)$的方向按右手螺旋确定，$arrow(r)$从转轴$l$指向运动的质点，$arrow(v)$是质点运动的方向。设$arrow(r)$与$arrow(omega)$的夹角为$theta$，那么可以推出这样的数量关系：$abs(arrow(v))=abs(arrow(omega))abs(arrow(r))sin(theta)$。位置关系上，则有$arrow(v)$垂直于$arrow(omega)$与$arrow(r)$所确定的平面。并且，用右手四指指向$arrow(omega)$，若四指能以不超过$pi$的角度转向$arrow(r)$，那么此时大拇指的指向就是$arrow(v)$的指向。这就是右手规则。从中可以抽象出叉乘的定义：
  ]
)

设$arrow(c)$由$arrow(a)$和$arrow(b)$以这样的方式定出：$abs(arrow(c))=abs(arrow(a))abs(arrow(r))sin(b)$，其中$theta$是$arrow(a)$和$arrow(b)$的夹角，并且$arrow(c)$垂直于由$arrow(a)$和$arrow(b)$所定出的平面，方向由从$arrow(a)$转向$arrow(b)$的右手规则确定，那么记$arrow(c) = arrow(a) times arrow(b)$。此时$arrow(c)$就是$arrow(a)$和$arrow(b)$的向量积，或者说叉积。

=== 运算

以下规律读者可以自行推导（真的不难）。

+ $arrow(b) times arrow(a) = minus arrow(a) times arrow(b)$

+ 分配律：$(arrow(a) plus arrow(b)) times arrow(c) = arrow(a) times arrow(c) plus arrow(b) times arrow(c)$
+ 与数的结合律：$(lambda arrow(a)) times arrow(b) eq arrow(a) times (lambda arrow(b)) eq lambda (arrow(a) times arrow(b))$
+ 对于非零向量 $arrow(a)$，$arrow(b)$，有$arrow(a) parallel arrow(b) arrow.l.r.double.long arrow(a) times arrow(b) = arrow(0)$

=== 坐标

叉乘的定义仍不便于计算，因此我们在空间直角坐标系中推导它的坐标表示式。

设我们所选取的单位正交基底是$brace.l arrow(i) , arrow(j) , arrow(k) brace.r$。设：$arrow(a) eq a_x arrow(i) plus a_y arrow(j) plus a_z arrow(k)$ ，$arrow(b) eq b_x arrow(i) plus b_y arrow(j) plus b_z arrow(k)$。根据前述运算规律，您应该可以自己展开$arrow(a) times arrow(b)$，这里直接给出结果：$arrow(a) times arrow(b) eq (a_y b_z minus a_z b_y) arrow(i) plus (a_z b_x minus a_x b_z) arrow(j) plus (a_x b_y minus a_y b_x) arrow(k)$看起来很长，让我们用行列式记号表示它。（这会十分的简明而优雅）

#align(center,$arrow(a) times arrow(b) eq mat(delim: "|",arrow(i),arrow(j),arrow(k);a_x,a_y,a_z;b_x,b_y,b_z)$)

#pagebreak()

= 计算机

== 二叉搜索树

=== 前言

正如《信息技术...选必一》所述，树是一种受到广泛应用的数据结构。而二叉排序树正是其中的佼佼者。可是课本对于这种重要的内容是一如既往的一笔带过，使得我们无从得知其性质与用法。所以，笔者于此整理其操作，稍作介绍。

=== 定义 

首先，要了解一个数据结构就必须知道其定义，以下给出它的定义：

二叉排序树（Binary Sort Tree，以下简记BST）:

一棵空树，或者是具有下列性质的二叉树：

+ 若左子树不空，则左子树上所有结点的值均小于它的根结点的值；

+ 若右子树不空，则右子树上所有结点的值均大于它的根结点的值；
+ 左、右子树也分别为二叉排序树；

这里的大小由你自己定义的比较函数确定，比如定义:a > b 指a的最大质因子大于b的最大质因子，而且结点的值也不一定是整形，事实上这个由你自己决定，比如结点的值是字符或者字符串甚至干脆是结点的值自己就是一颗树。

这个大小也不能太随便，至少需要满足:若a > b,b > c,则a > c。（a,b,c之间需要有区别）

然后，就这个定义，我们不难得知一颗BST的中序遍历是不增或者不减的，也能知道BST其实是应用于数据查找的（比如较快的得出一些数据中的第k大的数之类的）。所以，自然地，BST是有插入，查找，删除的操作（当然还有其他的，不过这三个最重要，所以只讲这三个）。让我们看看这些操作的流程吧。

=== 插入

首先，我们来规范一下这颗BST的描述，我们记结点P所记录的数据的集合为|P|,P的左孩子（或者说左
子树的根结点）为P->L，或P->ch[0],相似的，P的右孩子为P->R，或P->ch[1],N(P,x)表示的是P记录的
数据x的个数，N(P) = Σ（x $in$ |P|）N(P,x)，比如对于U,|U| = {2},N(U = 2) = 5,就表示U这个结点只记录了数据2，2有5个，对于一个BST,它的根结点记为Root,K(U)表示U为根的子树大小。

然后我们声明当a > b,b > a同时为真或同时为假时称a等于b(记为a == b)，否则称a不等于b(记为 a != b)，而若x,y $in$ |P|，则x必须等于y。我们可以随意的挑选x $in$ |P|来描述P存储的数据，那么记为[P]。则我们明白若x $in$ |P|, x == [P]。

那么，怎么说呢？主要就是先按照定义寻找需要插入的位置，然后插入。这个图之所以吓人，是因为边界判断有一点多。这个思路本身并不难，无非是x小就往左，否则往右罢了。所以，聪明的读者们可以试着着重看标记的部分，或者只看标注部分。

#image("img/insert.jpg")

=== 查找

#image("img/find.jpg")

这里有两个find,左边的是查找x存不存在，右边的是找第k大。

=== 移除

#image("img/remove.jpg")

#pagebreak()

== 加法器

=== 半加器

我们先不考虑两个大的二进制数相加，而是着眼于某一位的运算。对于第n位，我们需要处理以下数据：

+ 这一位的两个输入：$A_n$，$B_n$
+ 来自上一位的进位输入：CIN
+ 这一位的输出：$C_n$
+ 向下一位的进位输出：COUT

暂时不考虑CIN，那么我们穷举出$A_n$，$B_n$，$C_n$，COUT的真值表：

#grid(
  align: auto,
  columns: (1fr, 0.5fr, 1fr, 0.5fr),
  gutter: 5mm,
  table(
    align: center,
    columns:(auto, auto, auto, auto),
    table.header([$A_n$],[$B_n$],[$C_n$],[COUT]),
    [0],[0],[0],[0],
    [1],[0],[1],[0],
    [0],[1],[1],[0],
    [1],[1],[0],[1]
    ),
    [熟悉吗？事实上，$C_n$与COUT正对应着AND和XOR，于是我们得出右侧元件。],
    image("img/half-adder-inner.png"),[这也就是半加器。
    #image("img/half-adder.png")]
  )
  
=== 全加器

#grid(
  align: center,
  columns: (1fr, 3fr),
  gutter: 3mm,
  [让我们再考虑CIN。

  无非就是在当前输出上再加一个半加器。],
  [#image("img/full-adder-a.png",
  width: 55%)]
)

这时候我们发现有两个进位：COUT_1和COUT_2。可以推知两个进位输出是不可能全为1的，毕竟三个1加起来也只有11，不可能进位两次。而两个进位都是有效的，所以用OR拼接。这样就得到了全加器。

#grid(
  align: center,
  columns: (2.6fr, 1.4fr),
  gutter : 5mm,
  image("img/full-adder-inner.png"),
  image("img/full-adder.png")
)

=== 加法器

我们只需要连接多个全加器就能获得多位加法器。如下是一个四位加法器：
#grid(
  align: left,
  columns: (3fr, 2fr),
  gutter: 3mm,
  [#image("img/adder-inner.png",
  width: 85%)],
  [这种加法器称为波纹进位加法器，因为进位像波纹一样从最低位传递到高位。]
)

加法器是相当基础的计算元件，或许是许多人在数字电路中学习的第一个计算器，它是构建减法器，乘法器，除法器等运算器的基础。

=== 挑战

+ 尝试用加法器构建减法器。（提示：A-B=A+(-B)）
+ 尝试用加法器构建乘法器。（提示：竖式乘法）
+ 可以发现，随着位数变大，波纹进位加法器的进位的传递过程会变得很长。大量逻辑门会造成巨大的计算延迟。试着提出一种更加高速的加法器结构。（提示：展开进位逻辑，直接并行计算进位）
