---
lang: en
---

# Kit configuration and data

## `kits.json`

Contains kit definitions. It is a versioned document and should preferably be
managed through commands.

Conceptual example:

```json
{
  "configVersion": 1,
  "kits": [
    {
      "id": "starter",
      "name": "Starter Kit",
      "uses": 1,
      "cooldownSeconds": 3600,
      "accessMode": "public",
      "items": [],
      "description": "Resources for getting started"
    }
  ]
}
```

The example omits actual item data. Do not create item entries manually:
invalid NBT on the 1.20.1 line or invalid data components on the 1.21.1 line can
prevent the definition from loading.

Accepted `accessMode` values:

- `public`: every player may attempt to claim the kit;
- `permission_required`: requires the kit-specific node.

If the property is missing or null, the mod uses `permission_required`. This
keeps legacy kits restricted and does not require a `configVersion` bump for
this additive migration.

## `player_data.json`

Stores progress by UUID, including uses and the next claim time. Player names
are informational; the persisted identity is the UUID.

## Backup and manual editing

1. stop the server;
2. copy the files outside the world directory;
3. validate the JSON after editing;
4. preserve `configVersion` and IDs;
5. start the server and review the log.

Do not publish these files without reviewing player UUIDs and names.
