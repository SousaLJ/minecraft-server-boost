---
lang: en
---

# Common errors

## The server does not start

Check, in this order:

1. the JAR matches the modloader and Minecraft version;
2. Java matches the supported line;
3. Forge/NeoForge and dependencies use compatible versions;
4. there are no duplicate copies of the mod in `mods`;
5. the `latest.log` and crash report show the first relevant exception.

## A non-operator player cannot use a kit

Run:

```text
/msb permission status
```

Then verify:

- active backend;
- complete kit node;
- specific grant or deny and the parent permission;
- availability of FTB Ranks or another external handler;
- `operatorBypass` should not replace proper permissions for regular players.

## I selected built-in, but FTB Ranks still appears

Run:

```text
/msb permission backend built_in
/msb permission status
```

The first command saves the loader configuration value. If you edited the TOML
manually, restart the server or follow the Forge/NeoForge configuration reload
lifecycle.

## Corrupted JSON

Stop the server and look for a `.corrupt-<timestamp>.bak` backup. Do not replace
the document with `{}` without understanding its schema. Attach sanitized
copies to your bug report when analysis is needed.

## MineSkin fails

- confirm that the token exists and has no extra whitespace;
- test a publicly reachable HTTPS URL;
- review MineSkin service availability and quotas;
- never publish the token when requesting support.

## The skin does not appear immediately

The texture property is propagated to connected players, but the client may
retain visual state. Reconnect once before opening a bug.
