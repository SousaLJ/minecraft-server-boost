---
lang: en
---

# Kit overview

A kit contains:

- `id`: stable identity used by commands, progress, and permissions;
- `name`: display name that can change without changing the ID;
- `uses`: number of claims allowed per player;
- `cooldownSeconds`: delay between claims;
- `description`: optional administrative description;
- `accessMode`: `public` or `permission_required`;
- `items`: copy of the items captured from the inventory.

## Important rules

- renaming a kit does not change its ID or permission node;
- changing uses does not automatically restore previously consumed uses;
- changing the cooldown does not rewrite an already persisted next claim time;
- deleting a kit preserves orphaned player history;
- `give` is an administrative delivery and consumes neither uses nor cooldown;
- `claim` always checks uses and cooldown;
- `public` kits do not query permissions; `permission_required` kits use the
  configured backend;
- `reset` is the explicit operation for restarting progress.

This behavior prevents an administrative edit from silently restoring kits for
every player.

## Simple access without groups

The mod does not create groups or automatically assign every player to one.
For a kit such as `starter`, mark it public. Keep rank, event, or staff kits
restricted and assign their nodes through the built-in system, FTB Ranks, or
another Forge/NeoForge handler.

New kits and legacy kits without `accessMode` are restricted by default. An
administrator must publish each kit explicitly.

## Data integrity

JSON writes use atomic replacement. If an invalid document is detected, the
original is preserved with a suffix similar to `.corrupt-<timestamp>.bak`
instead of silently being treated as empty.
