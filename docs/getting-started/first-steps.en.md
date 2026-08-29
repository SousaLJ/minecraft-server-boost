---
lang: en
---

# First steps

## 1. Check permissions

From the console or as a level 4 operator, run:

```text
/msb permission status
```

The default `AUTO` mode selects an external provider when one is available and
uses the built-in system otherwise.

## 2. Create your first kit

Place the intended items in your inventory and run:

```text
/kit create "Starter" 1 0
```

The arguments are the display name, number of uses, and cooldown in seconds.
The stable ID is derived from the name when the kit is created. Check it with:

```text
/kits
/kit info starter
```

## 3. Allow claiming

For a starter kit available to everyone:

```text
/kit edit starter access public
```

This option creates no groups and requires no per-player assignment. Uses and
cooldowns still apply.

If the kit should remain restricted, keep the default and grant permission
through the built-in backend:

With the built-in backend, grant the kit permission to a player:

```text
/msb permission grant Player minecraftserverboostmod.command.kit.claim.starter
```

You may also grant the parent permission
`minecraftserverboostmod.command.kit.claim`, which allows all kits unless a
more specific decision denies one.

## 4. Test without operator status

Temporarily remove operator status from the test player and confirm:

```text
/kit claim starter
```

Test public and restricted access, uses, cooldowns, server restarts, and
persistence before final configuration.
