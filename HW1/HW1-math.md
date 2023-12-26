# CV Assignment 1 - Math Part(1-3)



### 1.

(1)Closure

$\forall M_i,M_j \in \{M_i\}$,

let $M
=M_i\times M_j
=\begin{bmatrix}
R_i & \bold{t}_i\\
\bold{0}^T & 1
\end{bmatrix} 
\times 
\begin{bmatrix}
R_j & \bold{t}_j\\
\bold{0}^T & 1
\end{bmatrix}
= \begin{bmatrix}
R_iR_j & R_i\bold{t}_j+\bold{t}_i\\
\bold{0}^T & 1
\end{bmatrix}$.

To prove closure is to prove that $M \in \{M_i\}$.

Obviously, $M\in \mathbb{R}^{4\times4}, R_i \in \mathbb{R}^{3\times3}, R_j \in \mathbb{R}^{3\times3}, R_iR_j \in \mathbb{R}^{3\times3}, R_i\bold{t}_j+\bold{t}_i \in \mathbb{R}^{3\times1}$.

$det(R_iR_j)=det(R_i)det(R_j)=1\times1=1$.

$(R_iR_j)(R_iR_j)^T=(R_iR_j)(R_j^TR_i^T)=R_i(R_jR_j^T)R_i^T=R_iIR_i^T=R_iR_i^T=I$, where $I\in \mathbb{R}^{3\times3}$ indicates identity matrix. That means matrix $R_iR_j$ is an orthonormal matrix.

In summary, matrix $M$ satisfies that $M\in \mathbb{R}^{4\times4}, R_iR_j \in \mathbb{R}^{3\times3}, R_i\bold{t}_j+\bold{t}_i \in \mathbb{R}^{3\times1}$, $R_iR_j$ is orthonormal , and $det(R_iR_j)=1$. So matrix $M\in \{M_i\}$.

Thus $\{M_i\}$ satisfies the property of closure.



(2)Associativity

$\forall M_i,M_j,M_k \in \{M_i\}$,

$(M_iM_j)M_k
=(\begin{bmatrix}
R_i & \bold{t}_i\\
\bold{0}^T & 1
\end{bmatrix} 
\begin{bmatrix}
R_j & \bold{t}_j\\
\bold{0}^T & 1
\end{bmatrix})
\begin{bmatrix}
R_k & \bold{t}_k\\
\bold{0}^T & 1
\end{bmatrix}
=\begin{bmatrix}
R_iR_j & R_i\bold{t}_j+\bold{t}_i\\
\bold{0}^T & 1
\end{bmatrix}
\begin{bmatrix}
R_k & \bold{t}_k\\
\bold{0}^T & 1
\end{bmatrix}
=\begin{bmatrix}
R_iR_jR_k & R_iR_j\bold{t}_k+R_i\bold{t}_j+\bold{t}_i\\
\bold{0}^T & 1
\end{bmatrix}$

$M_i(M_jM_k)
=\begin{bmatrix}
R_i & \bold{t}_i\\
\bold{0}^T & 1
\end{bmatrix} 
(\begin{bmatrix}
R_j & \bold{t}_j\\
\bold{0}^T & 1
\end{bmatrix}
\begin{bmatrix}
R_k & \bold{t}_k\\
\bold{0}^T & 1
\end{bmatrix})
=\begin{bmatrix}
R_i & \bold{t}_i\\
\bold{0}^T & 1
\end{bmatrix}
\begin{bmatrix}
R_jR_k & R_j\bold{t}_k+\bold{t}_j\\
\bold{0}^T & 1
\end{bmatrix}
=\begin{bmatrix}
R_iR_jR_k & R_iR_j\bold{t}_k+R_i\bold{t}_j+\bold{t}_i\\
\bold{0}^T & 1
\end{bmatrix}$

So $(M_iM_j)M_k=M_i(M_jM_k)$.

Thus $\{M_i\}$ satisfies the property of associativity.



(3)Existence of an identity element

Let identity matrix $E=I_{4\times4}=
\begin{bmatrix}
I_{3\times3} & \bold{0}\\
\bold{0}^T & 1
\end{bmatrix}$, where $\bold{0}\in \mathbb{R}^{3\times1}$.

Firstly, we prove that $E\in \{M_i\}$.

Obviously, $I_{3\times3}I_{3\times3}^T=I_{3\times3}^TI_{3\times3}=I_{3\times3},det(I_{3\times3})=1$.

So $E$ is an element of set $\{M_i\}$.

Because $E$ is an identity matrix, we know that

$\forall M\in\{M_i\},EM=ME=M$

Thus $\{M_i\}$ satisfies the property of existence of an identity element.



(4)Existence of an inverse element for each group element

For $\forall M\in\{M_i\},M=(\begin{bmatrix}
R & \bold{t}\\
\bold{0}^T & 1
\end{bmatrix} $, $R$ is orthonormal, so $RR^{T}=I$, where $I$ indicates identity matrix.

Let $M^{-1}=\begin{bmatrix}
R^{T} & -R^{T}\bold{t}\\
\bold{0}^T & 1
\end{bmatrix} $.

Firstly, we prove that $M^{-1}\in \{M_i\}$.

Obviously, $R^T\in \mathbb{R}^{3\times3}, -R^T\bold{t}\in \mathbb{R}^{3\times1}$,

$R^{T}(R^{T})^{T}=R^{T}R=I$, where $I$ indicates identity matrix, 

and $det(R^{T})=det(R)=1$.

So $M^{-1}$ is an element of set $\{M_i\}$.

To prove that $M^{-1}$ is an inverse element for each group element, we compute:

$MM^{-1}=
\begin{bmatrix}
R & \bold{t}\\
\bold{0}^T & 1
\end{bmatrix}
\begin{bmatrix}
R^{T} & -R^{T}\bold{t}\\
\bold{0}^T & 1
\end{bmatrix}
=
\begin{bmatrix}
RR^{T} & -RR^{T}\bold{t}+\bold{t}\\
\bold{0}^T & 1
\end{bmatrix}
=
\begin{bmatrix}
I_{3\times3} & \bold{0}\\
\bold{0}^T & 1
\end{bmatrix}
=I_{4\times4}$

$M^{-1}M=
\begin{bmatrix}
R^T & -R^T\bold{t}\\
\bold{0}^T & 1
\end{bmatrix}
\begin{bmatrix}
R & \bold{t}\\
\bold{0}^T & 1
\end{bmatrix}
=
\begin{bmatrix}
R^{T}R & R^{T}\bold{t}-R^T\bold{t}\\
\bold{0}^T & 1
\end{bmatrix}
=
\begin{bmatrix}
I_{3\times3} & \bold{0}\\
\bold{0}^T & 1
\end{bmatrix}
=I_{4\times4}$

So $M^{-1}\in \{M_i\}$ is an an inverse element for each group element.

### 2.

a)

To prove that the $n×n$ real symmetric matrix $M$ is semi-positive definite is to prove that its eigenvalues satisfy that $\lambda_1≥0,\lambda_2≥0$.

We know that:

$\lambda_1\lambda_2=det(M)=
\sum_{(x_i,y_i)\in w}(I_x)^2 \sum_{(x_i,y_i)\in w}(I_y)^2 - (\sum_{(x_i,y_i)\in w}(I_xI_y))^2
$

$\lambda_1+\lambda_2=trace(M)=\sum_{(x_i,y_i)\in w}(I_x)^2 \sum_{(x_i,y_i)\in w}(I_y)^2$.

Obviously, $\sum_{(x_i,y_i)\in w}(I_x)^2≥0, \sum_{(x_i,y_i)\in w}(I_y)^2≥0$, so $\lambda_1+\lambda_2≥0$.

Let's apply Cauchy-Schwarz Inequality:

$\sum_{(x_i,y_i)\in w}(I_x)^2 \sum_{(x_i,y_i)\in w}(I_y)^2 ≥ (\sum_{(x_i,y_i)\in w}(I_xI_y))^2
$,

so $\lambda_1\lambda_2≥0$.

$\lambda_1\lambda_2≥0 \and \lambda_1+\lambda_2≥0 \iff \lambda_1≥0 \and \lambda_2≥0$.

Thus $M$ is positive semi-definite.



b)

For simplicity, we note $\sum_{(x_i,y_i)\in w}(I_x)^2=A,\sum_{(x_i,y_i)\in w}(I_xI_y)=B,\sum_{(x_i,y_i)\in w}(I_y)^2=C$.

So $M=\begin{bmatrix}A & B \\ B & C\end{bmatrix}$.

$\begin{bmatrix}x & y\end{bmatrix} M \begin{bmatrix}x \\ y\end{bmatrix}
=
\begin{bmatrix}x & y\end{bmatrix} 
\begin{bmatrix}A & B \\ B & C\end{bmatrix}
\begin{bmatrix}x \\ y\end{bmatrix}
=
Ax^2+2Bxy+Cy^2
=1$.

According to the theory of conic sections, to prove that $Ax^2+2Bxy+Cy^2=1$ represents an ellipse is to prove that $A>0,C>0$ and the discriminant $4AC-(2B)^2>0$.

$M$ is positive definite, so its eigenvalues satisfy $\lambda_1>0, \lambda_2>0$.

$M$ satisfies that $det(M)=AC-B^2=\lambda_1\lambda_2>0$, so the discriminant $4AC-(2B)^2=4(AC-B^2)>0$.

$trace(M)=AC=\lambda_1+\lambda_2>0$, and obviously $A=\sum_{(x_i,y_i)\in w}(I_x)^2≥0,C=\sum_{(x_i,y_i)\in w}(I_y)^2≥0$, so $A>0, C>0$.

In summary, $Ax^2+2Bxy+Cy^2=1$ satisfies that $A>0,C>0$ and the discriminant $4AC-(2B)^2>0$. 

Thus $\begin{bmatrix}x & y\end{bmatrix} M \begin{bmatrix}x \\ y\end{bmatrix}$ represents an ellipse.



c)

We note $\alpha_1, \alpha_2(||\alpha_1||_2^2=1,||\alpha_2||_2^2=1)$ the eigenvectors of $M$, corresponding to $\lambda_1,\lambda_2$ respectively.

According to the condition that eigenvalues of the $n×n$ real symmetric matrix $M$ satisfy $\lambda_1>\lambda_2>0$, its eigenvectors are linearly independent, so $M$ can be diagonalized.

Diagonalize $M$:

$M=P^{T}\Lambda P,P=[\alpha_1,\alpha_2],\Lambda=\begin{bmatrix}\lambda_1 & 0 \\ 0 & \lambda_2\end{bmatrix}$

Rewrite $\begin{bmatrix}x & y\end{bmatrix} M \begin{bmatrix}x \\ y\end{bmatrix}=1$:

$\begin{bmatrix}x & y\end{bmatrix} M \begin{bmatrix}x \\ y\end{bmatrix}
=
\begin{bmatrix}x & y\end{bmatrix} P^T\Lambda P \begin{bmatrix}x \\ y\end{bmatrix}
=
(P\begin{bmatrix}x \\ y\end{bmatrix})^T \Lambda (P\begin{bmatrix}x \\ y\end{bmatrix})
=1$

Note $X=\begin{bmatrix}u \\ v\end{bmatrix}=P\begin{bmatrix}x \\ y\end{bmatrix}$, we have 

$X^T\Lambda X
=
X^T \begin{bmatrix}\lambda_1 & 0 \\ 0 & \lambda_2\end{bmatrix} X
=\lambda_1 u^2+\lambda_2 v^2=
\frac{u^2}{\frac{1}{\lambda_1}}+\frac{v^2}{\frac{1}{\lambda_2}}=1$.

We know $\lambda_1>\lambda_2>0$, so $\frac{1}{\lambda_2}>\frac{1}{\lambda_1}>0$

Thus for the ellipse, the length of its semi-major axis is $\frac{1}{\sqrt{\lambda_2}}$, the length of its semi-minor axis is $\frac{1}{\sqrt{\lambda_1}}$.

### 3.

Firstly, let's prove that $rank(A^TA)=rank(A)=n$, for which we prove that the homogeneous linear equation system $A\bold{x}=0$ and $A^TA\bold{x}=0$ have the same solution

Obviously, the solutions of $A\bold{x}=0$ are also solutions of $A^TA\bold{x}=0$

Let vector $\bold{\alpha}$ be the solution of $A^TA\bold{x}=0$, then $\bold{\alpha}^TA^TA\bold{\alpha}=(A\bold{\alpha})^T(A\bold{\alpha})=0$. The inner product of vector $A\bold{\alpha}$ is 0, then $A\bold{\alpha}=\bold{0}$. So the solutions of $A^TA\bold{x}=0$ are also solutions of $A\bold{x}=0$.

Now we know that $A\bold{x}=0$ and $A^TA\bold{x}=0$ have the same solution, so $rank(A^TA)=rank(A)=n$.

Obviously, $A^TA\in \mathbb{R}^{n\times n}$. Since $rank(A^TA)=n$, $A^TA$ is invertible. 

