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
|AWS CLI|💜 DevOps|2.38.6|
|cargo-lambda|💛 Utility|1.9.2|
|Claude Code|💚 AI Harness||
|curl|💛 Utility||
|Docker CLI|💛 Utility|29.9.2|
|Docker Compose Plugin|💛 Utility|5.6.1|
|gcc|💙 Language/Runtime||
|gh|💜 DevOps||
|git|💛 Utility||
|Go|💙 Language/Runtime|1.27.3|
|gomplate|💛 Utility|5.3.1|
|jq|💛 Utility||
|lazygit|💛 Utility|0.66.2|
|migrate|💛 Utility|4.20.1|
|ngrok|💛 Utility||
|Node|💙 Language/Runtime|24.22.1|
|Python|💙 Language/Runtime||
|Rust|💙 Language/Runtime|1.99.1|
|sqlx-cli|💛 Utility||
|task|💛 Utility|3.54.0|
|Terraform|💜 DevOps|1.17.0|
|unzip|💛 Utility||
|xz-utils|💛 Utility||
|zip|💛 Utility||

## Dev Container Template

Place this in a `.devcontainer/devcontainer.json` file in your project to use
Instant Coffee.

```json
{
	"image": "ghcr.io/lukejoshuapark/instant-coffee:0.11.1",
	"runArgs": [ "--add-host", "host.docker.internal:host-gateway" ],
	"mounts": [
		"source=/var/run/docker.sock,target=/var/run/docker.sock,type=bind",
		"source=claude-code-config,target=/root/.claude,type=volume"
	],
	"containerEnv": {
		"CLAUDE_CONFIG_DIR": "/root/.claude"
	},
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
				"remote.autoForwardPorts": false
			}
		}
	}
}
```
