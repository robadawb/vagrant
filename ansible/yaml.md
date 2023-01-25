# YAML

## YAML Ain't Markup Language
- A data serialization language designed to be portable and human readable
- Lines must be prefixed with the same amount of spaces (# doesn't matter)
- Lines prefixed with more spaces than parent are contained within parent
- Lists are used to store a collection of ordered values (item1, item2, ...)
- Each item in a list can be a key => value pair called a hash or dictionary
- Nearly every YAML file starts with a list in Ansible
- Quotes can be used to force a string & include special and escape characters

## List sequence in block style 
- apple
- banana
- cherry
- durian

## List sequence in flow style 
[apple, orange, cherry, durian]

## Dictionary (key => value)
martin:
  name: Martin
  job: SRE
  skill: Ansible

## Dictionary with a list sequence 
suzy:
  name: Suzy
  job: Developer
  skils:
    - Go
    - Python
    - Perl

## Dictionaries in flow style
martin: {name: Martin, job: SRE, skills: Ansible}
suzy: {name: Suzy, job: Developer, skills: {Go, Python, Perl}}

## Booleans (lowercase is prefered by linters)
create_key: yes
needs_agent: no
knows_devops: True
likes_vi: TRUE
uses_ms: false

## Putting it all together 
name: Martin
job: SRE
skill: Ansible
employed: true
fruits:
  - Apple
  - Banana
  - Cherry
  - Durian
teams:
  infra: yes 
  apps: yes
  maple: no
bio: |
  I work on the CDN
  team and I know
  how to breakdance

## Bad YAML
- apple
- banana
- cherry
durian

name: Martin
  job: SRE
  skill: Ansible

suzy:
  name: Suzy
    job: Developer
  skills: Go, Python, Perl
