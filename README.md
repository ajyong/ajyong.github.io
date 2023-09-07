# Aaron's Website

https://aarony.dev

## Getting Started

[Nikola's official Getting Started](https://getnikola.com/getting-started.html)
is recommended for beginners who require a fully-guided setup experience.

For those ready to jump into a CLI:

1. Create a `venv` from the root folder: `python3 -m venv .venv`
1. Activate it in your terminal: `source .venv/bin/activate`
1. Within the `venv`: `pip3 install Nikola[extras]`
   1. (YMMV) If `nikola build` spits out a Pillow-related error, Nikola
      installed the wrong Pillow version, so manually override it after with
      `pip3 install Pillow==8.3.1`
1. `cd website` and run `nikola auto` to have Nikola auto-rebuild after nearly
   any changes.

## Getting Started (Dev Containers)

**Not currently working** 💀. Unfortunately, you'll simply have to use `venv` on
your host machine.

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

## Deploying

### CLI

Run this from the `website/` folder, assuming you are in an activated `venv`
and/or dev container:

`cd website && nikola build -a && nikola github_deploy`

### VS Code

**Not currently working** 💀.

**Tasks: Run Task > Nikola: Build & Deploy**

## Built With

- [Nikola](https://getnikola.com)
- [Figma](https://figma.com)
