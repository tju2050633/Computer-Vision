# CV Assignment 2 - Math Part(1-3)



### 1.



For the infinity point $\bold{p}_{\infin}$ on the line, let its homogeneous coordinates be $(x, y, 0)$. Then, in the coordinate system $O_1$ in the plane, the vector with coordinates $(x, y)$ is parallel to the line in the coordinate system $O$ corresponding to $\bold{p}_{\infin}$ (whose direction vector is also $(x, y, 0)$).

Therefore, by appending a 0 to the direction vector of the line, we obtain the homogeneous coordinates of the infinity point. Obviously, for the line x − 3 y + 4 = 0, the directional vector is $(3, 1)$.

Thus the homogeneous coordinates of the infinity point $\bold{p}_{\infin}$ on the line is $(3,1,0)^T$.



### 2.

According to the derivative formula of vector function with respect to vector variable:
$$
\frac{\mathrm{d}\bold{p}_d}{\mathrm{d}\bold{p}_n^T}=
\begin{bmatrix}
\frac{\partial x_d}{\partial x} & \frac{\partial x_d}{\partial y} \\
\frac{\partial y_d}{\partial x} & \frac{\partial y_d}{\partial y}
\end{bmatrix}
$$
Next, calculate the value of each element in the matrix separately.

Substitude $r^2=x^2+y^2,r^4=x^4+2x^2y^2+y^4,r^6=x^6+3x^4y^2+3x^2y^4+y^6$ into the definition of $x_d$ and $y_d$:
$$
x_d=x + k_1(x^3+xy^2)+k_2(x^5+2x^3y^2+xy^4)+\rho_1·2xy+\rho_2(3x^2+y^2)+k_3(x^7+3x^5y^2+3x^3y^4+xy^6)
$$

$$
y_d=y + k_1(x^2y+y^3)+k_2(x^4y+2x^2y^3+y^5)+\rho_2·2xy+\rho_1(x^2+3y^2)+k_3(x^6y+3x^4y^3+3x^2y^5+y^7)
$$

Then calculate each partial derivative:
$$
\frac{\partial x_d}{\partial x}=1+k_1(3x^2+y^2)+k_2(5x^4+6x^2y^2+y^4)+\rho_1·2y+\rho_2·6x+k_3(7x^6+15x^4y^2+9x^2y^4+y^6)
$$

$$
\frac{\partial x_d}{\partial y}=k_1·2xy+k_2(4x^3y+4xy^3)+\rho_1·2x+\rho_2·2y+k_3(6x^5y+12x^3y^3+6xy^5)
$$

$$
\frac{\partial y_d}{\partial x}=k_1·2xy+k_2(4x^3y+4xy^3)+\rho_2·2y+\rho_1·2x+k_3(6x^5y+12x^3y^3+6xy^5)
$$

$$
\frac{\partial y_d}{\partial y}=1+k_1(x^2+3y^2)+k_2(x^4+6x^2y^2+5y^4)+\rho_2·2x+\rho_1·6y+k_3(x^6+9x^4y^2+15x^2y^4+7y^6)
$$

Note that $\frac{\partial x_d}{\partial y}=\frac{\partial y_d}{\partial x}$, the matrix is a symmetric matrix.

Thus, we obtained the Jacobian matrix of $\bold{p}_d$ with respect to $\bold{p}_n$.

### 3.

Expand the matrix R to get its complete expression:
$$
\bold{R}=
\beta\bold{I}+\gamma \bold{n}\bold{n}^T+\alpha \bold{n}\textasciicircum=
\begin{bmatrix}
\gamma n_1n_1+\beta & \gamma n_1n_2 -\alpha n_3& \gamma n_1n_3 + \alpha n_2\\
\gamma n_2n_1 + \alpha n_3 & \gamma n_2n_2+\beta & \gamma n_2n_3 -\alpha n_1\\
\gamma n_3n_1 - \alpha n_2 & \gamma n_3n_2 + \alpha n_1& \gamma n_3n_3+\beta\\
\end{bmatrix}=
\begin{bmatrix}
r_{11} & r_{12} & r_{13} \\
r_{21} & r_{22} & r_{23} \\
r_{31} & r_{32} & r_{33} \\
\end{bmatrix}
$$
According to the relationship between $\theta$, $\bold{d}$ and $\bold{n}$: $\bold{d}=
\begin{bmatrix}
d_1 \\ d_2 \\ d_3
\end{bmatrix} = 
\theta \bold{n} = 
\theta 
\begin{bmatrix}
n_1 \\ n_2 \\ n_3
\end{bmatrix}$ and that $\bold{n}$ is a unit vector, we know $\theta=||d||=\sqrt{d_1^2+d_2^2+d_3^2}$.

And obviously, $n_1=\frac{d_1}{\theta},n_2=\frac{d_2}{\theta},n_3=\frac{d_3}{\theta}$.

According to the derivative formula of vector function with respect to vector variable:
$$
\frac{\mathrm{d}\bold{r}}{\mathrm{d}\bold{d}^T}=
\begin{bmatrix}
\frac{\partial r_{11}}{\partial d_1} & \frac{\partial r_{11}}{\partial d_2} & \frac{\partial r_{11}}{\partial d_3} \\
\frac{\partial r_{12}}{\partial d_1} & \frac{\partial r_{12}}{\partial d_2} & \frac{\partial r_{12}}{\partial d_3} \\
\vdots & \vdots & \vdots \\
\frac{\partial r_{33}}{\partial d_1} & \frac{\partial r_{33}}{\partial d_2} & \frac{\partial r_{33}}{\partial d_3} \\
\end{bmatrix}
$$
Each element in $\bold{R}$ is a function of $\alpha, \beta, \gamma$ and  $\theta$ (since $n_1=\frac{d_1}{\theta},n_2=\frac{d_2}{\theta},n_3=\frac{d_3}{\theta}$). In order to find their derivatives with respect to $d_1,d_2$ and $d_3$, let's do some preparation:

- Calculate the derivatives of  $n_1,n_2$ and $n_3$ with respect to $d_1,d_2$ and $d_3$. 

$$
\frac{\partial  n_1}{\partial  d_1}=
\frac{\partial  (\frac{d_1}{\sqrt{d_1^2+d_2^2+d_3^2}}))}{\partial  d_1}=
\frac{\sqrt{d_1^2+d_2^2+d_3^2}-\frac{d_1}{\sqrt{d_1^2+d_2^2+d_3^2}}}{d_1^2+d_2^2+d_3^2}=
\frac{\theta-\frac{\theta^2n_1^2}{\theta}}{\theta^2}=
\frac{1-n_1^2}{\theta}
$$

Similarly, we get
$$
\frac{\partial  n_2}{\partial  d_2}=\frac{1-n_2^2}{\theta}
$$

$$
\frac{\partial  n_3}{\partial  d_3}=\frac{1-n_3^2}{\theta}
$$

$$
\frac{\partial  n_1}{\partial  d_2}=\frac{\partial  n_2}{\partial  d_1}=\frac{-n_1n_2}{\theta}
$$

$$
\frac{\partial  n_2}{\partial  d_3}=\frac{\partial  n_3}{\partial  d_2}=\frac{-n_2n_3}{\theta}
$$

$$
\frac{\partial  n_1}{\partial  d_3}=\frac{\partial  n_3}{\partial  d_1}=\frac{-n_1n_3}{\theta}
$$



- Calculate the derivatives of $\theta$ with respect to $d_1,d_2$ and $d_3$.

$$
\frac{\partial \theta}{\partial  d_1}=
\frac{\partial  (\sqrt{d_1^2+d_2^2+d_3^2}))}{\partial  d_1}=
\frac{d_1}{\sqrt{d_1^2+d_2^2+d_3^2}}=
\frac{d_1}{\theta} = n_1
$$

Similarly, we get
$$
\frac{\partial \theta}{\partial  d_2}= n_2
$$

$$
\frac{\partial \theta}{\partial  d_3}= n_3
$$

- Calculate the derivatives of $\alpha$ with respect to $d_1,d_2$ and $d_3$.

$$
\frac{\partial \alpha}{\partial  d_1}=
\frac{\partial (\sin\theta)}{\partial  d_1}=
\cos\theta \frac{\partial \theta}{\partial  d_1}=
\beta n_1
$$

Similarly, we get
$$
\frac{\partial \alpha}{\partial  d_2}=\beta n_2
$$

$$
\frac{\partial \alpha}{\partial  d_3}=\beta n_3
$$

- Calculate the derivatives of $\beta$ with respect to $d_1,d_2$ and $d_3$.

$$
\frac{\partial \beta}{\partial  d_1}=
\frac{\partial (\cos\theta)}{\partial  d_1}=
-\sin\theta \frac{\partial \theta}{\partial  d_1}=
-\alpha n_1
$$

Similarly, we get
$$
\frac{\partial \beta}{\partial  d_2}=-\alpha n_2
$$

$$
\frac{\partial \beta}{\partial  d_3}=-\alpha n_3
$$

- Calculate the derivatives of $\gamma$ with respect to $d_1,d_2$ and $d_3$.

$$
\frac{\partial \gamma}{\partial  d_1}=
\frac{\partial (1-\cos\theta)}{\partial  d_1}=
\sin\theta \frac{\partial \theta}{\partial  d_1}=
\alpha n_1
$$

Similarly, we get
$$
\frac{\partial \gamma}{\partial  d_2}=\alpha n_2
$$

$$
\frac{\partial \gamma}{\partial  d_3}=\alpha n_3
$$



After these calculations, we calculate the derivatives of $r_{ij},1≤i,j≤3$ with respect to $d_1,d_2$ and $d_3$ according to *Chain Rule*.

- $r_{11}$

$$
\frac{\partial r_{11}}{\partial  d_1}=
\frac{\partial r_{11}}{\partial  \gamma}\frac{\partial \gamma}{\partial  d_1}+
\frac{\partial r_{11}}{\partial  n_1}\frac{\partial n_1}{\partial  d_1}+
\frac{\partial r_{11}}{\partial  \beta}\frac{\partial \beta}{\partial  d_1}=\\
n_1^2·\alpha n_1+2\gamma n_1·\frac{1-n_1^2}{\theta}+1·(-\alpha n_1)=\\
\alpha n_1^3+\frac{2\gamma n_1 (1-n_1^2)}{\theta}-\alpha n_1
$$

Similarly, we get
$$
\frac{\partial r_{11}}{\partial  d_2}=\alpha n_1^2n_2-\frac{2\gamma n_1^2n_2}{\theta}-\alpha n_2
$$

$$
\frac{\partial r_{11}}{\partial  d_3}=\alpha n_1^2n_3-\frac{2\gamma n_1^2n_3}{\theta}-\alpha n_3
$$



Noticed that $r_{11},r_{22},r_{33}$ have the same structure, we observe that their derivatives can be obtained easily by exchanging the subscript of $n_i,1≤i≤3$.

- $r_{22}$

$$
\frac{\partial r_{22}}{\partial  d_1}=\alpha n_1n_2^2-\frac{2\gamma n_1n_2^2}{\theta}-\alpha n_1
$$

$$
\frac{\partial r_{22}}{\partial  d_2}=\alpha n_2^3+\frac{2\gamma n_2(1-n_2^2)}{\theta}-\alpha n_2
$$

$$
\frac{\partial r_{22}}{\partial  d_3}=\alpha n_2^2n_3-\frac{2\gamma n_2^2n_3}{\theta}-\alpha n_3
$$

- $r_{33}$

$$
\frac{\partial r_{33}}{\partial  d_1}=\alpha n_1n_3^2-\frac{2\gamma n_1n_3^2}{\theta}-\alpha n_1
$$

$$
\frac{\partial r_{22}}{\partial  d_2}=\alpha n_2n_3^2-\frac{2\gamma n_2n_3^2}{\theta}-\alpha n_2
$$

$$
\frac{\partial r_{33}}{\partial  d_3}=\alpha n_3^3+\frac{2\gamma n_3(1-n_3^2)}{\theta}-\alpha n_3
$$

Repeat the above process of calculating derivatives using the *Chain Rule* and quickly expanding by exchanging subscripts by using the same structure, we get the following results.

- $r_{12}$

$$
\frac{\partial r_{12}}{\partial  d_1}=\alpha n_1^2n_2-\beta n_1n_3+\frac{\gamma n_2(1-2n_1^2)+\alpha n_1n_3}{\theta}
$$

$$
\frac{\partial r_{12}}{\partial  d_2}=\alpha n_1n_2^2-\beta n_2n_3+\frac{\gamma n_1(1-2n_2^2)+\alpha n_2n_3}{\theta}
$$

$$
\frac{\partial r_{12}}{\partial  d_3}=\alpha n_1n_2n_3-\beta n_3^2+\frac{\alpha(n_3^2-1)-2\gamma n_1n_2n_3}{\theta}
$$

- $r_{23}$

$$
\frac{\partial r_{23}}{\partial  d_2}=\alpha n_1n_2n_3-\beta n_1^2+\frac{\alpha(n_1^2-1)-2\gamma n_1n_2n_3}{\theta}
$$

$$
\frac{\partial r_{23}}{\partial  d_2}=\alpha n_2^2n_3-\beta n_1n_2+\frac{\gamma n_3(1-2n_2^2)+\alpha n_1n_2}{\theta}
$$

$$
\frac{\partial r_{23}}{\partial  d_3}=\alpha n_2n_3^2-\beta n_1n_3+\frac{\alpha n_1n_3+\gamma n_2(1-2n_3^2)}{\theta}
$$

- $r_{31}$

$$
\frac{\partial r_{31}}{\partial  d_1}=\alpha n_1^2n_3-\beta n_1n_2+\frac{\alpha n_1n_2+\gamma n_3(1-2n_1^2)}{\theta}
$$

$$
\frac{\partial r_{31}}{\partial  d_2}=\alpha n_1n_2n_3-\beta n_2^2+\frac{\alpha (n_2^2-1)+2\gamma n_1n_2n_3}{\theta}
$$

$$
\frac{\partial r_{31}}{\partial  d_3}=\alpha n_1n_3^2-\beta n_2n_3+\frac{\alpha n_2n_3+\gamma n_1(1-2n_3^2)}{\theta}
$$

- $r_{13}$

$$
\frac{\partial r_{13}}{\partial  d_1}=\alpha n_1^2n_3+\beta n_1n_2+\frac{\gamma n_3(1-2n_1^2)-\alpha n_1n_2}{\theta}
$$

$$
\frac{\partial r_{13}}{\partial  d_2}=\alpha n_1n_2n_3+\beta n_2^2+\frac{\alpha (1-n_2^2)-2\gamma n_1n_2n_3}{\theta}
$$

$$
\frac{\partial r_{13}}{\partial  d_3}=\alpha n_1n_3^2+\beta n_2n_3+\frac{\gamma n_1(1-2n_3^2)-\alpha n_1n_3}{\theta}
$$

- $r_{21}$

$$
\frac{\partial r_{21}}{\partial  d_1}=\alpha n_1^2n_2+\beta n_1n_3+\frac{\gamma n_2(1-2n_1^2)-\alpha n_1n_3}{\theta}
$$

$$
\frac{\partial r_{21}}{\partial  d_2}=\alpha n_1n_2^2+\beta n_2n_3+\frac{\gamma n_1(1-2n_2^2)-\alpha n_2n_3}{\theta}
$$

$$
\frac{\partial r_{21}}{\partial  d_3}=\alpha n_1n_2n_3+\beta n_3^2+\frac{\alpha (1-n_3^2)-2\gamma n_1n_2n_3}{\theta}
$$

- $r_{32}$

$$
\frac{\partial r_{32}}{\partial  d_1}=\alpha n_1n_2n_3+\beta n_1^2+\frac{\alpha (1-n_1^2)-2\gamma n_1n_2n_3}{\theta}
$$

$$
\frac{\partial r_{32}}{\partial  d_2}=\alpha n_2^2n_3+\beta n_1n_2+\frac{\gamma n_3(1-2n_2^2)-\alpha n_1n_2}{\theta}
$$

$$
\frac{\partial r_{32}}{\partial  d_3}=\alpha n_2n_3^2+\beta n_1n_3+\frac{\gamma n_2(1-2n_3^2)-\alpha n_1n_3}{\theta}
$$



Now we know the structure of the Jacobian matrix $\frac{\mathrm{d} \bold{r}}{\mathrm{d} \bold{d}^T}=\begin{bmatrix}
\frac{\partial r_{11}}{\partial d_1} & \frac{\partial r_{11}}{\partial d_2} & \frac{\partial r_{11}}{\partial d_3} \\
\frac{\partial r_{12}}{\partial d_1} & \frac{\partial r_{12}}{\partial d_2} & \frac{\partial r_{12}}{\partial d_3} \\
\vdots & \vdots & \vdots \\
\frac{\partial r_{33}}{\partial d_1} & \frac{\partial r_{33}}{\partial d_2} & \frac{\partial r_{33}}{\partial d_3} \\
\end{bmatrix}$ and each element of it(equation 28-54).
