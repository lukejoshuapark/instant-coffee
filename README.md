![icon](./icon.png)

# Instant Coffee

Instant Coffee is a generalized Docker image intended to be used as a starting
point for dev containers and CI/CD pipelines.  It contains a number of common
tools and utilities that are useful for development.

Both `amd64` and `arm64` images are supported.

## Image URL

```url
ghcr.io/lukejoshuapark/instant-coffee:0.4.4
```

## Installed Software

|Name|Type|Version|
|----|----|-------|
|(Ubuntu)|🖤 Base Image|24.04|
|AWS CLI|💜 DevOps|2.17.48|
|cargo-lambda|💛 Utility|1.4.0|
|curl|💛 Utility||
|Docker CLI|💛 Utility|27.0.3|
|Docker Compose Plugin|💛 Utility|2.28.1|
|gcc|💙 Language/Runtime||
|git|💛 Utility||
|Go|💙 Language/Runtime|1.23.1|
|gomplate|💛 Utility|4.1.0|
|jq|💛 Utility||
|lazygit|💛 Utility|0.44.1|
|migrate|💛 Utility|4.18.1|
|Node|💙 Language/Runtime|20.17.0|
|Rust|💙 Language/Runtime|1.81.0|
|task|💛 Utility|3.39.2|
|Terraform|💜 DevOps|1.9.6|
|unzip|💛 Utility||
|xz-utils|💛 Utility||
|zip|💛 Utility||

## Dev Container Template

Place this in a `.devcontainer/devcontainer.json` file in your project to use
Instant Coffee.

```json
{
    "image": "ghcr.io/lukejoshuapark/instant-coffee:0.4.4",
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
                "tamasfe.even-better-toml",
                "vadimcn.vscode-lldb"
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
                "rust-analyzer.check.overrideCommand": ["cargo", "clippy", "--workspace", "--message-format=json", "--all-targets"],
                "rust-analyzer.testExplorer": true
            }
        }
    }
}
```
