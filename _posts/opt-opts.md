---
title: Optimal Option Discovery
author: Shun Zhang
---
We know that options can be helpful for learning and planning.
Although we could design domain-specific options,
there are growing interests of making the agent discover useful options 
[@bacon_option-critic_2016;@bagaria_option_2019].

Most of the prior work finds options using meta-gradient methods. That is, we formulate the learning objective as a function of option parameters.
During learning, the agent not only improves its policy, but also updates its options so that the updated options would be helpful for future learning.
However, gradient-based methods can hardly provide optimality guarantees.
We're interested in a different question: How do we find a **provably** optimal or nearly-optimal set of options that are useful for learning?

Let's consider an example. In the following figure, suppose the circles indicate states with possible positive rewards.
States outside of these clusters have no rewards.
If the agent can add three options, it may want to add $$o_1, o_2, o_3$$ to the MDP so that it can transit between states of possible rewards in the test phase.
There is no exploration needed in the process of following any of the options.

![Example on options useful for learning](/images/learned_options.svg){ width=300 }\

This is not a completely new problem.
[@jinnai_finding_2019] considered a similar problem of finding optimal options for planning in a tabular world.
They considered a very specific setting: what options to add to an MDP so that value iteration converges in the least numebr of steps
(and the counterpart to this question, to make value iteration converges within a given number of steps, what is the minimum number of options that need to be added).
Here, we are interested in the _learning_ setting and in a _continuous_ state space.

Our hope is that we can iteratively greedily select options to add to an existing set of options.
This is a common way to approach a combinatorial optimization problem [@zhang_approximately-optimal_2017;@viappiani_optimal_2010].
However, the objective is not [submodular](https://en.wikipedia.org/wiki/Submodular_set_function) so we may not have an optimality guanrantee.
One hope is that we may have a submodular objective if we consider a _satisfiability_ problem,
that is, how to add options so that the value of the learned policy is above a threshold.

## References
