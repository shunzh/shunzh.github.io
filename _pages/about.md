---
permalink: /
excerpt: "About me"
author_profile: true
redirect_from: 
  - /about/
  - /about.html
---

Welcome to the homepage of Shun Zhang (in Simplified Chinese: 张舜)!
<!--**I will join IBM as a postdoctoral researcher in summer 2020** (base in Ann Arbor).
-->

My research interests lie in reinforcement learning, learning/planning under uncertainty, meta-reinforcement learning, and artificial general intelligence (AGI).
I received my Ph.D. at the University of Michigan,
advised by Prof. [Satinder Singh](https://web.eecs.umich.edu/~baveja/) and Prof. [Ed Durfee](http://ai.eecs.umich.edu/people/durfee/). 
My dissertation is on _Efficiently Finding Approximately-Optimal Queries for Improving Policies and Guaranteeing Safety_ ([defense slides](https://drive.google.com/open?id=1QpnL0vLfObmgCXLCJnaB3lUllLCgnIDq)).
I received BS and MS in computer science at the University of Texas at Austin.

## Featured Work

**Querying to Find a Safe Policy Under Uncertain Safety Constraints in Markov Decision Processes** <br>
In AAAI 2020. Joint work with Edmund H. Durfee and Satinder Singh. <br>
[paper](/files/shun-aaai-2020.pdf)

When a human user specifies a goal for a robot to achieve, the robot may find its policy cause side effects that the user may think unsafe. How should the robot efficiently query the human to find a guaranteed-safe policy (if one exists)?
We contribute a set-cover-based algorithm that outperforms some baseline methods.

![AAAI-20](images/aaai-20.png){:width="350px"}

---
**Approximately-Optimal Queries for Planning in Reward-Uncertain Markov Decision Processes** <br>
In ICAPS 2017. Joint work with Edmund H. Durfee and Satinder Singh. <br>
[paper](/files/shun-icaps-2017.pdf)

When a robot serves a human user and is uncertain about the human's preference (the reward function), what's the best question (given a fixed budget) to ask to maximally improve its policy?
We contribute a query selection algorithm that provably finds (approximately-)optimal queries by exploiting the submodularity property of the objective.

![ICAPS-17](images/icaps-17.png){:width="350px"}

[See all publications](/publications/)
