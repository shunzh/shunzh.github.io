---
layout: cv
title: "Shun Zhang's CV"
permalink: /cv/
---
# Shun Zhang

{: #contact}
- <i class="fas fa-envelope"></i>  [shunzh@umich.edu](mailto:shunzh@umich.edu)
- <i class="fas fa-globe"></i>  [shunzh.github.io](http://shunzh.github.io/)
- <i class="fas fa-map-marker-alt"></i>  San Francisco Bay Area

**Research interests:** Reinforcement learning; large language models; automatic code generation.

## Experience

### <span>**Research Scientist**, _MIT-IBM Watson AI Lab_<br>**Postdoctoral Researcher**, _MIT-IBM Watson AI Lab_<br>**Postdoctoral Researcher**, _IBM-NJIT_</span> <span style="text-align: right;">Jun. 2022 - Present<br>Oct. 2021 - Jun. 2022<br>Aug. 2020 - Oct. 2021</span>

- Research and publish academic papers on **reinforcement learning** and **large language models**, with a focus on the applications of competitive-level code generation and AI for electric circuit design automation.

### <span>**Graduate Research Assistant**, _University of Michigan_ (Ann Arbor, MI)</span> <span>Sep. 2015 - Apr. 2020</span>

- Conducted research and published papers on **preference elicitation** and **AI safety in reinforcement learning**.
- Designed active learning algorithms to improve a learning agent's performance and guarantee safety in domains with uncertain objectives.

### <span>**Software Development Engineer Intern**, _Amazon_ (Seattle, WA)</span> <span>Jun. - Aug. 2014</span>

- Created a WebRTC-related internal tool to resolve cross-departmental communication issues.

### <span>**Software Development Engineer Intern**, _Semantic Designs_ (Austin, TX)</span> <span>Jun. - Aug. 2013</span>

- Created a user interface for a programming language analysis tool for better visualization.

## Education

### <span>**Ph.D. in Computer Science and Engineering**, _University of Michigan_</span> <span>Sep. 2015 - Apr. 2020</span>

- Dissertation: Efficiently Finding Approximately-Optimal Queries for Improving Policies and Guaranteeing Safety
- Advisors: Satinder Singh, Edmund H. Durfee

### <span>**M.S. in Computer Science**, _University of Texas at Austin_</span> <span>Aug. 2015</span>

- Master Thesis: Parameterized Modular Inverse Reinforcement Learning
- Committee members: Dana Ballard, Peter Stone

### <span>**B.S. in Computer Science**, _University of Texas at Austin_</span> <span>May 2014</span>


## Publications

<p></p>

{% for post in site.posts %}
{% if post.categories contains 'research' %}
- **{{ post.title }}**<br>
{{ post.authors }}<br>
*{{ post.venue }}*<br>
{% if post.paper contains '://' %}{% assign absoluteUrl = post.paper %}{% else %}{% assign absoluteUrl = site.homepage_url | append: post.paper %}{% endif %}{% if post.paper %}<a href="{{ absoluteUrl }}">paper</a>{% endif %}
{% endif %}
{% endfor %}

<!-- 
## Academic Services

### **Conference Reviewer**

* IEEE ITSC 2014, AAAI 2019, AISTATS 2023, CVPR 2023, ICML 2023, NeurIPS 2023.
 -->

## Skills

### **Research**

Reinforcement learning, optimization, deep learning, large language models, active learning, learning and planning under uncertainty.

### **Programming languages**

Proficient in Python (numpy, PyTorch). Experienced in Java, C++, C, Matlab.

