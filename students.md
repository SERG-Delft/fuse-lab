---
layout: default
title: Student projects
---

# Student projects
We work together with students on the research for all tracks of the FUSE lab.
This can be part of the

- 2nd year TU Delft bachelor software project (In teams of 5)
- 3rd year TU Delft bachelor research project (In groups of 5, indivdual theses)
- TU Delft master thesis project (individual)

If you are interested in such a position, checkout the current [tracks](tracks.html) and contact the relevant [people](people.html). 

If you study at a different university and you would like to write a research master thesis in the context of one of the FUSE tracks, you should ask your university supervisor to contact us. We have limited places available, but are always interested in new research opportunities.

For general inquiries, please contact [Carolin Brandt][cbrandt].




## Current students

Name | Period | Role | Topic | Advisors | Track
--|--|--|--|--
{% for student in site.data.students -%}
{%- unless student.status contains "Graduated" or student.status contains "Finished" or student.level == "PhD" or student.status == "" -%}
{%- if student.link -%}[{{student.name}}]({{student.link}}){%- else -%}{{student.name}}{%- endif -%} | {{student.status}} | {{student.level}} | {{student.topic}} | {{student.supervision}} | {% include track_link.html track_id=student.track %}
{% endunless -%}
{%- endfor %}

<!-- ## Completed research projects

Name | Period | Role | Thesis       | Advisors
-----|--------|------|--------------|----------
{% for student in site.data.students -%}
{%- if student.status contains "Graduated" or student.status contains "Finished" -%}
{{student.name}}     | {{student.status}} | {{student.level}} | [{{student.topic}}]({{student.link}}) | {{student.supervision}}
{% endif -%}
{%- endfor %} -->




[cbrandt]: https://carolin-brandt.de/
