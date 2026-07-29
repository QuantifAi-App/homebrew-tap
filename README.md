# quantifai-homebrew-tap

Homebrew tap for QuantifAI tools. One formula: [`quantifai-sync`](https://github.com/nino-chavez/quantifai-sync),
the telemetry sync agent.

> **Status: paused.** QuantifAI stopped active development in 2026. The formula points at a
> real, tagged `v0.1.0` release and installs, but nothing here is maintained.

## Install

```bash
brew tap nino-chavez/quantifai https://github.com/nino-chavez/quantifai-homebrew-tap
brew install quantifai-sync
```

The URL is not optional. Homebrew's short `brew tap user/name` form resolves to a repo named
`homebrew-name` — this repo is `quantifai-homebrew-tap`, so the short form can't find it.
Renaming the repo to `homebrew-quantifai` would fix that; it hasn't been done because the
project is paused.

## What's in here

```
Formula/
  quantifai-sync.rb    darwin + linux, arm64 + amd64
```

## Reaching out

nino@ninochavez.co
