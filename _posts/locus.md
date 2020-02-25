---
title: Best Representation of Knowledge in Transfer Learning
author: Shun Zhang
---
We consider a problem of 
This problem is observed in multiple literatures.
In meta-reinforcement learning, people have considered transferring a policy [@finn_model-agnostic_2017;@vuorio_toward_2018],
an intrinsic reward function [@zheng_learning_2018], skills [@hausman_learning_2018], Q functions [@taylor_transfer_2007], and so on.
[@taylor_transfer_2009] reviewed some earlier work.

In inverse reinforcement learning/learning from demonstration literature
[@torrey_teaching_2013].

Learning by demonstration literature has explored the problem of how a human user should provide information that best helps a learning agent.
Is there a connection between the two problems?

## Domain-Dependent Insights

We may have intuitions on what should be transferred given a concrete domain.
Policies or options are useful when the agent has to follow a path to get possible rewards.
Intrinsic rewards are useful when the robot needs to learn what to explore.

## Task-Dependent Exploration vs. Exploitation

Given the trajectories, what is the next policy the agent should follow?
Indeed, coming up with an algorithm without an underlying task distribution is challenging, since this is exactly the exploration vs. exploitation problem!
However, does a task of 

## References
