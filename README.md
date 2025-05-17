![icon](./icon.png)

# Instant Coffee

Instant Coffee is a generalized Docker image intended to be used as a starting
point for dev containers and CI/CD pipelines.  It contains a number of common
tools and utilities that are useful for development.

Both `amd64` and `arm64` images are supported.

## Image URL

```url
ghcr.io/lukejoshuapark/instant-coffee:0.8.0
```

## Installed Software

|Name|Type|Version|
|----|----|-------|
|(Ubuntu)|🖤 Base Image|24.04|
|AWS CLI|💜 DevOps|2.26.1|
|cargo-lambda|💛 Utility|1.8.3|
|curl|💛 Utility||
|Docker CLI|💛 Utility|28.0.4|
|Docker Compose Plugin|💛 Utility|2.34.0|
|gcc|💙 Language/Runtime||
|git|💛 Utility||
|Go|💙 Language/Runtime|1.24.2|
|gomplate|💛 Utility|4.3.1|
|jq|💛 Utility||
|lazygit|💛 Utility|0.48.0|
|migrate|💛 Utility|4.18.2|
|ngrok|💛 Utility||
|Node|💙 Language/Runtime|22.14.0|
|Python|💙 Language/Runtime||
|Rust|💙 Language/Runtime|1.86.0|
|sqlx-cli|💛 Utility||
|task|💛 Utility|3.42.1|
|Terraform|💜 DevOps|1.11.4|
|unzip|💛 Utility||
|xz-utils|💛 Utility||
|zip|💛 Utility||

## Dev Container Template

Place this in a `.devcontainer/devcontainer.json` file in your project to use
Instant Coffee.

```json
{
    "image": "ghcr.io/lukejoshuapark/instant-coffee:0.8.0",
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
                "ms-python.python",
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
                "files.trimTrailingWhitespace": true,
                "rust-analyzer.check.overrideCommand": ["cargo", "clippy", "--workspace", "--message-format=json", "--all-targets"],
                "rust-analyzer.testExplorer": true
            }
        }
    }
}
```
