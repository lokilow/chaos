### A Pluto.jl notebook ###
# v0.20.21

using Markdown
using InteractiveUtils

# ╔═╡ 35965cc1-060d-4b0d-b420-e8e516aa6891
begin
  import Pkg
  Pkg.activate(Base.current_project())
end

# ╔═╡ 9e0a3806-d4eb-4fd0-8cdd-32023fa0638c
using DynamicalSystems, WGLMakie, Revise

# ╔═╡ f25a277d-bbcc-44b6-b512-437eba76a7b7
html"""
<style>
  main {max-width: 60% !important;}
</style>
"""

# ╔═╡ 90988097-4d45-4968-bfbc-8707ef7cb1ec
md"""
### Problem 1
Let ``p`` be a fixed point of a nonlinear map ``f``. Given an ``\epsilon \gt 0``, find a geometric condition on ``f`` under which all points in `x` in ``N_{\epsilon}(p)`` are in the basin of ``p``. Use cobweb plot analysis to explain your reasoning.

**Note:** by **geometric condition**, we mean some constraint on ``f`` and/or ``f'`` in the neighborhood of ``p``. One example condition you can improve upon:



``\forall x ∈ (p - \epsilon), f(x) > x \& f(x) < p``

``\forall x ∈ (p + \epsilon), f(x) > x \& f(x) < p``

In more words and less notation: provided ``f(x)`` remains between the lines ``y = x`` and ``y = p `` in ``N_{\epsilon}p``, all points in the neighborhood are in the basin of ``p``. This question is deeper than you may think at first, and showing your condition works for a single example is not proving that it works for all functions ``f``. Your condition needs to work for all ``f``.
"""

# ╔═╡ c03f12f7-1fac-4ded-9edd-318b4d77d23c
# the second range is a convenience for intermittency example of logistic
rrange = 1:0.001:4.0

# ╔═╡ e3abf28d-8545-4772-9846-3186459ec05c
# rrange = (rc = 1 + sqrt(8); [rc, rc - 1e-5, rc - 1e-3])

lo = Systems.logistic(0.4; r = rrange[1])

# ╔═╡ 63c08286-0580-4b49-aeb0-46926ee0b0d7
interactive_cobweb(lo, rrange, 5)

# ╔═╡ 3d3e0853-0f52-46c9-baa1-d37d4a611f4b
md"""
### Problem 2
The map ``f(x) = 2x^2 - 5x`` on ``ℜ`` has fixed points at ``x = 0`` and ``x = 3``.

**(a)** Find a period two orbit for ``f`` by solving ``f^2(x) = x`` for ``x``.

**(b)** What is the stability of the orbit?

**Hint:** For this problem and the next, you will need to factor a degree 4 polynomial. This can be done by hand without any horrific formulas if you think about what you already know about the roots.
"""

# ╔═╡ 12e0759b-7b0c-4cdd-9240-7968c0d7535f
md"""
### Problem 3

Let ``G(x) = 4x(1 - x)``

**(a)** Find the fixed points and period two points of ``G`` and demonstrate that they are sources using ``G'`` and/or ``(G^2)'``

**(b)** Continue the periodic table for ``G`` begun in Table 1.3. In particular how many periodic orbits of (minimum) period ``k`` does ``G`` have, for each ``k\leq 10``?

**Hint:** The pattern is not simple.
"""

# ╔═╡ e48e7aee-681c-4404-8fd2-7251427d6c0f
md"""
### Problem 4

Let ``l(x) = ax + b``, where `a` and `b` are constants. For which values of ``a`` and ``b`` does ``l`` have

**(a)** an attracting fixed point?

**(b)** a repelling fixed point?

**(c)** a neutral point?
"""

# ╔═╡ 74cadeca-fa91-46fe-8aa7-9e37e9d6695f
md"""
### Problem 5
Let ``x_1 \lt ... \lt x_8`` be the eight fixed points of ``G^3(x)`` where ``G(x) = 4x(1-x)``. Clearly ``x_1 = 0``.

**(a)** For which ``i`` is ``x_i = \frac{3}{4}``?

**(b)** Group the remaining six points into two orbits of three points each.

**Hint:** It may help to consult Figure 1.10(c). The most elegant solution uses the chain rule. You need not compute the actual values of the ``x_i``.
"""

# ╔═╡ Cell order:
# ╠═f25a277d-bbcc-44b6-b512-437eba76a7b7
# ╠═35965cc1-060d-4b0d-b420-e8e516aa6891
# ╠═9e0a3806-d4eb-4fd0-8cdd-32023fa0638c
# ╠═90988097-4d45-4968-bfbc-8707ef7cb1ec
# ╠═c03f12f7-1fac-4ded-9edd-318b4d77d23c
# ╠═e3abf28d-8545-4772-9846-3186459ec05c
# ╠═63c08286-0580-4b49-aeb0-46926ee0b0d7
# ╠═3d3e0853-0f52-46c9-baa1-d37d4a611f4b
# ╠═12e0759b-7b0c-4cdd-9240-7968c0d7535f
# ╠═e48e7aee-681c-4404-8fd2-7251427d6c0f
# ╠═74cadeca-fa91-46fe-8aa7-9e37e9d6695f
