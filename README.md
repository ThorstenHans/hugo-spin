# Hugo & Fermyon Spin template

You can use this template repository to serve your Hugo site through Fermyon Spin.

## Required Software

To use this template the following software must be installed on your system

- [hugo](https://gohugo.io)
- [spin](https://www.fermyon.com/spin)

## Repository structure

The Hugo site lives in the root of this repository. The hugo site has been generated using `hugo new site .` You can alter the site configuration in [`config.toml`](./config.toml). The Spin application for serving the Hugo site is located in the [`app`](./app/) folder.

The spin application is configured to work seamlessly with the default build settings of Hugo. (You can build your Hugo site locally using the `hugo` command from the root directory.)

For demonstration purposes, this repository has configured the [etch](https://themes.gohugo.io/themes/etch/) theme as git submodule. You can remove the submodule and pick a different theme if you want to.

> You can either clone the repo (including the theme) using `git clone git@github.com:ThorstenHans/hugo-spin.git --recursive ` or download the submodule after cloning using `git submodule update --init --recursive`

## Makefile

Find the [`Makefile`](./Makefile), which provides essential commands for day-to-day tasks such as running the site locally or deploying the latest version to [Fermyon Cloud](https://cloud.fermyon.com/)

- Use `make start` to build and start your site locally with `spin`
- Use `make deploy` to deploy your application to Fermyon Cloud

## Deploying to Fermyon cloud

As mentioned, you can deploy your Hugo site to Fermyon Cloud using the `make deploy` command. When deploying for the first time, Fermyon Cloud will automatically assign a FQDN. You can locate the FQDN directly in the output provided by `make deploy` (or consult [https://cloud.fermyon.com](https://cloud.fermyon.com)).

The `deploy` target of the (see [`Makefile`](./Makefile)) will explicitly set `baseURL` to `/`, to make this work with the `baseURL` specified in [`config.toml`](./config.toml). For recurring deployments to Fermyon Cloud, you should consider providing the final FQDN in `config.toml` and replacing `hugo -b "/"` with `hugo` in the `Makefile`.


