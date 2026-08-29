---
lang: en
---

# Announcement system

!!! note "Planned feature"
    Announcements and welcome messages are not part of the initial release yet.

The planned common design includes:

- welcome messages when players join;
- periodic announcements for rules, Discord, and server information;
- sequential or random selection;
- safe placeholders such as player name and online player count;
- a content file named `messages.json`, separate from modloader configuration;
- activation, interval, and selection mode in the modloader's standard config;
- delivery on the server thread through a modloader adapter.

`messages.json` will be editable content, not a second configuration source.
The modloader remains responsible for paths and events, while selection,
placeholders, and rules stay in common.

The intended release lines are Forge 1.20.1, Forge 1.21.1, and NeoForge 1.21.1
after validation, with Fabric evaluated separately.
