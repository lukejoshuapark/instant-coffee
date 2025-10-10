![icon](./icon.png)

# Instant Coffee

Instant Coffee is a generalized Docker image intended to be used as a starting
point for dev containers and CI/CD pipelines.  It contains a number of common
tools and utilities that are useful for development.

Both `amd64` and `arm64` images are supported.

## Image URL

```url
ghcr.io/lukejoshuapark/instant-coffee:0.9.0
```

## Installed Software

|Name|Type|Version|
|----|----|-------|
|(Ubuntu)|🖤 Base Image|24.04|
|AWS CLI|💜 DevOps|2.29.1|
|cargo-lambda|💛 Utility|1.8.6|
|curl|💛 Utility||
|Docker CLI|💛 Utility|28.4.0|
|Docker Compose Plugin|💛 Utility|2.39.2|
|gcc|💙 Language/Runtime||
|git|💛 Utility||
|Go|💙 Language/Runtime|1.25.1|
|gomplate|💛 Utility|4.3.3|
|jq|💛 Utility||
|lazygit|💛 Utility|0.55.0|
|migrate|💛 Utility|4.19.0|
|ngrok|💛 Utility||
|Node|💙 Language/Runtime|22.19.0|
|Python|💙 Language/Runtime||
|Rust|💙 Language/Runtime|1.89.0|
|sqlx-cli|💛 Utility||
|task|💛 Utility|3.44.1|
|Terraform|💜 DevOps|1.13.2|
|unzip|💛 Utility||
|xz-utils|💛 Utility||
|zip|💛 Utility||

## Dev Container Template

Place this in a `.devcontainer/devcontainer.json` file in your project to use
Instant Coffee.

```json
{
    "image": "ghcr.io/lukejoshuapark/instant-coffee:0.9.0",
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
