# Aaron's Website

https://aarony.dev

## Getting Started

> **tl;dr:** `cd website && nikola auto`. Read on for VS Code Dev Container
> goodness.

1. Install VS Code and Docker on your host machine.
1. Add VS Code to your shell PATH.
1. Clone this repo (SSH recommended).
1. `code .` from project root.
1. Install **Remote - Container** (`ms-vscode-remote.remote-containers`), VS
   Code should prompt you to do so.
   - Once installed, another prompt to **Re-open in Container** appears. Click
     it.
1. Wait for container to build. Once done, it should either ask you to enable
   auto-run build tasks or just run the build task for you.
   - If it doesn't, `[Ctrl/Cmd] + Shift + B` to manually fire it.
1. Install recommended extensions, otherwise Jinja2 `.tmpl` files won't have
   syntax highlighting, for example.

**Known issue:** When rebuilding the dev container, the auto-run build task will
fail. Simply wait until rebuild is complete and manually run the build task (see
above).

Check [tasks.json](./.devcontainer/tasks.json) for a browser auto-launch
variation.

## Built With

- [Nikola](https://getnikola.com)
- [Figma](https://figma.com)
