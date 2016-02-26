(http://cse.iitkgp.ac.in/~agupta/graph/Sol-T2.pdf)
# Review
e(v) excentricity = max_{u \in V} d(v,u)

diam(G) = max_v e(v) = max_{u,v} d(u,v)

rad(G) = mim_v e(v)

Set of nodes for which
{v \in V(g)} e(v) = diam(G) } = D peripheral nodes
and G[D] = Per(G)

Waht is the Periphery of G

What is the girth of G
The length of its shortes cycle, the shortest can be 3

g(Km,n) complete bipartite


Thm. any graph G containing a cycle, its g(G) <= 2 * diam(G) + 1

Proof:
Let C be the shortest cycle
d_c(u,v) = lower(g(G)/2)
Assume that on the contrary
g(G) >= 2 diam (g) + 2
=> d_c(u,v) =>  lower(diam(G) + 1)


** we have found that the distance along the cycle betweeo furthest poins
>= diam(g) + 1, bu our assumption
bt we know that the min of diam of G is the largest distance of he graph
you can find along the graph, there has to be a Path
whos distance at most diam(G)

[some sol](http://people.math.sc.edu/lu/teaching/2013fall_776/homework1_sol.pdf)

...
...
# Trees
k(G) # of comp of G

v is a cut node of G if k(G-v) > k(G)

every node is a cut node along a path, execept for the end nodes


Thm.  Every non tivial conn. graph contains at least 2 nodes that
are NOT cut-nodes.

Thm 18
v \in V(G) is a cut node iff for every u,w u not v, w != v
s. t. v lies on the very path (u-w)

Non-separable graph G
hs no cut-nodes

Thm19 G is non-separable => any u,v \in V must lie ona cycle
Go.1 G, connected non-speaable ifff: for all u,v\in V ther are at least 2
internally disjoint paths.
Birdges: cut edges e is an edge e in E(G)
k(G-e) = k(G) +1

Thm2. For all edge e in E(G) is a bridge of G iff e lies on no cycle of G

## More on Trees
A tree is an acyclic, connected graph.

# Factals and scaling

# Regular objects,

## RTriadic Cantor Set

## A Fractal
## Thin fractals, fat fractars
## Center dust, think fractal

#Fat Cantor Set

Fractals are self similar objects: b/c
N(\epsilon) ~ epsilon -D0; N(\lambda\epsilon) = \lambda^(-D0) N(\epsilon)


:q

# Allometric Scaling
In biological

# Branches and Trees

dot over a function I m taing the the derivative
Cardiac aotput
B basal metabolic rate

=> Qdot 0 ~ (Mb)^b


# JR Wneslye studied blood flow

(C/Co) ^2 ~ I_2(i^3/2 alpha)/I_0(i^3/2 alpha)

i = sqrt(-1), alpha = r* sqrt(ro/pi)

Calc Vessel impedance

solve PLinDE
- Fourier series expanded into a F series
[Womersley](http://onlinelibrary.wiley.com/store/10.1113/jphysiol.1955.sp005276/asset/tjp19551273553.pdf;jsessionid=87F16EC964A6B55E5DA310D006AB2940.f02t03?v=1&t=ikiumvj9&s=36027ca6be5aab002cddc508581774fd809d8899)



Growth
B(t) = Nc(t)Bc +dNc/dt*Ec
The energy of the system at time t, Nc(t)xB_c is the number of cells or # of
nodes or edges at t, with cost Bc


Nc is the total body mass at t / m_c; `B =_B  m ^{3/4}`

# Probability
- Single Random variable
- The cumulative probability function (CPF)
- Probability desnsity function (PDF)
- Complementary cumulative probability function
- Expectation Value: The expectation value of a random variable x is
 <x> = integ from -inf to +inf dx x p(x)
- Moments of a PDF
- The Characteristic function: Serves as a generator for the moments of a distribution
