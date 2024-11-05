---
title: Blocks
---

This is a list of all blocks currently available on Voxelmanip Classic.

{% assign blocks = site.data.blocks.blocks %}
{% assign i = 1 %}
<table class="blocks">
	{% tablerow block in blocks cols:11 %}
		{% assign url = block | replace: ' ', '_' %}
		{% if block contains 'Wool' and block != 'Rainbow Wool' %}
			{% assign url = 'Wool' %}
		{% elsif block == 'Double Stone Slab' %}
			{% assign url = 'Stone_Slab' %}
		{% elsif block == 'Still Water' %}
			{% assign url = 'Water' %}
		{% elsif block == 'Still Lava' %}
			{% assign url = 'Lava' %}
		{% endif %}

		<a href="/wiki/{{ url }}">
			<img src="/images/blocks/{{ i }}.webp">
			<div class="center lbl">{{ block }}</div>
		</a>

		{% assign i = i | plus: 1 %}
	{% endtablerow %}
</table>
