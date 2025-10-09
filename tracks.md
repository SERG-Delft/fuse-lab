---
layout: default
title: Research Tracks
---

TODO: Add descriptions of the tracks (e.g., from vacancy form), and add pages for each track

# Research Tracks

The lab's research tracks are:

Track 1: Code Review Efficacy  
Track 2: Scalable Testing for Large Codebases  
Track 3: Automated Code Refactoring  
Track 4: Engineering Productivity Metrics  
Track 5: The Security Impact of LLMs4Code  


| Id | Track  | PhD Candidate | Track leads |
|-|--------|---------------|----| 
{% for track in site.tracks -%}
{%- unless track.inactive -%}
| {{track.track-id}} | [{{track.title}}]({{track.url | relative_url}}) | {{track.phd}} | {{track.leader}} |
{%- endunless %}
{% endfor %}

<br/>
