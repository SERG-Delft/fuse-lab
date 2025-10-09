---
layout: default
title: People
description: Members of the Lab
---

<!-- {% assign sorted_people = site.people | sort: "surname" %}
{% include person-card-deck.html heading="Lab Members" people=sorted_people %} -->

{% assign management = sorted_people | where: "track", "leadership" %}
{% assign sorted = management | sort: "order" %}
{% include person-card-deck.html heading="Lab Leadership" people=sorted %}

{% assign management = sorted_people | where: "track", "management" %}
{% assign sorted = management | sort: "order" %}
{% include person-card-deck.html heading="Lab Management" people=sorted %}

{% assign management = sorted_people | where: "track", "1" %}
{% include person-card-deck.html heading="Track 1" people=management %}

{% assign management = sorted_people | where: "track", "2" %}
{% include person-card-deck.html heading="Track 2" people=management %}

{% assign management = sorted_people | where: "track", "3" %}
{% include person-card-deck.html heading="Track 3" people=management %}

{% assign management = sorted_people | where: "track", "4" %}
{% include person-card-deck.html heading="Track 4" people=management %}

{% assign management = sorted_people | where: "track", "5" %}
{% include person-card-deck.html heading="Track 5" people=management %}

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
