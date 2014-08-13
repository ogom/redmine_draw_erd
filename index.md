---
layout: default
title:  Overview
---

Generate Entity Relationship Diagrams of Redmine.

* [Redmine Draw ERD plugin](http://www.redmine.org/plugins/redmine_draw_erd) to output only the specified model.

## Installation

```
$ git clone https://github.com/ogom/redmine_draw_erd ./plugins/redmine_draw_erd
$ bundle install
```

## Usage

### View

* Select the schema, and then click Apply.

![view_erd]({{ site.baseurl }}/assets/img/view_erd.png)

### Rake

```
$ bundle exec rake redmine:draw:erd
$ open ./tmp/draw/project.png
```

## Use

* [Rails ERD](https://github.com/voormedia/rails-erd)

## License

* MIT
