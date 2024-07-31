<p align="center">
    <img src="https://raw.githubusercontent.com/jaxwilko/wn-game-plugin/main/assets/img/icon.png" alt="Demo Site">
</p>

# Winter Game Demo

This repo is a pre-configured setup for running [`jaxwilko/wn-game-plugin`](https://github.com/jaxwilko/wn-game-plugin).

The only requirement is that you must have docker installed.

> For a detailed guide including server configuration and level editing, see: [Getting Started](https://github.com/jaxwilko/wn-game-plugin/blob/main/docs/getting-started.md).

If you are interested in the development of the game plugin, consider reading the [development notes](https://github.com/jaxwilko/wn-game-plugin/blob/main/docs/development.md).

## Demo Setup

The `start.sh` has been added to the base Winter CMS install to help with the setup of the demo.

```bash
git clone git@github.com:jaxwilko/winter-game-demo.git
cd winter-game-demo
./start.sh
```

Once ran, you can visit [`https://localhost`](https://localhost) to register / play the game.
Visiting [`https://localhost/backend`](https://localhost/backend) will allow you to log into the Winter backend and modify the game via the Level editor.

The default username & password for the backend are `admin` & `admin`. Please change these if you intend to allow public access.

> Notice: This is intended to be used for a local demo, if you want to run this on a public server please change the admin password and ensure you consider security.

The [`start.sh`](./start.sh) file is documented, so if you want to do something custom take a read of it.
