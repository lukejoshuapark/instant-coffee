![icon](./icon.png)

# Instant Coffee

Instant Coffee is a generalized Docker image intended to be used as a starting
point for dev containers and CI/CD pipelines.  It contains a number of common
tools and utilities that are useful for development.

Both `amd64` and `arm64` images are supported.

## Installed Software

|Name|Type|Version|
|----|----|-------|
|(Ubuntu)|🖤 Base Image|24.04|
|curl|💛 Utility||
|Docker CLI|💛 Utility|27.0.3|
|Docker Compose Plugin|💛 Utility|2.28.1|
|gcc|💙 Language/Runtime||
|git|💛 Utility||
|Go|💙 Language/Runtime|1.22.5|
|jq|💛 Utility||
|lazygit|💛 Utility|0.42.0|
|migrate|💛 Utility|4.17.1|
|Node|💙 Language/Runtime|20.15.0|
|Rust|💙 Language/Runtime|1.79.0|
|task|💛 Utility|3.38.0|
|Terraform|💜 DevOps|1.9.1|
|unzip|💛 Utility||
|xz-utils|💛 Utility||
|zip|💛 Utility||

## Dev Container Template

Place this in a `.devcontainer/devcontainer.json` file in your project to use
Instant Coffee.

```json
{
    "image": "ghcr.io/lukejoshuapark/instant-coffee:latest",
    "mounts": [
        "source=/var/run/docker.sock,target=/var/run/docker.sock,type=bind"
    ],
    "customizations": {
        "vscode": {
            "extensions": [
                "eamodio.gitlens",
                "golang.go",
                "hashicorp.terraform",
                "rust-lang.rust-analyzer",
                "tamasfe.even-better-toml"
            ],
            "settings": {
                "javascript.preferences.quoteStyle": "double",
                "typescript.preferences.quoteStyle": "double",
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
                "rust-analyzer.check.overrideCommand": ["cargo", "clippy", "--workspace", "--message-format=json", "--all-targets"]
            }
        }
    }
}
```
