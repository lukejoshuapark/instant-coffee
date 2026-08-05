![icon](./icon.png)

# Instant Coffee

Instant Coffee is a generalized Docker image intended to be used as a starting
point for dev containers and CI/CD pipelines.  It contains a number of common
tools and utilities that are useful for development.

Both `amd64` and `arm64` images are supported.

## Image URL

```url
ghcr.io/lukejoshuapark/instant-coffee:0.11.0
```

## Installed Software

|Name|Type|Version|
|----|----|-------|
|(Ubuntu)|🖤 Base Image|26.04|
|AWS CLI|💜 DevOps|2.36.13|
|cargo-lambda|💛 Utility|1.9.1|
|Claude Code|💚 AI Harness||
|curl|💛 Utility||
|Docker CLI|💛 Utility|29.4.1|
|Docker Compose Plugin|💛 Utility|5.1.3|
|gcc|💙 Language/Runtime||
|gh|💜 DevOps||
|git|💛 Utility||
|Go|💙 Language/Runtime|1.26.5|
|gomplate|💛 Utility|5.2.0|
|jq|💛 Utility||
|lazygit|💛 Utility|0.64.0|
|migrate|💛 Utility|4.19.1|
|ngrok|💛 Utility||
|Node|💙 Language/Runtime|24.19.0|
|Python|💙 Language/Runtime||
|Rust|💙 Language/Runtime|1.97.1|
|sqlx-cli|💛 Utility||
|task|💛 Utility|3.52.0|
|Terraform|💜 DevOps|1.15.8|
|unzip|💛 Utility||
|xz-utils|💛 Utility||
|zip|💛 Utility||

## Dev Container Template

Place this in a `.devcontainer/devcontainer.json` file in your project to use
Instant Coffee.

```json
{
    "image": "ghcr.io/lukejoshuapark/instant-coffee:0.11.0",
    "mounts": [
        "source=/var/run/docker.sock,target=/var/run/docker.sock,type=bind"
    ],
    "customizations": {
        "vscode": {
            "extensions": [
                "dbaeumer.vscode-eslint",
                "eamodio.gitlens",
                "golang.go",
                "hashicorp.terraform",
                "rust-lang.rust-analyzer",
                "tamasfe.even-better-toml"
            ],
            "settings": {
                "js/ts.preferences.quoteStyle": "double",
                "editor.tabSize": 4,
                "editor.insertSpaces": false,
                "editor.detectIndentation": false,
                "[rust]": {
                    "editor.insertSpaces": true
                },
                "[yaml]": {
                    "editor.insertSpaces": true,
                    "editor.tabSize": 2
                },
                "files.insertFinalNewline": true,
                "files.trimTrailingWhitespace": true,
                "rust-analyzer.check.overrideCommand": ["cargo", "clippy", "--workspace", "--message-format=json", "--all-targets"],
                "rust-analyzer.testExplorer": true
            }
        }
    }
}
```
