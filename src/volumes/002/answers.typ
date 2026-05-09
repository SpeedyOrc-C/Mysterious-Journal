#import "../../template.typ": answer-style

#show: answer-style

#set text(lang: "zh")

= 上期答案

#grid(
  columns: (1fr, 1fr),
  column-gutter: 5mm,
  [
    #heading(level: 2, outlined: false)[椭圆的光学性质]

    构造辅助点：作焦点 $F_1$ 关于切线 $l$ 的对称点 $F'_1$，连接 $F'_1P$ 和 $F'_1F_2$.\
    根据对称性质得 $abs(P F'_1) = abs(P F_1)$，$angle F_1 P l = angle F'_1P l$.

    证明三点共线：假设 $F'_1$ 不在直线 $F_2 P$ 上，\
    则由三角形两边之和大于第三边得 $abs(F'_1 P) + abs(P F_2) > abs(F'_1F_2)$.\
    但根据椭圆定义，$abs(F'_1P) + abs(P F_2) = abs(P F_1) + abs(P F_2) = 2a$，因此 $|F'_1 F_2| < 2a$.

    另一方面，切线 $l$ 上任意一点 $Q space (Q != P)$ 都在椭圆外，因此 $abs(Q F_1) + abs(Q F_2) > 2a$，即 $abs(Q F'_1) + abs(Q F_2) > 2a$。这说明点 $P$ 是切线 $l$ 上到 $F'_1$ 和 $F_2$ 距离之和最小的点，因此 $P$ 必在线段 $F'_1F_2$ 上，即 $F'_1$、$P$、$F_2$ 三点共线。

    应用反射定律：由三点共线得 $angle F'_1P l = angle F_2 P l'$，结合 $angle F_1 P l = angle F'_1 P l$，\
    得 $angle F_1 P l = angle F_2 P l'$，符合光的反射定律。$qed$

    #heading(level: 2, outlined: false)[行星速端曲线]

    建立极坐标系：以太阳为原点，极轴沿长轴指向近日点，\
    椭圆的极坐标方程为 $r = p/(1 + e cos theta)$，\ 其中 $p = a(1-e^2)$ 为半通径。

    速度分解：极坐标下速度分解为\ 径向分量 $v_r = ("d"r)/("d"t)$ 和切向分量 $v_theta = r ("d"theta)/("d"t)$.\
    由开普勒第二定律得 $r^2 ("d"theta)/("d"t) = h$.

    求径向速度：利用复合函数求导，$v_r=("d"r)/("d"theta) dot ("d"theta)/("d"t) = ("d"r)/("d"theta) dot h/r^2$.\
    对椭圆方程求导得 $("d"r)/("d"theta) = (e r^2 sin theta)/p$，代入得：
    $
      v_r = h e p^(-1) sin theta
    $
    求切向速度：
    $
      v_theta = h r^(-1) = h p^(-1) (1+e cos theta)
    $
    转换为直角坐标速度：
    $
      v = vec(
        v_r cos theta - v_theta sin theta,
        v_r sin theta + v_theta cos theta
      ) = vec(
        -h p^(-1) sin theta,
        h p^(-1) (e + cos theta),
      )
    $

    消参得轨迹方程：由上式得：
    $
      sin theta = -p v_x h^(-1) \
      cos theta = p v_y h^(-1) - e
    $
    利用 $sin^2 theta + cos^2 theta = 1$，代入得：

    $
      v_x^2 + (v_y-h e p^(-1))^2 = (h p^(-1))^2
    $

    这是标准的圆方程，\ 圆心坐标为 $(0, h e p^(-1))$，半径为 $h p^(-1)$. $qed$
  ],
  [
    #heading(level: 2, outlined: false)[什么是变量？]
    1. #[
        非常简单，直接用上面定义好的 $"while"$ 即可。
        $
          "do_while"(l, c) = "while"(c, l) compose l
        $
      ]

      2. #[
          仿照 $"while"$ 的实现即可，但要注意 $x$ 是固定的。别忘了接住条件产生的新变量的值。
          $
            "while_write_x"(e, l) & = "while_write_x"' \
              "while_write_x"'(v) & = cases(
                                      v' "如果" v' = 0,
                                      "while_write_x"(e, l)(v'),
                                    ) \
                        "其中" v' & = e(v)
          $
        ]
  ],
)
