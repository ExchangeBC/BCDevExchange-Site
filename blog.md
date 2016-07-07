---
layout: page
title: Blog Posts
permalink: /blog/
---

List of blog posts goes here

<ul>
  {% for post in site.posts %}
    <li>
      <a href="{{ post.url }}">{{ post.title }} {{ post.date }} {{ post.categories }}</a>
      {{ post.excerpt }}
    </li>
  {% endfor %}
</ul>
