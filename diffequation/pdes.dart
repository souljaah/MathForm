import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../differential_calculus.dart';

class PDEs extends StatelessWidget {
  final Color chosenColor;
  PDEs ({required this.chosenColor});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Partial Differential Equations (PDEs)'),
        backgroundColor: chosenColor,
      ),
      body: Container(
        color: chosenColor,
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Partial Differential Equations (PDEs)',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Partial Differential Equations (PDEs) are differential equations that involve multiple independent variables and partial derivatives of an unknown function with respect to those variables. Unlike ordinary differential equations (ODEs), which involve derivatives with respect to a single independent variable, PDEs involve derivatives with respect to two or more independent variables.\n\n'
                    'Mathematically, a partial differential equation can be represented as:\n\n'
                    'F(x1, x2, . . . , xn, u, ∂u/∂x1, ∂u/∂x2, . . . , ∂^2u/∂x1^2, ∂^2u/∂x1∂x2, . . .) = 0\n\n'
                    'Where:\n\n'
                    'u is the unknown function of x1, x2, . . . , xn (the independent variables).\n\n'
                    '∂u/∂xi represents the partial derivative of u with respect to the i-th independent variable xi.\n\n'
                    'F is a function that relates the unknown function u and its partial derivatives with the independent variables.\n\n'
                    'The equation is typically defined over a certain domain in the n-dimensional space.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                '\n\n\nPDEs can be classified based on various factors, including:\n\n1. Order: The highest order of the partial derivatives present in the equation.\n\n2. Linearity: PDEs can be linear or nonlinear depending on whether the unknown function and its partial derivatives appear linearly or not in the equation.\n\n3. Homogeneous vs. Non-homogeneous: A PDE is homogeneous if the right-hand side of the equation is zero, otherwise, it is non-homogeneous.\n\n4. Elliptic, Parabolic, or Hyperbolic: Depending on the nature of the differential operator involved, PDEs can be classified into different types such as elliptic, parabolic, or hyperbolic.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Differential Equation Partial Differential Equations (PDEs):\n\n'
                    'Example Problem:\n\n'
                    'Solve the one-dimensional heat equation:\n\n'
                    '∂u/∂t = k ∂^2u/∂x^2\n\n'
                    'with the initial condition u(x, 0) = f(x) and boundary conditions u(0, t) = u(L, t) = 0.\n\n'
                    'Step-by-step Solution:\n\n'
                    'Step 1: Separation of Variables\n\n'
                    'Assume u(x, t) = X(x)T(t) and substitute into the PDE:\n\n'
                    'X(x) * dT/dt = k * T(t) * d^2X/dx^2\n\n'
                    'Divide both sides by k * X(x) * T(t) to separate variables:\n\n'
                    '1/(k * T(t)) * dT/dt = 1/X(x) * d^2X/dx^2 = -λ\n\n'
                    'Step 2: Solve for the Spatial Component X(x)\n\n'
                    'Solve the spatial ODE d^2X/dx^2 + λX = 0 with boundary conditions X(0) = X(L) = 0:\n\n'
                    'The general solution is X(x) = B * sin(nπx/L), where n is a positive integer and B is a constant.\n\n'
                    'Step 3: Solve for the Temporal Component T(t)\n\n'
                    'Solve the temporal ODE dT/dt + kλT = 0:\n\n'
                    'The general solution is T(t) = Ce^(-kλt), where C is a constant.\n\n'
                    'Step 4: Combine Spatial and Temporal Components\n\n'
                    'The general solution of the PDE is the product of the spatial and temporal components:\n\n'
                    'u(x, t) = ∑[n=1 to ∞] B_n * sin(nπx/L) * e^(-k(πn/L)^2 t)\n\n'
                    'Step 5: Apply Initial Condition\n\n'
                    'Use the initial condition u(x, 0) = f(x) to determine the coefficients B_n by expanding f(x) in a Fourier sine series.\n\n'
                    'Step 6: Final Solution\n\n'
                    'Substitute the determined coefficients into the general solution to obtain the particular solution.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 1:\n\nSolve the one-dimensional heat equation:\n\n∂u/∂t = k ∂^2u/∂x^2\n\nwith the initial condition u(x, 0) = f(x) and boundary conditions u(0, t) = u(L, t) = 0.',
                solution: 'Solution:\n\n'
                    'Step 1: Separation of Variables\n\n'
                    'Assume u(x, t) = X(x)T(t) and substitute into the PDE:\n\n'
                    'X(x) * dT/dt = k * T(t) * d^2X/dx^2\n\n'
                    'Divide both sides by k * X(x) * T(t) to separate variables:\n\n'
                    '1/(k * T(t)) * dT/dt = 1/X(x) * d^2X/dx^2 = -λ\n\n'
                    'Step 2: Solve for the Spatial Component X(x)\n\n'
                    'Solve the spatial ODE d^2X/dx^2 + λX = 0 with boundary conditions X(0) = X(L) = 0:\n\n'
                    'The general solution is X(x) = B * sin(nπx/L), where n is a positive integer and B is a constant.\n\n'
                    'Step 3: Solve for the Temporal Component T(t)\n\n'
                    'Solve the temporal ODE dT/dt + kλT = 0:\n\n'
                    'The general solution is T(t) = Ce^(-kλt), where C is a constant.\n\n'
                    'Step 4: Combine Spatial and Temporal Components\n\n'
                    'The general solution of the PDE is the product of the spatial and temporal components:\n\n'
                    'u(x, t) = ∑[n=1 to ∞] B_n * sin(nπx/L) * e^(-k(πn/L)^2 t)\n\n'
                    'Step 5: Apply Initial Condition\n\n'
                    'Use the initial condition u(x, 0) = f(x) to determine the coefficients B_n by expanding f(x) in a Fourier sine series.\n\n'
                    'Step 6: Final Solution\n\n'
                    'Substitute the determined coefficients into the general solution to obtain the particular solution:\n\n'
                    'u(x, t) = ∑[n=1 to ∞] B_n * sin(nπx/L) * e^(-k(πn/L)^2 t)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 2:\n\nSolve the wave equation:\n\n∂^2u/∂t^2 = c^2 ∂^2u/∂x^2\n\nwith the initial condition u(x, 0) = f(x) and ∂u/∂t(x, 0) = g(x), and boundary conditions u(0, t) = u(L, t) = 0.',
                solution: 'Solution:\n\n'
                    'Step 1: Separation of Variables\n\n'
                    'Assume u(x, t) = X(x)T(t) and substitute into the PDE:\n\n'
                    'X(x) * d^2T/dt^2 = c^2 * T(t) * d^2X/dx^2\n\n'
                    'Divide both sides by c^2 * T(t) * X(x) to separate variables:\n\n'
                    '1/(c^2 * T(t)) * d^2T/dt^2 = 1/X(x) * d^2X/dx^2 = -λ\n\n'
                    'Step 2: Solve for the Spatial Component X(x)\n\n'
                    'Solve the spatial ODE d^2X/dx^2 + λX = 0 with boundary conditions X(0) = X(L) = 0:\n\n'
                    'The general solution is X(x) = B * sin(nπx/L), where n is a positive integer and B is a constant.\n\n'
                    'Step 3: Solve for the Temporal Component T(t)\n\n'
                    'Solve the temporal ODE d^2T/dt^2 + c^2λT = 0:\n\n'
                    'The general solution is T(t) = A * cos(cλt) + B * sin(cλt), where A and B are constants.\n\n'
                    'Step 4: Combine Spatial and Temporal Components\n\n'
                    'The general solution of the PDE is the product of the spatial and temporal components:\n\n'
                    'u(x, t) = ∑[n=1 to ∞] (A_n * cos(cλ_nt) + B_n * sin(cλ_nt)) * sin(λ_nx) + (C_n * cos(cλ_nt) + D_n * sin(cλ_nt)) * cos(λ_nx)\n\n'
                    'Step 5: Apply Initial Conditions\n\n'
                    'Use the initial conditions u(x, 0) = f(x) and ∂u/∂t(x, 0) = g(x) to determine the coefficients.\n\n'
                    'Step 6: Final Solution\n\n'
                    'Substitute the determined coefficients into the general solution to obtain the particular solution:\n\n'
                    'u(x, t) = ∑[n=1 to ∞] (A_n * cos(cλ_nt) + B_n * sin(cλ_nt)) * sin(λ_nx) + (C_n * cos(cλ_nt) + D_n * sin(cλ_nt)) * cos(λ_nx)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 3:\n\nSolve the Laplace equation:\n\n∇^2u = 0\n\nin a rectangular domain with boundary conditions u(x, 0) = f(x), u(x, L) = g(x), u(0, y) = h(y), and u(W, y) = k(y).',
                solution: 'Solution:\n\n'
                    'Step 1: Separation of Variables\n\n'
                    'Assume u(x, y) = X(x)Y(y) and substitute into the PDE:\n\n'
                    'X\'\'(x)/X(x) + Y\'\'(y)/Y(y) = 0\n\n'
                    'Step 2: Solve for the Spatial Component X(x)\n\n'
                    'Solve the ODE X\'\'(x)/X(x) = -λ with boundary conditions X(0) and X(W) finite:\n\n'
                    'The general solution is X(x) = A_n * cos(√λ_nx) + B_n * sin(√λ_nx), where A_n and B_n are constants.\n\n'
                    'Step 3: Solve for the Temporal Component Y(y)\n\n'
                    'Solve the ODE Y\'\'(y)/Y(y) = λ with boundary conditions Y(0) = h(y) and Y(L) = k(y):\n\n'
                    'The general solution is Y(y) = C_n * cos(√λ_ny) + D_n * sin(√λ_ny), where C_n and D_n are constants.\n\n'
                    'Step 4: Combine Spatial and Temporal Components\n\n'
                    'The general solution of the PDE is the product of the spatial and temporal components:\n\n'
                    'u(x, y) = ∑[n=1 to ∞] (A_n * cos(√λ_nx) + B_n * sin(√λ_nx)) * (C_n * cos(√λ_ny) + D_n * sin(√λ_ny))\n\n'
                    'Step 5: Apply Boundary Conditions\n\n'
                    'Use the boundary conditions to determine the coefficients A_n, B_n, C_n, and D_n.\n\n'
                    'Step 6: Final Solution\n\n'
                    'Substitute the determined coefficients into the general solution to obtain the particular solution.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 4:\n\nSolve the advection-diffusion equation:\n\n∂u/∂t + c ∂u/∂x = D ∂^2u/∂x^2\n\nwith the initial condition u(x, 0) = f(x) and boundary conditions u(0, t) = u(L, t) = 0.',
                solution: 'Solution:\n\n'
                    'Step 1: Convert to a single variable\n\n'
                    'Define a new variable v(x, t) = u(x, t) - b(x), where b(x) = ∫[0 to x] f(x\') dx\' is the mean of f(x) up to x.\n\n'
                    'Step 2: Solve the Diffusion Equation\n\n'
                    'Solve the diffusion equation ∂v/∂t = D ∂^2v/∂x^2 with the initial condition v(x, 0) = u(x, 0) - b(x) and boundary conditions v(0, t) = v(L, t) = 0.\n\n'
                    'Step 3: Solve the Advection Equation\n\n'
                    'Solve the advection equation ∂u/∂t + c ∂u/∂x = 0 with the initial condition u(x, 0) = f(x) and boundary conditions u(0, t) = u(L, t) = 0.\n\n'
                    'Step 4: Combine Solutions\n\n'
                    'The solution of the advection-diffusion equation is the sum of the solutions of the diffusion and advection equations.\n\n'
                    'Step 5: Final Solution\n\n'
                    'Add the mean function b(x) to the solution of the advection-diffusion equation to obtain the particular solution.',
              ),
              SizedBox(height: 20),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 5:\n\nSolve the Poisson equation:\n\n∇^2u = -f(x, y)\n\nin a circular domain with boundary conditions u(r, θ) = g(θ).',
                solution: 'Solution:\n\n'
                    'Step 1: Separation of Variables\n\n'
                    'Assume u(r, θ) = R(r)Θ(θ) and substitute into the PDE:\n\n'
                    'R\'\'(r)/R(r) + (1/r)R\'(r) + Θ\'\'(θ)/Θ(θ) = -f(x, y)\n\n'
                    'Step 2: Solve for the Radial Component R(r)\n\n'
                    'Solve the ODE R\'\'(r)/R(r) + (1/r)R\'(r) = λ with boundary conditions R(0) is finite and R(R) is finite.\n\n'
                    'Step 3: Solve for the Angular Component Θ(θ)\n\n'
                    'Solve the ODE Θ\'\'(θ)/Θ(θ) = -λ with boundary conditions Θ(0) = Θ(2π) and Θ\'(0) = Θ\'(2π) finite.\n\n'
                    'Step 4: Combine Solutions\n\n'
                    'The general solution of the PDE is the product of the radial and angular components:\n\n'
                    'u(r, θ) = ∑[n=1 to ∞] (A_n * cos(nθ) + B_n * sin(nθ)) * J_n(λ_nr)\n\n'
                    'where J_n(λ_nr) is the Bessel function of the first kind of order n.\n\n'
                    'Step 5: Apply Boundary Conditions\n\n'
                    'Use the boundary conditions to determine the coefficients A_n and B_n.\n\n'
                    'Step 6: Final Solution\n\n'
                    'Substitute the determined coefficients into the general solution to obtain the particular solution.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                  problem: 'Problem 6:\n\n'
                      'Solve the heat equation in one dimension:\n\n'
                      '∂u/∂t = α * ∂^2u/∂x^2,\n\n'
                      'subject to initial condition u(x,0) = f(x) and boundary condition u(0,t) = u(L,t) = 0.',
                  solution: 'Solution:\n\n'
                      'The solution of the heat equation can be obtained using separation of variables.\n'
                      'Assume u(x, t) = X(x)T(t), then substitute into the heat equation.\n'
                      'After separation and solving the resulting ODEs, the solution is in the form:\n'
                      'u(x, t) = ∑[n=1 to ∞] (B_n * sin(nπx/L)) * (e^(-α(nπ/L)^2t))\n'
                      'where B_n = (2/L) ∫[0 to L] f(x) * sin(nπx/L) dx.\n'
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 7:\n\n'
                    'Solve the wave equation in one dimension:\n\n'
                    '∂^2u/∂t^2 = c^2 * ∂^2u/∂x^2,\n\n'
                    'subject to initial conditions u(x,0) = f(x) and ∂u/∂t(x,0) = g(x).',
                solution: 'Solution:\n\n'
                    'The solution of the wave equation can be obtained using separation of variables.\n'
                    'Assume u(x, t) = X(x)T(t), then substitute into the wave equation.\n'
                    'After separation and solving the resulting ODEs, the solution is in the form:\n'
                    'u(x, t) = ∑[n=1 to ∞] (A_n * sin(nπx/L)) * (cos(nπct/Lt) + B_n * sin(nπx/L) * sin(nπct/Lt))\n'
                    'where A_n = (2/L) ∫[0 to L] f(x) * sin(nπx/L) dx\n'
                    'and B_n = (2/(nπc)) ∫[0 to L] g(x) * sin(nπx/L) dx.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 8:\n\n'
                    'Solve the Laplace equation in two dimensions:\n\n'
                    '∇^2u = 0,\n\n'
                    'subject to boundary conditions u(x,0) = f(x) and u(0,y) = u(L,y) = 0.',
                solution: 'Solution:\n\n'
                    'The solution of the Laplace equation in two dimensions can be obtained using separation of variables.\n'
                    'Assume u(x, y) = X(x)Y(y), then substitute into the Laplace equation.\n'
                    'After separation and solving the resulting ODEs, the solution is in the form:\n'
                    'u(x, y) = ∑[n=1 to ∞] (A_n * cos(nπx/L)) * (sinh(nπy/L) / sinh(nπ))\n'
                    'where A_n = (2/L) ∫[0 to L] f(x) * cos(nπx/L) dx.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 9:\n\n'
                    'Solve the Poisson equation in two dimensions:\n\n'
                    '∇^2u = -f(x, y),\n\n'
                    'subject to boundary conditions u(x,0) = u(x,L) = 0 and u(0,y) = g(y).',
                solution: 'Solution:\n\n'
                    'The solution of the Poisson equation in two dimensions can be obtained using separation of variables.\n'
                    'Assume u(x, y) = X(x)Y(y), then substitute into the Poisson equation.\n'
                    'After separation and solving the resulting ODEs, the solution is in the form:\n'
                    'u(x, y) = ∑[n=1 to ∞] (B_n * sin(nπx/L)) * (sinh(nπ(y-L)) / sinh(nπL))\n'
                    'where B_n = (2/L) ∫[0 to L] g(y) * sin(nπy/L) dy.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 10:\n\n'
                    'Solve the diffusion equation in two dimensions:\n\n'
                    '∂u/∂t = D * (∂^2u/∂x^2 + ∂^2u/∂y^2),\n\n'
                    'subject to initial condition u(x,y,0) = f(x,y).',
                solution: 'Solution:\n\n'
                    'The solution of the diffusion equation in two dimensions can be obtained using separation of variables.\n'
                    'Assume u(x, y, t) = X(x)Y(y)T(t), then substitute into the diffusion equation.\n'
                    'After separation and solving the resulting ODEs, the solution is in the form:\n'
                    'u(x, y, t) = ∑[n=1 to ∞] ∑[m=1 to ∞] (C_nm * sin(nπx/L)) * (sin(mπy/L)) * (e^(-(n^2+m^2)π^2Dt/L^2))\n'
                    'where C_nm = (4/L^2) ∫[0 to L] ∫[0 to L] f(x, y) * sin(nπx/L) * sin(mπy/L) dx dy.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 11:\n\n'
                    'Solve the wave equation in two dimensions:\n\n'
                    '∂^2u/∂t^2 = c^2 * (∂^2u/∂x^2 + ∂^2u/∂y^2),\n\n'
                    'subject to initial conditions u(x,y,0) = f(x,y) and ∂u/∂t(x,y,0) = g(x,y).',
                solution: 'Solution:\n\n'
                    'The solution of the wave equation in two dimensions can be obtained using separation of variables.\n'
                    'Assume u(x, y, t) = X(x)Y(y)T(t), then substitute into the wave equation.\n'
                    'After separation and solving the resulting ODEs, the solution is in the form:\n'
                    'u(x, y, t) = ∑[n=1 to ∞] ∑[m=1 to ∞] (A_nm * sin(nπx/L)) * (sin(mπy/L)) * (cos(nπct/Lt) + B_nm * sin(nπx/L) * sin(mπy/L) * cos(nπct/Lt))\n'
                    'where A_nm = (4/L^2) ∫[0 to L] ∫[0 to L] f(x, y) * sin(nπx/L) * sin(mπy/L) dx dy\n'
                    'and B_nm = (4/(nπcL)) ∫[0 to L] ∫[0 to L] g(x, y) * sin(nπx/L) * sin(mπy/L) dx dy.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 12:\n\n'
                    'Solve the Poisson equation in three dimensions:\n\n'
                    '∇^2u = -f(x, y, z),\n\n'
                    'subject to boundary conditions u(x,y,0) = u(x,y,L) = 0, u(0,y,z) = u(L,y,z) = 0, and u(x,0,z) = u(x,L,z) = 0.',
                solution: 'Solution:\n\n'
                    'The solution of the Poisson equation in three dimensions can be obtained using separation of variables.\n'
                    'Assume u(x, y, z) = X(x)Y(y)Z(z), then substitute into the Poisson equation.\n'
                    'After separation and solving the resulting ODEs, the solution is in the form:\n'
                    'u(x, y, z) = ∑[n=1 to ∞] ∑[m=1 to ∞] ∑[p=1 to ∞] (A_nmp * sin(nπx/L)) * (sin(mπy/L)) * (sin(pπz/L))\n'
                    'where A_nmp = (8/L^3) ∫[0 to L] ∫[0 to L] ∫[0 to L] f(x, y, z) * sin(nπx/L) * sin(mπy/L) * sin(pπz/L) dx dy dz.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 13:\n\n'
                    'Solve the diffusion equation in three dimensions:\n\n'
                    '∂u/∂t = D * (∂^2u/∂x^2 + ∂^2u/∂y^2 + ∂^2u/∂z^2),\n\n'
                    'subject to initial condition u(x,y,z,0) = f(x,y,z).',
                solution: 'Solution:\n\n'
                    'The solution of the diffusion equation in three dimensions can be obtained using separation of variables.\n'
                    'Assume u(x, y, z, t) = X(x)Y(y)Z(z)T(t), then substitute into the diffusion equation.\n'
                    'After separation and solving the resulting ODEs, the solution is in the form:\n'
                    'u(x, y, z, t) = ∑[n=1 to ∞] ∑[m=1 to ∞] ∑[p=1 to ∞] (C_nmp * sin(nπx/L)) * (sin(mπy/L)) * (sin(pπz/L)) * (e^(-(n^2+m^2+p^2)π^2Dt/L^2t))\n'
                    'where C_nmp = (8/L^3) ∫[0 to L] ∫[0 to L] ∫[0 to L] f(x, y, z) * sin(nπx/L) * sin(mπy/L) * sin(pπz/L) dx dy dz.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 14:\n\n'
                    'Solve the Helmholtz equation in two dimensions:\n\n'
                    '∇^2u + k^2u = 0,\n\n'
                    'subject to boundary conditions u(x,0) = u(x,L) = 0 and u(0,y) = u(L,y) = 0.',
                solution: 'Solution:\n\n'
                    'The solution of the Helmholtz equation in two dimensions can be obtained using separation of variables.\n'
                    'Assume u(x, y) = X(x)Y(y), then substitute into the Helmholtz equation.\n'
                    'After separation and solving the resulting ODEs, the solution is in the form:\n'
                    'u(x, y) = ∑[n=1 to ∞] ∑[m=1 to ∞] (D_nm * sin(nπx/L)) * (sin(mπy/L))\n'
                    'where D_nm = (4/L^2) ∫[0 to L] ∫[0 to L] f(x, y) * sin(nπx/L) * sin(mπy/L) dx dy.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 15:\n\n'
                    'Solve the Laplace equation in cylindrical coordinates:\n\n'
                    '1/r * ∂/∂r(r * ∂u/∂r) + 1/(r^2) * ∂^2u/∂θ^2 + ∂^2u/∂z^2 = 0,\n\n'
                    'subject to boundary conditions u(r,0,z) = u(r,L,z) = 0 and u(0,θ,z) = u(R,θ,z) = 0.',
                solution: 'Solution:\n\n'
                    'The solution of the Laplace equation in cylindrical coordinates can be obtained using separation of variables.\n'
                    'Assume u(r, θ, z) = R(r)Θ(θ)Z(z), then substitute into the Laplace equation.\n'
                    'After separation and solving the resulting ODEs, the solution is in the form:\n'
                    'u(r, θ, z) = ∑[n=1 to ∞] (A_n * J_n(λ_n*r/R)) * (cos(nθ) + B_n * sin(nθ)) * sin(λ_n*z/L)\n'
                    'where J_n(λ_n*r/R) is the Bessel function of the first kind of order n, and λ_n is the nth root of the Bessel function.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 16:\n\n'
                    'Solve the Poisson equation in spherical coordinates:\n\n'
                    '1/r^2 * ∂/∂r(r^2 * ∂u/∂r) + 1/(r^2 * sinθ) * ∂/∂θ(sinθ * ∂u/∂θ) + 1/(r^2 * sin^2θ) * ∂^2u/∂φ^2 = -f(r, θ, φ),\n\n'
                    'subject to boundary conditions u(r,θ,0) = u(r,θ,π) = 0 and u(0,θ,φ) = u(R,θ,φ) = 0.',
                solution: 'Solution:\n\n'
                    'The solution of the Poisson equation in spherical coordinates can be obtained using separation of variables.\n'
                    'Assume u(r, θ, φ) = R(r)Θ(θ)Φ(φ), then substitute into the Poisson equation.\n'
                    'After separation and solving the resulting ODEs, the solution is in the form:\n'
                    'u(r, θ, φ) = ∑[n=1 to ∞] ∑[l=0 to ∞] (A_nl * r^l) * P_l(cosθ) * (B_nl * cos(nφ) + C_nl * sin(nφ))\n'
                    'where P_l(cosθ) is the Legendre polynomial of degree l, and A_nl, B_nl, C_nl are constants determined by the boundary conditions.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 17:\n\n'
                    'Solve the wave equation in spherical coordinates:\n\n'
                    '1/r^2 * ∂/∂r(r^2 * ∂u/∂r) - 1/(r^2 * sinθ) * ∂/∂θ(sinθ * ∂u/∂θ) - 1/(r^2 * sin^2θ) * ∂^2u/∂φ^2 = c^2 * ∂^2u/∂t^2,\n\n'
                    'subject to initial conditions u(r,θ,φ,0) = f(r,θ,φ) and ∂u/∂t(r,θ,φ,0) = g(r,θ,φ).',
                solution: 'Solution:\n\n'
                    'The solution of the wave equation in spherical coordinates can be obtained using separation of variables.\n'
                    'Assume u(r, θ, φ, t) = R(r)Θ(θ)Φ(φ)T(t), then substitute into the wave equation.\n'
                    'After separation and solving the resulting ODEs, the solution is in the form:\n'
                    'u(r, θ, φ, t) = ∑[n=1 to ∞] ∑[l=0 to ∞] ∑[m=-l to l] (A_nlm * r^l) * Y_l^m(θ, φ) * (cos(ω_nlt) + B_nlm * sin(ω_nlt))\n'
                    'where Y_l^m(θ, φ) is the spherical harmonic function, ω_n is the nth eigenfrequency, and A_nlm, B_nlm are constants determined by the initial conditions.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 18:\n\n'
                    'Solve the heat equation in spherical coordinates:\n\n'
                    '1/r^2 * ∂/∂r(r^2 * ∂u/∂r) - 1/(r^2 * sinθ) * ∂/∂θ(sinθ * ∂u/∂θ) - 1/(r^2 * sin^2θ) * ∂^2u/∂φ^2 = α * ∂u/∂t,\n\n'
                    'subject to initial condition u(r,θ,φ,0) = f(r,θ,φ).',
                solution: 'Solution:\n\n'
                    'The solution of the heat equation in spherical coordinates can be obtained using separation of variables.\n'
                    'Assume u(r, θ, φ, t) = R(r)Θ(θ)Φ(φ)T(t), then substitute into the heat equation.\n'
                    'After separation and solving the resulting ODEs, the solution is in the form:\n'
                    'u(r, θ, φ, t) = ∑[n=1 to ∞] ∑[l=0 to ∞] ∑[m=-l to l] (A_nlm * r^l) * Y_l^m(θ, φ) * e^(-α(ω_nlt)^2)\n'
                    'where Y_l^m(θ, φ) is the spherical harmonic function, ω_n is the nth eigenfrequency, and A_nlm are constants determined by the initial condition.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 19:\n\n'
                    'Solve the diffusion equation in spherical coordinates:\n\n'
                    '1/r^2 * ∂/∂r(r^2 * ∂u/∂r) - 1/(r^2 * sinθ) * ∂/∂θ(sinθ * ∂u/∂θ) - 1/(r^2 * sin^2θ) * ∂^2u/∂φ^2 = D * (∂^2u/∂r^2 + (2/r) * ∂u/∂r + (1/(r^2 * sin^2θ)) * ∂^2u/∂θ^2 + (1/(r^2 * sin^2θ)) * ∂^2u/∂φ^2),\n\n'
                    'subject to initial condition u(r,θ,φ,0) = f(r,θ,φ).',
                solution: 'Solution:\n\n'
                    'The solution of the diffusion equation in spherical coordinates can be obtained using separation of variables.\n'
                    'Assume u(r, θ, φ, t) = R(r)Θ(θ)Φ(φ)T(t), then substitute into the diffusion equation.\n'
                    'After separation and solving the resulting ODEs, the solution is in the form:\n'
                    'u(r, θ, φ, t) = ∑[n=1 to ∞] ∑[l=0 to ∞] ∑[m=-l to l] (A_nlm * r^l) * Y_l^m(θ, φ) * e^(-D(ω_nlt)^2)\n'
                    'where Y_l^m(θ, φ) is the spherical harmonic function, ω_n is the nth eigenfrequency, and A_nlm are constants determined by the initial condition.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 20:\n\n'
                    'Solve the Laplace equation in polar coordinates:\n\n'
                    '1/r * ∂/∂r(r * ∂u/∂r) + 1/(r^2) * ∂^2u/∂θ^2 = 0,\n\n'
                    'subject to boundary conditions u(r,0) = u(r,2π) and u(0,θ) = u(a,θ) = 0.',
                solution: 'Solution:\n\n'
                    'The solution of the Laplace equation in polar coordinates can be obtained using separation of variables.\n'
                    'Assume u(r, θ) = R(r)Θ(θ), then substitute into the Laplace equation.\n'
                    'After separation and solving the resulting ODEs, the solution is in the form:\n'
                    'u(r, θ) = ∑[n=1 to ∞] (A_n * r^n) * (cos(nθ) + B_n * sin(nθ))\n'
                    'where A_n and B_n are constants determined by the boundary conditions.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 21:\n\n'
                    'Solve the Poisson equation in cylindrical coordinates:\n\n'
                    '1/r * ∂/∂r(r * ∂u/∂r) + 1/(r^2) * ∂^2u/∂θ^2 + ∂^2u/∂z^2 = -f(r, θ, z),\n\n'
                    'subject to boundary conditions u(r,0,z) = u(r,2π,z) and u(0,θ,z) = u(a,θ,z) = 0.',
                solution: 'Solution:\n\n'
                    'The solution of the Poisson equation in cylindrical coordinates can be obtained using separation of variables.\n'
                    'Assume u(r, θ, z) = R(r)Θ(θ)Z(z), then substitute into the Poisson equation.\n'
                    'After separation and solving the resulting ODEs, the solution is in the form:\n'
                    'u(r, θ, z) = ∑[n=1 to ∞] (A_n * J_n(λ_n*r/a)) * (cos(nθ) + B_n * sin(nθ)) * sin(λ_n*z/L)\n'
                    'where J_n(λ_n*r/a) is the Bessel function of the first kind of order n, and λ_n is the nth root of the Bessel function.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 22:\n\n'
                    'Solve the heat equation in cylindrical coordinates:\n\n'
                    '1/r * ∂/∂r(r * ∂u/∂r) + 1/(r^2) * ∂^2u/∂θ^2 + ∂^2u/∂z^2 = α * ∂u/∂t,\n\n'
                    'subject to initial condition u(r,θ,z,0) = f(r,θ,z).',
                solution: 'Solution:\n\n'
                    'The solution of the heat equation in cylindrical coordinates can be obtained using separation of variables.\n'
                    'Assume u(r, θ, z, t) = R(r)Θ(θ)Z(z)T(t), then substitute into the heat equation.\n'
                    'After separation and solving the resulting ODEs, the solution is in the form:\n'
                    'u(r, θ, z, t) = ∑[n=1 to ∞] (A_n * J_n(λ_n*r/a)) * (cos(nθ) + B_n * sin(nθ)) * e^(-α(λ_n)^2*t/L^2)\n'
                    'where J_n(λ_n*r/a) is the Bessel function of the first kind of order n, and λ_n is the nth root of the Bessel function.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 23:\n\n'
                    'Solve the wave equation in cylindrical coordinates:\n\n'
                    '1/r * ∂/∂r(r * ∂u/∂r) + 1/(r^2) * ∂^2u/∂θ^2 + ∂^2u/∂z^2 = c^2 * ∂^2u/∂t^2,\n\n'
                    'subject to initial conditions u(r,θ,z,0) = f(r,θ,z) and ∂u/∂t(r,θ,z,0) = g(r,θ,z).',
                solution: 'Solution:\n\n'
                    'The solution of the wave equation in cylindrical coordinates can be obtained using separation of variables.\n'
                    'Assume u(r, θ, z, t) = R(r)Θ(θ)Z(z)T(t), then substitute into the wave equation.\n'
                    'After separation and solving the resulting ODEs, the solution is in the form:\n'
                    'u(r, θ, z, t) = ∑[n=1 to ∞] (A_n * J_n(λ_n*r/a)) * (cos(nθ) + B_n * sin(nθ)) * (cos(ω_nt) + D_n * sin(ω_nt))\n'
                    'where J_n(λ_n*r/a) is the Bessel function of the first kind of order n, and ω_n is the nth eigenfrequency.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 24:\n\n'
                    'Solve the Laplace equation in spherical coordinates:\n\n'
                    '1/r^2 * ∂/∂r(r^2 * ∂u/∂r) + 1/(r^2 * sinθ) * ∂/∂θ(sinθ * ∂u/∂θ) + 1/(r^2 * sin^2θ) * ∂^2u/∂φ^2 = 0,\n\n'
                    'subject to boundary conditions u(r,0,φ) = u(r,π,φ) and u(r,θ,0) = u(r,θ,2π).',
                solution: 'Solution:\n\n'
                    'The solution of the Laplace equation in spherical coordinates can be obtained using separation of variables.\n'
                    'Assume u(r, θ, φ) = R(r)Θ(θ)Φ(φ), then substitute into the Laplace equation.\n'
                    'After separation and solving the resulting ODEs, the solution is in the form:\n'
                    'u(r, θ, φ) = ∑[n=1 to ∞] ∑[l=0 to ∞] (A_nl * r^l) * P_l(cosθ) * (cos(nφ) + B_nl * sin(nφ))\n'
                    'where P_l(cosθ) is the Legendre polynomial of degree l, and A_nl, B_nl are constants determined by the boundary conditions.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 25:\n\n'
                    'Solve the Poisson equation in spherical coordinates:\n\n'
                    '1/r^2 * ∂/∂r(r^2 * ∂u/∂r) + 1/(r^2 * sinθ) * ∂/∂θ(sinθ * ∂u/∂θ) + 1/(r^2 * sin^2θ) * ∂^2u/∂φ^2 = -f(r, θ, φ),\n\n'
                    'subject to boundary conditions u(a,θ,φ) = u(b,θ,φ) = 0.',
                solution: 'Solution:\n\n'
                    'The solution of the Poisson equation in spherical coordinates can be obtained using separation of variables.\n'
                    'Assume u(r, θ, φ) = R(r)Θ(θ)Φ(φ), then substitute into the Poisson equation.\n'
                    'After separation and solving the resulting ODEs, the solution is in the form:\n'
                    'u(r, θ, φ) = ∑[n=1 to ∞] ∑[l=0 to ∞] (A_nl * r^l) * P_l(cosθ) * (cos(nφ) + B_nl * sin(nφ))\n'
                    'where P_l(cosθ) is the Legendre polynomial of degree l, and A_nl, B_nl are constants determined by the boundary conditions.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 26:\n\n'
                    'Solve the heat equation in spherical coordinates:\n\n'
                    '1/r^2 * ∂/∂r(r^2 * ∂u/∂r) + 1/(r^2 * sinθ) * ∂/∂θ(sinθ * ∂u/∂θ) + 1/(r^2 * sin^2θ) * ∂^2u/∂φ^2 = α * ∂u/∂t,\n\n'
                    'subject to initial condition u(r,θ,φ,0) = f(r,θ,φ).',
                solution: 'Solution:\n\n'
                    'The solution of the heat equation in spherical coordinates can be obtained using separation of variables.\n'
                    'Assume u(r, θ, φ, t) = R(r)Θ(θ)Φ(φ)T(t), then substitute into the heat equation.\n'
                    'After separation and solving the resulting ODEs, the solution is in the form:\n'
                    'u(r, θ, φ, t) = ∑[n=1 to ∞] ∑[l=0 to ∞] ∑[m=-l to l] (A_nlm * r^l) * Y_l^m(θ, φ) * e^(-α(λ_nlt)^2)\n'
                    'where Y_l^m(θ, φ) is the spherical harmonic function, λ_n is the nth eigenvalue, and A_nlm are constants determined by the initial condition.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 27:\n\n'
                    'Solve the wave equation in spherical coordinates:\n\n'
                    '1/r^2 * ∂/∂r(r^2 * ∂u/∂r) + 1/(r^2 * sinθ) * ∂/∂θ(sinθ * ∂u/∂θ) + 1/(r^2 * sin^2θ) * ∂^2u/∂φ^2 = c^2 * ∂^2u/∂t^2,\n\n'
                    'subject to initial conditions u(r,θ,φ,0) = f(r,θ,φ) and ∂u/∂t(r,θ,φ,0) = g(r,θ,φ).',
                solution: 'Solution:\n\n'
                    'The solution of the wave equation in spherical coordinates can be obtained using separation of variables.\n'
                    'Assume u(r, θ, φ, t) = R(r)Θ(θ)Φ(φ)T(t), then substitute into the wave equation.\n'
                    'After separation and solving the resulting ODEs, the solution is in the form:\n'
                    'u(r, θ, φ, t) = ∑[n=1 to ∞] ∑[l=0 to ∞] ∑[m=-l to l] (A_nlm * r^l) * Y_l^m(θ, φ) * (cos(ω_nlt) + B_nlm * sin(ω_nlt))\n'
                    'where Y_l^m(θ, φ) is the spherical harmonic function, ω_n is the nth eigenfrequency, and A_nlm, B_nlm are constants determined by the initial conditions.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 28:\n\n'
                    'Solve the Helmholtz equation in spherical coordinates:\n\n'
                    '1/r^2 * ∂/∂r(r^2 * ∂u/∂r) + 1/(r^2 * sinθ) * ∂/∂θ(sinθ * ∂u/∂θ) + 1/(r^2 * sin^2θ) * ∂^2u/∂φ^2 + k^2u = 0,\n\n'
                    'subject to boundary conditions u(a,θ,φ) = u(b,θ,φ) = 0.',
                solution: 'Solution:\n\n'
                    'The solution of the Helmholtz equation in spherical coordinates can be obtained using separation of variables.\n'
                    'Assume u(r, θ, φ) = R(r)Θ(θ)Φ(φ), then substitute into the Helmholtz equation.\n'
                    'After separation and solving the resulting ODEs, the solution is in the form:\n'
                    'u(r, θ, φ) = ∑[n=1 to ∞] ∑[l=0 to ∞] (A_n * r^l) * Y_l^m(θ, φ) * J_n(k*r)\n'
                    'where Y_l^m(θ, φ) is the spherical harmonic function, J_n(k*r) is the Bessel function of the first kind of order n, and A_n are constants determined by the boundary conditions.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 29:\n\n'
                    'Solve the Laplace equation in Cartesian coordinates:\n\n'
                    '∂^2u/∂x^2 + ∂^2u/∂y^2 = 0,\n\n'
                    'subject to boundary conditions u(0,y) = u(a,y) = 0 and u(x,0) = u(x,b) = 0.',
                solution: 'Solution:\n\n'
                    'The solution of the Laplace equation in Cartesian coordinates can be obtained using separation of variables.\n'
                    'Assume u(x, y) = X(x)Y(y), then substitute into the Laplace equation.\n'
                    'After separation and solving the resulting ODEs, the solution is in the form:\n'
                    'u(x, y) = ∑[n=1 to ∞] (A_n * sin(nπx/a)) * (B_n * sinh(nπy/a))\n'
                    'where A_n and B_n are constants determined by the boundary conditions.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 30:\n\n'
                    'Solve the heat equation in Cartesian coordinates:\n\n'
                    '∂u/∂t = k * (∂^2u/∂x^2 + ∂^2u/∂y^2),\n\n'
                    'subject to initial condition u(x, y, 0) = f(x, y).',
                solution: 'Solution:\n\n'
                    'The solution of the heat equation in Cartesian coordinates can be obtained using separation of variables.\n'
                    'Assume u(x, y, t) = X(x)Y(y)T(t), then substitute into the heat equation.\n'
                    'After separation and solving the resulting ODEs, the solution is in the form:\n'
                    'u(x, y, t) = ∑[n=1 to ∞] ∑[m=1 to ∞] (A_nm * sin(nπx/a) * sin(mπy/b)) * e^(-(n^2 + m^2)π^2kt/(a^2 + b^2))\n'
                    'where A_nm are constants determined by the initial condition.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 31:\n\n'
                    'Solve the wave equation in Cartesian coordinates:\n\n'
                    '∂^2u/∂t^2 = c^2 * (∂^2u/∂x^2 + ∂^2u/∂y^2),\n\n'
                    'subject to initial conditions u(x, y, 0) = f(x, y) and ∂u/∂t(x, y, 0) = g(x, y).',
                solution: 'Solution:\n\n'
                    'The solution of the wave equation in Cartesian coordinates can be obtained using separation of variables.\n'
                    'Assume u(x, y, t) = X(x)Y(y)T(t), then substitute into the wave equation.\n'
                    'After separation and solving the resulting ODEs, the solution is in the form:\n'
                    'u(x, y, t) = ∑[n=1 to ∞] ∑[m=1 to ∞] (A_nm * sin(nπx/a) * sin(mπy/b)) * cos(cπ√(n^2 + m^2)t/(a^2 + b^2))\n'
                    'where A_nm are constants determined by the initial conditions.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 32:\n\n'
                    'Solve the Laplace equation in cylindrical coordinates:\n\n'
                    '1/r * ∂/∂r(r * ∂u/∂r) + 1/(r^2) * ∂^2u/∂θ^2 + ∂^2u/∂z^2 = 0,\n\n'
                    'subject to boundary conditions u(r,0,z) = u(r,2π,z) and u(0,θ,z) = u(a,θ,z) = 0.',
                solution: 'Solution:\n\n'
                    'The solution of the Laplace equation in cylindrical coordinates can be obtained using separation of variables.\n'
                    'Assume u(r, θ, z) = R(r)Θ(θ)Z(z), then substitute into the Laplace equation.\n'
                    'After separation and solving the resulting ODEs, the solution is in the form:\n'
                    'u(r, θ, z) = ∑[n=1 to ∞] (A_n * J_n(λ_n*r/a)) * (cos(nθ) + B_n * sin(nθ)) * sin(λ_n*z/L)\n'
                    'where J_n(λ_n*r/a) is the Bessel function of the first kind of order n, and λ_n is the nth root of the Bessel function.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 33:\n\n'
                    'Solve the Poisson equation in Cartesian coordinates:\n\n'
                    '∂^2u/∂x^2 + ∂^2u/∂y^2 = f(x, y),\n\n'
                    'subject to boundary conditions u(0,y) = u(a,y) = 0 and u(x,0) = u(x,b) = 0.',
                solution: 'Solution:\n\n'
                    'The solution of the Poisson equation in Cartesian coordinates can be obtained using the method of Green\'s functions.\n'
                    'The Green\'s function for the Laplacian operator in two dimensions is given by:\n'
                    'G(x, y; ξ, η) = -1/(4π) * ln(|x - ξ|^2 + |y - η|^2).\n'
                    'The solution to the Poisson equation is given by the convolution of the Green\'s function with the source term:\n'
                    'u(x, y) = ∫∫(G(x, y; ξ, η) * f(ξ, η)) dξ dη.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 34:\n\n'
                    'Solve the heat equation in cylindrical coordinates:\n\n'
                    '1/r * ∂/∂r(r * ∂u/∂r) + 1/(r^2) * ∂^2u/∂θ^2 + ∂^2u/∂z^2 = α * ∂u/∂t,\n\n'
                    'subject to initial condition u(r,θ,z,0) = f(r,θ,z).',
                solution: 'Solution:\n\n'
                    'The solution of the heat equation in cylindrical coordinates can be obtained using separation of variables.\n'
                    'Assume u(r, θ, z, t) = R(r)Θ(θ)Z(z)T(t), then substitute into the heat equation.\n'
                    'After separation and solving the resulting ODEs, the solution is in the form:\n'
                    'u(r, θ, z, t) = ∑[n=1 to ∞] ∑[m=-∞ to ∞] (A_nm * J_n(λ_nr/a) * (cos(nθ) + B_nm * sin(nθ)) * e^(-α(λ_n)^2t/L^2)\n'
                    'where J_n(λ_nr/a) is the Bessel function of the first kind of order n, and λ_n is the nth root of the Bessel function.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 35:\n\n'
                    'Solve the wave equation in cylindrical coordinates:\n\n'
                    '1/r * ∂/∂r(r * ∂u/∂r) + 1/(r^2) * ∂^2u/∂θ^2 + ∂^2u/∂z^2 = c^2 * ∂^2u/∂t^2,\n\n'
                    'subject to initial conditions u(r,θ,z,0) = f(r,θ,z) and ∂u/∂t(r,θ,z,0) = g(r,θ,z).',
                solution: 'Solution:\n\n'
                    'The solution of the wave equation in cylindrical coordinates can be obtained using separation of variables.\n'
                    'Assume u(r, θ, z, t) = R(r)Θ(θ)Z(z)T(t), then substitute into the wave equation.\n'
                    'After separation and solving the resulting ODEs, the solution is in the form:\n'
                    'u(r, θ, z, t) = ∑[n=1 to ∞] ∑[m=-∞ to ∞] (A_nm * J_n(λ_nr/a) * (cos(nθ) + B_nm * sin(nθ)) * cos(λ_nc*t/L)\n'
                    'where J_n(λ_nr/a) is the Bessel function of the first kind of order n, and λ_n is the nth root of the Bessel function.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 36:\n\n'
                    'Solve the Laplace equation in spherical coordinates:\n\n'
                    '1/r^2 * ∂/∂r(r^2 * ∂u/∂r) + 1/(r^2 * sinθ) * ∂/∂θ(sinθ * ∂u/∂θ) + 1/(r^2 * sin^2θ) * ∂^2u/∂φ^2 = 0,\n\n'
                    'subject to boundary conditions u(r,0,φ) = u(r,π,φ) and u(r,θ,0) = u(r,θ,2π).',
                solution: 'Solution:\n\n'
                    'The solution of the Laplace equation in spherical coordinates can be obtained using separation of variables.\n'
                    'Assume u(r, θ, φ) = R(r)Θ(θ)Φ(φ), then substitute into the Laplace equation.\n'
                    'After separation and solving the resulting ODEs, the solution is in the form:\n'
                    'u(r, θ, φ) = ∑[n=1 to ∞] ∑[l=0 to ∞] (A_nl * r^l) * P_l(cosθ) * (cos(nφ) + B_nl * sin(nφ))\n'
                    'where P_l(cosθ) is the Legendre polynomial of degree l, and A_nl, B_nl are constants determined by the boundary conditions.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 37:\n\n'
                    'Solve the Poisson equation in spherical coordinates:\n\n'
                    '1/r^2 * ∂/∂r(r^2 * ∂u/∂r) + 1/(r^2 * sinθ) * ∂/∂θ(sinθ * ∂u/∂θ) + 1/(r^2 * sin^2θ) * ∂^2u/∂φ^2 = -f(r, θ, φ),\n\n'
                    'subject to boundary conditions u(a,θ,φ) = u(b,θ,φ) = 0.',
                solution: 'Solution:\n\n'
                    'The solution of the Poisson equation in spherical coordinates can be obtained using separation of variables.\n'
                    'Assume u(r, θ, φ) = R(r)Θ(θ)Φ(φ), then substitute into the Poisson equation.\n'
                    'After separation and solving the resulting ODEs, the solution is in the form:\n'
                    'u(r, θ, φ) = ∑[n=1 to ∞] ∑[l=0 to ∞] (A_nl * r^l) * P_l(cosθ) * (cos(nφ) + B_nl * sin(nφ))\n'
                    'where P_l(cosθ) is the Legendre polynomial of degree l, and A_nl, B_nl are constants determined by the boundary conditions.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 38:\n\n'
                    'Solve the heat equation in spherical coordinates:\n\n'
                    '1/r^2 * ∂/∂r(r^2 * ∂u/∂r) + 1/(r^2 * sinθ) * ∂/∂θ(sinθ * ∂u/∂θ) + 1/(r^2 * sin^2θ) * ∂^2u/∂φ^2 = α * ∂u/∂t,\n\n'
                    'subject to initial condition u(r,θ,φ,0) = f(r,θ,φ).',
                solution: 'Solution:\n\n'
                    'The solution of the heat equation in spherical coordinates can be obtained using separation of variables.\n'
                    'Assume u(r, θ, φ, t) = R(r)Θ(θ)Φ(φ)T(t), then substitute into the heat equation.\n'
                    'After separation and solving the resulting ODEs, the solution is in the form:\n'
                    'u(r, θ, φ, t) = ∑[n=1 to ∞] ∑[l=0 to ∞] ∑[m=-l to l] (A_nlm * r^l) * Y_l^m(θ, φ) * e^(-α(λ_nlt)^2)\n'
                    'where Y_l^m(θ, φ) is the spherical harmonic function, λ_n is the nth eigenvalue, and A_nlm are constants determined by the initial condition.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 39:\n\n'
                    'Solve the wave equation in spherical coordinates:\n\n'
                    '1/r^2 * ∂/∂r(r^2 * ∂u/∂r) + 1/(r^2 * sinθ) * ∂/∂θ(sinθ * ∂u/∂θ) + 1/(r^2 * sin^2θ) * ∂^2u/∂φ^2 = c^2 * ∂^2u/∂t^2,\n\n'
                    'subject to initial conditions u(r,θ,φ,0) = f(r,θ,φ) and ∂u/∂t(r,θ,φ,0) = g(r,θ,φ).',
                solution: 'Solution:\n\n'
                    'The solution of the wave equation in spherical coordinates can be obtained using separation of variables.\n'
                    'Assume u(r, θ, φ, t) = R(r)Θ(θ)Φ(φ)T(t), then substitute into the wave equation.\n'
                    'After separation and solving the resulting ODEs, the solution is in the form:\n'
                    'u(r, θ, φ, t) = ∑[n=1 to ∞] ∑[l=0 to ∞] ∑[m=-l to l] (A_nlm * r^l) * Y_l^m(θ, φ) * (cos(ω_nlt) + B_nlm * sin(ω_nlt))\n'
                    'where Y_l^m(θ, φ) is the spherical harmonic function, ω_n is the nth eigenfrequency, and A_nlm, B_nlm are constants determined by the initial conditions.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 40:\n\n'
                    'Solve the Laplace equation in cylindrical coordinates:\n\n'
                    '1/r * ∂/∂r(r * ∂u/∂r) + 1/(r^2) * ∂^2u/∂θ^2 + ∂^2u/∂z^2 = 0,\n\n'
                    'subject to boundary conditions u(r,0,z) = u(r,2π,z) and u(0,θ,z) = u(a,θ,z) = 0.',
                solution: 'Solution:\n\n'
                    'The solution of the Laplace equation in cylindrical coordinates can be obtained using separation of variables.\n'
                    'Assume u(r, θ, z) = R(r)Θ(θ)Z(z), then substitute into the Laplace equation.\n'
                    'After separation and solving the resulting ODEs, the solution is in the form:\n'
                    'u(r, θ, z) = ∑[n=1 to ∞] (A_n * J_n(λ_nr/a)) * (cos(nθ) + B_n * sin(nθ)) * sin(λ_nz/L)\n'
                    'where J_n(λ_nr/a) is the Bessel function of the first kind of order n, and λ_n is the nth root of the Bessel function.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 41:\n\n'
                    'Solve the Poisson equation in cylindrical coordinates:\n\n'
                    '1/r * ∂/∂r(r * ∂u/∂r) + 1/(r^2) * ∂^2u/∂θ^2 + ∂^2u/∂z^2 = -f(r, θ, z),\n\n'
                    'subject to boundary conditions u(a,θ,z) = u(b,θ,z) = 0.',
                solution: 'Solution:\n\n'
                    'The solution of the Poisson equation in cylindrical coordinates can be obtained using separation of variables.\n'
                    'Assume u(r, θ, z) = R(r)Θ(θ)Z(z), then substitute into the Poisson equation.\n'
                    'After separation and solving the resulting ODEs, the solution is in the form:\n'
                    'u(r, θ, z) = ∑[n=1 to ∞] ∑[m=-∞ to ∞] (A_nm * J_n(λ_nr/a)) * (cos(nθ) + B_nm * sin(nθ)) * e^(-λ_nz/L)\n'
                    'where J_n(λ_nr/a) is the Bessel function of the first kind of order n, and λ_n is the nth root of the Bessel function.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 42:\n\n'
                    'Solve the heat equation in spherical coordinates:\n\n'
                    '1/r^2 * ∂/∂r(r^2 * ∂u/∂r) + 1/(r^2 * sinθ) * ∂/∂θ(sinθ * ∂u/∂θ) + 1/(r^2 * sin^2θ) * ∂^2u/∂φ^2 = α * ∂u/∂t,\n\n'
                    'subject to initial condition u(r,θ,φ,0) = f(r,θ,φ).',
                solution: 'Solution:\n\n'
                    'The solution of the heat equation in spherical coordinates can be obtained using separation of variables.\n'
                    'Assume u(r, θ, φ, t) = R(r)Θ(θ)Φ(φ)T(t), then substitute into the heat equation.\n'
                    'After separation and solving the resulting ODEs, the solution is in the form:\n'
                    'u(r, θ, φ, t) = ∑[n=1 to ∞] ∑[l=0 to ∞] ∑[m=-l to l] (A_nlm * r^l) * Y_l^m(θ, φ) * e^(-α(λ_nlt)^2)\n'
                    'where Y_l^m(θ, φ) is the spherical harmonic function, λ_n is the nth eigenvalue, and A_nlm are constants determined by the initial condition.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 43:\n\n'
                    'Solve the wave equation in cylindrical coordinates:\n\n'
                    '1/r * ∂/∂r(r * ∂u/∂r) + 1/(r^2) * ∂^2u/∂θ^2 + ∂^2u/∂z^2 = c^2 * ∂^2u/∂t^2,\n\n'
                    'subject to initial conditions u(r,θ,z,0) = f(r,θ,z) and ∂u/∂t(r,θ,z,0) = g(r,θ,z).',
                solution: 'Solution:\n\n'
                    'The solution of the wave equation in cylindrical coordinates can be obtained using separation of variables.\n'
                    'Assume u(r, θ, z, t) = R(r)Θ(θ)Z(z)T(t), then substitute into the wave equation.\n'
                    'After separation and solving the resulting ODEs, the solution is in the form:\n'
                    'u(r, θ, z, t) = ∑[n=1 to ∞] ∑[m=-∞ to ∞] (A_nm * J_n(λ_nr/a) * (cos(nθ) + B_nm * sin(nθ)) * cos(λ_nc*t/L)\n'
                    'where J_n(λ_nr/a) is the Bessel function of the first kind of order n, and λ_n is the nth root of the Bessel function.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 44:\n\n'
                    'Solve the Laplace equation in spherical coordinates:\n\n'
                    '1/r^2 * ∂/∂r(r^2 * ∂u/∂r) + 1/(r^2 * sinθ) * ∂/∂θ(sinθ * ∂u/∂θ) + 1/(r^2 * sin^2θ) * ∂^2u/∂φ^2 = 0,\n\n'
                    'subject to boundary conditions u(a,θ,φ) = u(b,θ,φ) = 0.',
                solution: 'Solution:\n\n'
                    'The solution of the Laplace equation in spherical coordinates can be obtained using separation of variables.\n'
                    'Assume u(r, θ, φ) = R(r)Θ(θ)Φ(φ), then substitute into the Laplace equation.\n'
                    'After separation and solving the resulting ODEs, the solution is in the form:\n'
                    'u(r, θ, φ) = ∑[n=1 to ∞] ∑[l=0 to ∞] (A_nl * r^l) * P_l(cosθ) * (cos(nφ) + B_nl * sin(nφ))\n'
                    'where P_l(cosθ) is the Legendre polynomial of degree l, and A_nl, B_nl are constants determined by the boundary conditions.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 45:\n\n'
                    'Solve the Poisson equation in spherical coordinates:\n\n'
                    '1/r^2 * ∂/∂r(r^2 * ∂u/∂r) + 1/(r^2 * sinθ) * ∂/∂θ(sinθ * ∂u/∂θ) + 1/(r^2 * sin^2θ) * ∂^2u/∂φ^2 = -f(r, θ, φ),\n\n'
                    'subject to boundary conditions u(a,θ,φ) = u(b,θ,φ) = 0.',
                solution: 'Solution:\n\n'
                    'The solution of the Poisson equation in spherical coordinates can be obtained using separation of variables.\n'
                    'Assume u(r, θ, φ) = R(r)Θ(θ)Φ(φ), then substitute into the Poisson equation.\n'
                    'After separation and solving the resulting ODEs, the solution is in the form:\n'
                    'u(r, θ, φ) = ∑[n=1 to ∞] ∑[l=0 to ∞] (A_nl * r^l) * P_l(cosθ) * (cos(nφ) + B_nl * sin(nφ)) * e^(-λ_nz/L)\n'
                    'where P_l(cosθ) is the Legendre polynomial of degree l, and λ_n is the nth root of the Bessel function.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 46:\n\n'
                    'Solve the heat equation in spherical coordinates:\n\n'
                    '1/r^2 * ∂/∂r(r^2 * ∂u/∂r) + 1/(r^2 * sinθ) * ∂/∂θ(sinθ * ∂u/∂θ) + 1/(r^2 * sin^2θ) * ∂^2u/∂φ^2 = α * ∂u/∂t,\n\n'
                    'subject to initial condition u(r,θ,φ,0) = f(r,θ,φ).',
                solution: 'Solution:\n\n'
                    'The solution of the heat equation in spherical coordinates can be obtained using separation of variables.\n'
                    'Assume u(r, θ, φ, t) = R(r)Θ(θ)Φ(φ)T(t), then substitute into the heat equation.\n'
                    'After separation and solving the resulting ODEs, the solution is in the form:\n'
                    'u(r, θ, φ, t) = ∑[n=1 to ∞] ∑[l=0 to ∞] ∑[m=-l to l] (A_nlm * r^l) * Y_l^m(θ, φ) * e^(-α(λ_nlt)^2)\n'
                    'where Y_l^m(θ, φ) is the spherical harmonic function, λ_n is the nth eigenvalue, and A_nlm are constants determined by the initial condition.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 47:\n\n'
                    'Solve the wave equation in cylindrical coordinates:\n\n'
                    '1/r * ∂/∂r(r * ∂u/∂r) + 1/(r^2) * ∂^2u/∂θ^2 + ∂^2u/∂z^2 = c^2 * ∂^2u/∂t^2,\n\n'
                    'subject to initial conditions u(r,θ,z,0) = f(r,θ,z) and ∂u/∂t(r,θ,z,0) = g(r,θ,z).',
                solution: 'Solution:\n\n'
                    'The solution of the wave equation in cylindrical coordinates can be obtained using separation of variables.\n'
                    'Assume u(r, θ, z, t) = R(r)Θ(θ)Z(z)T(t), then substitute into the wave equation.\n'
                    'After separation and solving the resulting ODEs, the solution is in the form:\n'
                    'u(r, θ, z, t) = ∑[n=1 to ∞] ∑[m=-∞ to ∞] (A_nm * J_n(λ_nr/a) * (cos(nθ) + B_nm * sin(nθ)) * cos(λ_nc*t/L)\n'
                    'where J_n(λ_nr/a) is the Bessel function of the first kind of order n, and λ_n is the nth root of the Bessel function.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 48:\n\n'
                    'Solve the Laplace equation in cylindrical coordinates:\n\n'
                    '1/r * ∂/∂r(r * ∂u/∂r) + 1/(r^2) * ∂^2u/∂θ^2 + ∂^2u/∂z^2 = 0,\n\n'
                    'subject to boundary conditions u(r,0,z) = u(r,2π,z) and u(0,θ,z) = u(a,θ,z) = 0.',
                solution: 'Solution:\n\n'
                    'The solution of the Laplace equation in cylindrical coordinates can be obtained using separation of variables.\n'
                    'Assume u(r, θ, z) = R(r)Θ(θ)Z(z), then substitute into the Laplace equation.\n'
                    'After separation and solving the resulting ODEs, the solution is in the form:\n'
                    'u(r, θ, z) = ∑[n=1 to ∞] (A_n * J_n(λ_nr/a)) * (cos(nθ) + B_n * sin(nθ)) * sin(λ_nz/L)\n'
                    'where J_n(λ_nr/a) is the Bessel function of the first kind of order n, and λ_n is the nth root of the Bessel function.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 49:\n\n'
                    'Solve the heat equation in one dimension:\n\n'
                    '∂u/∂t = k * ∂^2u/∂x^2,\n\n'
                    'subject to initial condition u(x,0) = f(x) and boundary conditions u(0,t) = u(L,t) = 0.',
                solution: 'Solution:\n\n'
                    'The solution of the heat equation in one dimension can be obtained using separation of variables.\n'
                    'Assume u(x, t) = X(x)T(t), then substitute into the heat equation.\n'
                    'After separation and solving the resulting ODEs, the solution is in the form:\n'
                    'u(x, t) = ∑[n=1 to ∞] (A_n * sin(nπx/L)) * e^(-k(πn/L)^2*t)\n'
                    'where A_n are constants determined by the initial condition.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 50:\n\n'
                    'Solve the wave equation in one dimension:\n\n'
                    '∂^2u/∂t^2 = c^2 * ∂^2u/∂x^2,\n\n'
                    'subject to initial conditions u(x,0) = f(x) and ∂u/∂t(x,0) = g(x).',
                solution: 'Solution:\n\n'
                    'The solution of the wave equation in one dimension can be obtained using separation of variables.\n'
                    'Assume u(x, t) = X(x)T(t), then substitute into the wave equation.\n'
                    'After separation and solving the resulting ODEs, the solution is in the form:\n'
                    'u(x, t) = ∑[n=1 to ∞] (A_n * sin(nπx/L) + B_n * cos(nπx/L)) * cos(cπn/L * t)\n'
                    'where A_n, B_n are constants determined by the initial conditions.\n',
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
