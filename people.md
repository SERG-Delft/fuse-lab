---
layout: default
title: People
description: Members of the Lab
---

{% assign sorted_people = site.people | sort: "surname" %}

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
