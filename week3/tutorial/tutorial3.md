# Page 0

רגרסיה- תרגול 3 :

מטריצת הטלה, המודל הלינארי והתפלגויות משותפות :

מטריצת הטלה אורתוגונלית

מטריצה איידמפוטנטית היא מטריצה שדרגתה המקיימת .A^{2} = B^{n}$.

מטריצה סימטרית ואיידמפוטנטית נקראת מטריצת הטלה אורתוגונלית.

טענה- הע״ע של מטריצת הטלה הם 1, בריבוי כדרגת המטריצה, ו-0 בריבוי השווה למימד של גרעין המטריצה.

הוכחה :

מטריצת הטלה למרחב הנפרש על ידי עמודות X :

תהי מטריצה מדרגה מלאה ונגדיר . הראו כי היא מטריצת הטלה למרחב הנפרש על ידי העמודות של . כלומר :

- (1) סימטרית.
- (2) איידמפוטנטית.
- (3) מתקיים שלכל : ע . הוכחה :

# Page 1

# תכונות חשובות-אולי הכי חשובות בקורס!!!!-של מטריצת הטלה: 

Proposition 4. Let $\boldsymbol{X}$ be an $n \times m$ matrix and assume that it has linearly independent columns (i.e., full column rank; remember that this implies $m \leq n$ ). Then the projection matrix $\boldsymbol{P}_{\boldsymbol{X}}$ has the following properties.

1. $\boldsymbol{P}_{X}$ is symmetric
2. $\boldsymbol{P}_{X}$ is idempotent, $\boldsymbol{P}_{X}^{2}=\boldsymbol{P}_{X}$
3. $\boldsymbol{P}_{X} \boldsymbol{X}=\boldsymbol{X}$
4. $\boldsymbol{X}^{\top}\left(\boldsymbol{I}-\boldsymbol{P}_{\boldsymbol{X}}\right)=\mathbf{0} \in \mathbb{R}^{m \times n}$
5. $\boldsymbol{P}_{X} v \in \operatorname{Im}(X)$ for all $v \in \mathbb{R}^{n}$
6. If $m=n$ and $\boldsymbol{X}$ is invertible, then $\boldsymbol{P}_{\boldsymbol{X}}=\boldsymbol{I}$
7. $\left(\boldsymbol{I}-\boldsymbol{P}_{\boldsymbol{X}}\right) \boldsymbol{v} \in \operatorname{Im}(\boldsymbol{X})^{\perp}$ for all $\boldsymbol{v} \in \mathbb{R}^{n}$
8. If $w \in \operatorname{Im}(\boldsymbol{X})$, then $\boldsymbol{P}_{\boldsymbol{X}} \boldsymbol{w}=\boldsymbol{w}$
9. If $\boldsymbol{w} \in \operatorname{Im}(\boldsymbol{X})^{\perp}$, then $\boldsymbol{P}_{X} \boldsymbol{w}=\mathbf{0}$
10. If $\boldsymbol{Z}$ is another $n \times m$ matrix s.t. $\operatorname{Im}(\boldsymbol{Z})=\operatorname{Im}(\boldsymbol{X})$, then $\boldsymbol{P}_{\boldsymbol{Z}}=\boldsymbol{P}_{\boldsymbol{X}}$. This means that $\boldsymbol{P}_{\boldsymbol{X}}$ depends on $\boldsymbol{X}$ only through the span of its columns. Hence, for an arbitrary linear space $M$, we can define the projection matrix $\boldsymbol{P}_{M}$ onto $M$ (an explicit form for $\boldsymbol{P}_{M}$ can be obtained by taking any basis of $M$ and stacking its elements as columns in a matrix $\boldsymbol{X}$, then forming $\boldsymbol{P}_{\boldsymbol{X}}:=\boldsymbol{X}\left(\boldsymbol{X}^{\top} \boldsymbol{X}\right)^{-1} \boldsymbol{X}^{\top}$ )
11. If $L$ and $M$ are two subspaces with $L \subseteq M$, then $\boldsymbol{P}_{M} \boldsymbol{P}_{L}=\boldsymbol{P}_{L} \boldsymbol{P}_{M}=\boldsymbol{P}_{L}$.

## Proposition 6. We have

1. $\boldsymbol{I}-\boldsymbol{P}_{\boldsymbol{X}}=P_{I m(\boldsymbol{X})^{\perp}}$
2. if $L$ and $M$ are two subspaces of $\mathbb{R}^{n}$ with $L \subseteq M$, then $\boldsymbol{P}_{M}-\boldsymbol{P}_{L}=\boldsymbol{P}_{M \cap L^{\perp}}$

Proposition 7. Let $\boldsymbol{Q}$ be an $n \times n$ matrix of rank $m \leq n$ which is symmetric and idempotent, $\boldsymbol{Q}^{\top}=\boldsymbol{Q}, \boldsymbol{Q}^{2}=$ Q. Then $\boldsymbol{Q}=\boldsymbol{P}_{M}$ where $M:=\operatorname{Im}(\boldsymbol{Q})$.

Proof. Exercise.
הוכחות ברשימות השיעור.

# Page 2

המרחב המשלים האורתוגונלי : יהי $U \subseteq V$ תת מרחב. נגדיר את תת המרחב המשלים האורתוגונלי של $U$ באופן הבא:

$$
U^{\perp}=\left\{v \in V \mid u^{\perp} v=0, \forall u \in U\right\}
$$

טענה : $U \oplus U^{\perp}=V$

הוכחה:

שאלה

1. הניחו כי $A$ מטריצה ריבועית. הוכיחו כי $I M\left(A^{T}\right)=\operatorname{Ker}(A)^{\perp}$.
2. טענה (ללא הוכחה) : מטריצה $A$ אינה לכסינה אם־ים קיים לפחות ע״ע אחד של $\lambda_{i}, A$ עבורו $\left(A-\lambda_{i}\right)^{k}=0,\left(A-\lambda_{i}\right)^{m} \neq 0, \forall k \geq 2, k \geq m$. השתמשו בטענה זו והראו כי אם $A$ מטריצה סימטרית אז היא ניתנת ללכסון.
3. השתמשו בתוצאות אלו כדי להראות כי $Q=I-P_{X}$ היא מטריצת הטלה למרחב המשלים האורתוגונלי של colspace(X) וכתבו במפורש את הפירוק הספקטרלי של $Q$ במונחי הוייע של $P_{X}$.
4. הסיקו מכך ש- $\hat{\beta}_{O L S}$ הוא הממזער של $\left|Y-X \beta\right|^{\left|{ }^{2}\right|}$ וכן שככל שדרגת $X$ גדולה יותר, נורמה זו הולכת וקטנה.

פתרון :

1

# Page 3

התפלגויות רב מימדיות:

יהיו Z_{1}, ... ,Z_{n} משתנים מקריים המפולגים במשותף (ללא שום הנחות נוספות) בהתפלגות

I

באותו האופן, אם A היא מטריצה מקרית, כלומר A_{ij} הוא מ^מ .

תכונות של תוחלות של מטריצות (ובפרט וקטורים) מקריים :
עבור W, Z מטריצות מקריות ו-A, B מטריצות קבועות, לא מקריות (דטרמיניסטיות) :

1. $\mathbb{E}[\boldsymbol{Z}+\boldsymbol{W}]=\mathbb{E}[\boldsymbol{Z}]+\mathbb{E}[\boldsymbol{W}]$
2. $\mathbb{E}[\boldsymbol{A} \boldsymbol{Z} \boldsymbol{B}]=\boldsymbol{A} \mathbb{E}[\boldsymbol{Z}] \boldsymbol{B}$
3. $\mathbb{E}[\boldsymbol{A} U+C]=A \mathbb{E}[U]+\boldsymbol{C} \quad$ (from 1+2)

עבור זוג וקטורים מקריים Z, W נגדיר את מטריצת השונות המשותפת בין Z, W :

$$
\operatorname{Cov}(Z, W):=E\left([Z-E(Z)][W-E(W)]^{T}\right)
$$

ובאופן דומה את מטריצת השונויות של הוקטור Z :

$$
\operatorname{Var}(Z):=\operatorname{Cov}(Z, Z):=E\left([Z-E(Z)][Z-E(Z)]^{T}\right)
$$

טענה : $\operatorname{Var}(Z)_{i j}=\operatorname{cov}\left(Z_{i}, Z_{j}\right)=\operatorname{cov}\left(Z_{j}, Z_{i}\right)=\operatorname{Var}(Z)_{j i}$

"הוכחה" :

# Page 4

בתרגיל תוכיחו את התכונות הבאות:
Properties of covariance matrix. $\boldsymbol{Z}, \boldsymbol{W}, \boldsymbol{R}$ random vectors; $\boldsymbol{a}$ fixed vector. Then the following
properties hold:

1. $\operatorname{cov}(\boldsymbol{Z}, \boldsymbol{W})=\operatorname{cov}(\boldsymbol{W}, \boldsymbol{Z})^{\top}$
2. $\operatorname{cov}(\boldsymbol{Z}+\boldsymbol{R}, \boldsymbol{W})=\operatorname{cov}(\boldsymbol{Z}, \boldsymbol{W})+\operatorname{cov}(\boldsymbol{R}, \boldsymbol{W})$
3. $\operatorname{cov}(\boldsymbol{A} \boldsymbol{Z}, \boldsymbol{B} \boldsymbol{W})=A \operatorname{cov}(\boldsymbol{Z}, \boldsymbol{W}) \boldsymbol{B}^{\top}$
4. $\operatorname{cov}(\boldsymbol{A Z})=\boldsymbol{A} \operatorname{cov}(\boldsymbol{Z}) \boldsymbol{A}^{\top} \quad$ (from 3)
5. $V\left(\boldsymbol{a}^{\top} \boldsymbol{Z}\right)=\boldsymbol{a}^{\top} \operatorname{cov}(\boldsymbol{Z}) \boldsymbol{a} \quad$ (from 4)
6. $\operatorname{cov}(\boldsymbol{Z})$ is a nonnegative definite matrix (from 5)

שאלה:
יהיו המשתנים המקריים הבאים: $X \sim \operatorname{Ber}(p), Y \sim \operatorname{Ber}(q)$ כך שמתקיים . $M:=X Y \sim \operatorname{Ber}(r)$
א. מצאו את וקטור התוחלות ומטריצת השונויות של הוקטור המקרי $Z=(X, Y, M)^{T}$
ב. נגדיר את ההעתקה: $A(v)=2 v_{1}-3 v_{2}+4 v_{3}+7 \cdot A: R^{3} \rightarrow R$. האם ההעתקה לינארית! על בסיס הסעיף הקודם חשבו את וקטור התוחלות ומטריצת השונויות של $A(Z)$.

ג. כעת הניחו ש- $X, Y$ ב״ת. חשבו את ההסתברות ( $P(X=1, Y=1, M=1$.

פתרון :

יהיו $Z, W \in R^{p}$ וקטורים מקריים. הראו שהבאים שקולים :
(1) $\forall v \in R^{p}, \operatorname{Var}\left(v^{T} Z\right) \geq \operatorname{Var}\left(v^{T} W\right)$
(2) $B:=\operatorname{Var}(Z)-\operatorname{Var}(W)$ היא מטריצה חיובית למחצה.
(3) קיימת המטריצה $B^{\frac{1}{2}}$.

# Page 5

המודל הלינארי:

מודל ליניארי:

$$
Y_{i}=\sum_{j=0}^{p} \beta_{j} X_{i j}+\epsilon_{i}, \quad \operatorname{Cov}\left(\epsilon_{i}, \epsilon_{i^{\prime}}\right)=\left\{\begin{array}{ll}
\sigma^{2}, & i=i^{\prime} \\
0, & i \neq i^{\prime}
\end{array}\right.
$$

כאשר $\boldsymbol{X}_{\boldsymbol{I}}=\left(1, X_{i 1}, \ldots, X_{i p}\right)^{\top}$ הם ממימד $p+1, p+2, \ldots, \sigma^{2} \cdot \boldsymbol{\beta}=\left(\beta_{0}, \beta_{1}, \ldots, \beta_{p}\right)^{\top}$
אפשר לקבל ייצוג קומפקטי בעזרת כתיב מטריצות. נסמן:

$$
\boldsymbol{Y}=\left[\begin{array}{c}
Y_{1} \\
\vdots \\
Y_{n}
\end{array}\right], \quad \boldsymbol{X}=\left[\begin{array}{cccc}
1 & X_{11} & \cdots & X_{1 p} \\
1 & X_{21} & \cdots & X_{2 p} \\
\vdots & \vdots & & \vdots \\
1 & X_{n 1} & \cdots & X_{n p}
\end{array}\right], \quad \boldsymbol{\epsilon}=\left[\begin{array}{c}
\epsilon_{1} \\
\vdots \\
\epsilon_{n}
\end{array}\right], \quad \boldsymbol{\beta}=\left[\begin{array}{c}
\beta_{1} \\
\vdots \\
\beta_{p}
\end{array}\right]
$$

אז את המודל הליניארי אפשר לכתוב:

$$
\boldsymbol{Y}=\boldsymbol{X} \boldsymbol{\beta}+\boldsymbol{\epsilon}, \quad \mathbb{E}[\boldsymbol{\epsilon}]=\mathbf{0}, \quad \operatorname{cov}[\boldsymbol{\epsilon}]=\sigma^{2} \boldsymbol{I}
$$

כמו כן:
(הערה: אם לא נציין אחרת, $\hat{\boldsymbol{\beta}}$ זה אומד הריבועים הפחותים)

לפניכם מספר טענות. התאימו לכל טענה האם מדובר בהנחה או בתוצאה מתמטית :

$$
\begin{aligned}
& \hat{\beta}=\operatorname{argmin}_{\beta}\|Y-X \beta\|^{2} . \\
& X \beta=E(Y \mid X) . \\
& \text { 2. }
\end{aligned}
$$

# Page 6

- 3. 0=E(e¡)
- 4. 0=E(ë)
- 5. $X^{T} e=0$
- 6. $C o v(Y)=0^{2} I$

1

שאלה:

לפניכם מתוארים מספר מקרים. עבור כל אחד מהם פרטו את ההתפלגויות של X, Y, Y|X, e וכתבו אילו הנחות של המודל הליטארי כל אחד מהם מקיים :

- 1. Vt_{i} = R קבועים מראש,
- 2. Vt_{i} = N(0,1) כאשר

2. Vt_{i} = R מ״מ נורמליים סטנרדטיים וב״ת, Vt_{i} = X_{i}^{T}מ + 1 כאשר (Vt_{i} = N(0,1 ב״ת.
- 3. X_{i} = R מ״מ נורמליים סטנרדטיים וב״ת, Vt_{i} = X_{i}^{2}מ + 1 כאשר (Vt_{i} = U(—1,1 ב״ת.
- 4. X_{it} = R קבועים מראש- כאשר ,X_{it} היא הדגימה של האדם ה- i בתקופה ה-t,
- 5. V_{it} = N(0,1) כאשר (V_{it} = N(0,1 והנדגמים ב״ת.

1

שאלה

- 1. יהי 0.ח \# 0. הראו כי ^{v}^{vT}מ היא מטריצת הטלה אורתוגונלית. מה דרגת המטריצה?
- 2. יהיו (V_{1},..., V_{n} — (μ,σ^{2}) מ״מ ב״ת ש״ה, כאשר שני הפרמטרים לא ידועים. הראו כי
- 3. הוא אומד ח״ה ל-^{2}σ.

# Page 7

3. הניחו כעת כי ( $Y_{1}, \ldots, Y_{n} \sim N\left(\mu, \sigma^{2}\right)$.
( $n-1) S_{n}^{2} \sim \sigma^{2} \chi_{n-1}^{2}$.
2. נתון ${ }^{m} \in \mathbb{R}$ וקטור מקרי. הראו כי מתקיים ש

$$
\mathbb{E}\left(| | Z\left|\left.\right|^{2}\right)=\operatorname{tr}\left(\mathbb{E}\left[Z Z^{T}\right]\right)\right.
$$

הסיקו מכך כי אם $\mathbb{E}[Z]=0$ אזי מתקיים כי

$$
\mathbb{E}\left(| | Z\left|\left.\right|^{2}\right)=\operatorname{tr}(\operatorname{cov}[Z])
$$

פרטו והצדיקו כל שלב בהוכחה.
הוכחה :

# Page 8




