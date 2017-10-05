# Docker for VueJs development

The goal of this docker images is to simplify the bootstrap of VueJs development.

VueJs is a progressive, incrementally-adoptable JavaScript framework for building UI on the web, you can learn mode by visiting the [official website](http://vuejs.org).

## Configurations

Nothing much to configure, the image is already built with some global packages:

- [Cross Env](https://www.npmjs.com/package/cross-env) Run scripts that set and use environment variables across platforms
- [Webpack](https://www.npmjs.com/package/webpack) A module bundler. Its main purpose is to bundle JavaScript files for usage in a browser, yet it is also capable of transforming, bundling, or packaging just about any resource or asset
- [Browserify](https://www.npmjs.com/package/browserify) Use a node-style `require()` to organize your browser code and load modules installed by npm.
- [Gulp](https://www.npmjs.com/package/gulp) The streaming build system
- [Grunt](https://www.npmjs.com/package/grunt) The JavaScript Task Runner
- [Bower](https://www.npmjs.com/package/Bower) A package manager for the web
- [Vue Cli](https://www.npmjs.com/package/vue-cli) A simple CLI for scaffolding Vue.js projects.
- [Web Ext](https://github.com/mozilla/web-ext) A command line tool to help build, run, and test web extensions

There is also a handy `packages.json` inside the root folder of Node user which contains packages that are commonly used with VueJs.

## How to build

Building is straight forward you can run `docker build -t name-of-image .` inside this folder or you can use on of the build files that we provide in `scripts/build`.

## How tu use

Once you have built the image, you need to create and run a container that shares a volume and a port. By default the image will expose the port `80`, feel free to change it for you needs.

`docker run --name name-of-the-container -d -p 80:80 name-of-the-image`

The default user is `node` as suggested by the [best practies](https://github.com/nodejs/docker-node/blob/master/docs/BestPractices.md#non-root-user) and the default work directory is `/home/node/app`