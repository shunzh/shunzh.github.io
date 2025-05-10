---
layout: cv
title: "Shun Zhang's CV"
permalink: /cv/
---
# Shun Zhang

{: #contact}
- <i class="fas fa-envelope"></i>  [{{ site.email }}](mailto:{{ site.email }})
- <i class="fas fa-globe"></i>  [{{ site.homepage_url | remove: 'https://' }}]({{ site.homepage_url }})
- <i class="fas fa-map-marker-alt"></i>  {{ site.location }}

**Research interests:** Reinforcement learning; large language models; code generation and reasoning; value alignment; artificial general intelligence.

## Experience

### <span>**Founding Member of Technical Staff**, _Asari AI_ (San Francisco, CA)</span> <span>Jun. 2024 - Jan. 2025</span>

- Developed an **AI agent** that plans, verifies, and discovers new skills and knowledge.

### <span>**Research Scientist**, _MIT-IBM Watson AI Lab_<br>**Postdoctoral Researcher**, _MIT-IBM Watson AI Lab_<br>**Postdoctoral Researcher**, _IBM-NJIT_</span> <span style="text-align: right;">Jun. 2022 - Jun. 2024<br>Oct. 2021 - Jun. 2022<br>Aug. 2020 - Oct. 2021</span>

- Conducted research and published papers on **reinforcement learning** and **large language models**, with a focus on competition-level code generation, reinforcement learning from human feedback, and AI for scientific discovery.

### <span>**Software Development Engineer Intern**, _Amazon_ (Seattle, WA)</span> <span>Jun. - Aug. 2014</span>

- Created a WebRTC-related internal tool to resolve cross-departmental communication issues.

### <span>**Software Development Engineer Intern**, _Semantic Designs_ (Austin, TX)</span> <span>Jun. - Aug. 2013</span>

- Created a user interface for a programming language analysis tool for better visualization.

## Education

### <span>**Ph.D. in Computer Science and Engineering**, _University of Michigan_</span> <span>Sep. 2015 - Apr. 2020</span>

- Research on **reward learning** and **AI safety** in **reinforcement learning**.
- Dissertation: Efficiently Finding Approximately-Optimal Queries for Improving Policies and Guaranteeing Safety
- Advisors: Satinder Singh, Edmund H. Durfee

### <span>**M.S. in Computer Science**, _University of Texas at Austin_</span> <span>Aug. 2015</span>

- Master thesis: Parameterized Modular Inverse Reinforcement Learning
- Committee members: Dana Ballard, Peter Stone

### <span>**B.S. in Computer Science**, _University of Texas at Austin_</span> <span>May 2014</span>


## Publications and Preprints

<p></p>

<ul>
{% for post in site.posts %}
{% if post.categories contains 'paper' or post.categories contains 'preprint' %}
<li><p>
    <strong>{{ post.title }}</strong>
    <br>
    {% include list_authors.html authors=post.authors enable_links=false %}
    <br>
    <em>{{ post.venue }}</em>, {{ post.year }}
    <br>
    {% if post.paper %}
        {% if post.paper contains '://' %}
            {% assign absoluteUrl = post.paper %}
        {% else %}
            {% assign absoluteUrl = site.homepage_url | append: post.paper %}
        {% endif %}
        <a href="{{ absoluteUrl }}">paper</a>
    {% endif %}
</p></li>
{% endif %}
{% endfor %}
</ul>


## Academic Services

### **Conference Reviewer**

IEEE ITSC 2014, AAAI 2019, AISTATS 2023-24, CVPR 2023, ICML 2023-24, NeurIPS 2023-24, ICLR 2024-25.


## Skills

### **Research**

Reinforcement learning, deep learning, large language models, active learning, convex optimization, planning and learning under uncertainty.

### **Programming languages**

Proficient in Python (NumPy, PyTorch). Experienced in Java, C++, C, Matlab, SQL.


## Miscellaneous

<p></p>

* Languages: Mandarin Chinese (native), English (professional proficiency).
* No sponsorship required to work in the United States.
