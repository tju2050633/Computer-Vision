# CV Assignment 3 - Math Part(1)



### 1.

To prove that $L(\bold{h})$ is strictly convex, we need to show that its Hessian matrix $\bold{H}(\bold{x})$ is positive definite. The Hessian matrix of $L(\bold{h})$ is derived from the second derivative of $L(\bold{h})$ with respect to $\bold{h}$.

Given the expression
$$
\begin{align}
L(\bold{h})&=\frac{1}{2}(f(\bold{x}+\bold{h}))^Tf(\bold{x}+\bold{h})+\frac{1}{2}\mu \bold{h}^T\bold{h}\\
&=\frac{1}{2}(f(\bold{x}))^Tf(\bold{x})+\bold{h}^T(\bold{J}(\bold{x}))^Tf(\bold{x})+\frac{1}{2}\bold{h}^T(\bold{J}(\bold{x}))^T\bold{J}(\bold{x})\bold{h}+\frac{1}{2}\mu \bold{h}^T\bold{h}\\
\end{align}
$$
$\bold{h}\in \mathbb{R}^n$, $L(\bold{h})$ is scalar, $f(\bold{x})\in \mathbb{R}^m$, $\bold{J}(\bold{x})\in \mathbb{R}^{m \times n}$.



We can get its Hessian:
$$
∇L(\bold{h})=\bold{J}(\bold{x})^Tf(\bold{x})+(\bold{J}(\bold{x}))^T\bold{J}(\bold{x})\bold{h}+\mu\bold{h}
$$
$∇L(\bold{h})\in \mathbb{R}^n$.
$$
\bold{H}(\bold{x}) \equiv∇^2L(\bold{h})=(\bold{J}(\bold{x}))^T\bold{J}(\bold{x})+\mu I
$$
$∇^2L(\bold{h})\in \mathbb{R}^{n\times n}$, where $I$ is the identity matrix.



To prove that $\bold{H}(\bold{x})$ is positive definite, we need to prove that for all non-zero vectors $\bold{z}$, $\bold{z}^T\bold{H}(\bold{x})\bold{z}>0$.
$$
\begin{align}
\bold{z}^T\bold{H}(\bold{x})\bold{z}&=\bold{z}^T((\bold{J}(\bold{x}))^T\bold{J}(\bold{x})+\mu I)\bold{z}\\
&=\bold{z}^T(\bold{J}(\bold{x}))^T\bold{J}(\bold{x})\bold{z}+\bold{z}^T\mu I\bold{z}\\
&=(\bold{J}(\bold{x})\bold{z})^T\bold{J}(\bold{x})\bold{z}+\mu \bold{z}^T\bold{z}\\
&= ||\bold{J}(\bold{x})\bold{z}||_2^2+\mu ||\bold{z}||_2^2
\end{align}
$$
Obviously, $||\bold{J}(\bold{x})\bold{z}||_2^2≥0$, $\mu ||\bold{z}||_2^2>0$(because $\mu>0$ and $\bold{z}$ is non-zero vector ), thus $\bold{z}^T\bold{H}(\bold{x})\bold{z}>0$.

So $\bold{H}(\bold{x})$ is positive definite, $L(\bold{h})$ is strictly convex.
