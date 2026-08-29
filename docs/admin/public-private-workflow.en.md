---
lang: en
---

# Public and private repository workflow

The public repository centralizes documentation, Issues, and Discussions. The
private repository contains source code, builds, development CI, and details
that must not be exposed.

## Recommended triage

1. a user opens a structured public Issue;
2. the maintainer removes or requests removal of sensitive data;
3. the Issue receives `needs-info`, `confirmed`, `duplicate`, or `wontfix`;
4. when code changes are needed, manually create a private task with the text
   reference `public#123`;
5. do not publish private repository URLs or internal branch names;
6. after fixing, comment on the public Issue with the target release;
7. close the Issue only when the public artifact is available.

## Releases

Use the same version number in the private source, public changelog, CurseForge,
and Modrinth. The technical tag may remain private. A public GitHub Release can
contain release notes and official download links only.

## Keeping secrets separate

Never copy these items into the public repository:

- signing or release workflows containing internal details;
- local test server configuration;
- tokens, certificates, or keys;
- worlds, dumps, or player databases;
- stack traces containing unsanitized private paths.

Do not create a `SECRETS.md` file: secrets belong in the private repository's
GitHub Actions Secrets, not in documentation.

