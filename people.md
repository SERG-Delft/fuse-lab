---
layout: default
title: People
description: Members of the Lab
---

TODO: Add Ven and Meta Track Leads, sort by tracks + add 'management' section at top (Arie, Andy, Ven, Caro, Kim), update descriptions to match the lab role 

{% assign sorted_people = site.people | sort: "surname" %}
{% include person-card-deck.html heading="Lab Members" people=sorted_people %}

<!-- {% assign faculty = sorted_people | where: "role", "Faculty" %}
{% include person-card-deck.html heading="Faculty" people=faculty %}

{% assign part_time_faculty = sorted_people | where: "role", "Part Time Faculty" %}
{% include person-card-deck.html heading="Part Time Faculty" people=part_time_faculty %}

{% assign postdocs = sorted_people | where: "role", "Postdoc" %}
{% include person-card-deck.html heading="Postdocs" people=postdocs %}

{% assign phd_students = sorted_people | where: "role", "PhD Student" %}
{% include person-card-deck.html heading="PhD Students" people=phd_students %}

{% assign scientific_programmers = sorted_people | where: "role", "Scientific Programmer" %}
{% include person-card-deck.html heading="Scientific Programmers" people=scientific_programmers %}

{% assign guests = sorted_people | where: "role", "Guest" %}
{% include person-card-deck.html heading="Guests" people=guests %}

{% assign support = sorted_people | where: "role", "Support" %}
{% include person-card-deck.html heading="Support" people=support %} -->
