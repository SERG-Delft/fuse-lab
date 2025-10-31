---
layout: default
title: Research Tracks
---

# Research Tracks

The lab's research tracks are:

<!-- Track 1: Code Review Efficacy  
Track 2: Scalable Testing for Large Codebases  
Track 3: Automated Code Refactoring  
Track 4: Engineering Productivity Metrics  
Track 5: The Security Impact of LLMs4Code   -->


|  | Track  | PhD Candidate | Track leads Delft | Track leads Meta |
|----|--------|---------------|-------------------|------------------|
{% for track in site.tracks -%}
{%- unless track.inactive -%}
  {%- assign track_id_str = track.track-id | append: '' -%}
  {%- assign people = site.people | where_exp: "person", "person.track contains track_id_str" -%}
  {%- assign serg = people | where: "current_affiliation", "SERG" -%}
  {%- assign meta = people | where: "current_affiliation", "Meta" -%}
  {%- assign phd = people | where: "current_affiliation", "SERG, PhD" -%}
| {{track.track-id}} | [{{track.title}}]({{track.url | relative_url}}) | {%- include join_names.html people=phd -%} | {%- include join_names.html people=serg -%} | {%- include join_names.html people=meta -%} |
{%- endunless %}
{% endfor %}

<br/>
