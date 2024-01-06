---
layout: blank
title: Shun Zhang's Bio
permalink: /bio
---
{: #bioText}
Dr. Shun Zhang is a research scientist at the MIT-IBM Watson AI Lab. His research interests lie in reinforcement learning, large language models, and value alignment. He is particularly focused on code generation and reinforcement learning from human feedback. Dr. Zhang received his Ph.D. from the University of Michigan, advised by Prof. Satinder Singh and Prof. Ed Durfee. He received B.S. and M.S. in Computer Science from the University of Texas at Austin, advised by Prof. Peter Stone and Prof. Dana Ballard.

<a href="#" id="copyLink" onclick="event.preventDefault(); copyBio()"><i class="fa-regular fa-copy"></i> Copy</a>
<span id="tooltip" style="visibility: hidden;">(copied)</span>

<a href="javascript:history.back()"><i class="fa-solid fa-angle-left"></i> Back</a>

<script>
  function copyBio() {
    var text = document.getElementById('bioText').innerText;
    var textArea = document.createElement('textarea');
    textArea.value = text;
    document.body.appendChild(textArea);
    textArea.select();
    document.execCommand('Copy');
    textArea.remove();

    var tooltip = document.getElementById('tooltip');
    tooltip.style.visibility = 'visible';

    return false; // Prevent default link behavior
  }
</script>