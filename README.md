<picture>
  <source media="(prefers-color-scheme: dark)" srcset="https://en.angie.software/_static/icons/logo-dark.svg?digest=5dab60787f788e828e8ef8960a35fcba">
  <source media="(prefers-color-scheme: light)" srcset="https://en.angie.software/_static/icons/logo.svg?digest=ba3df682f79ad1e877d1e607dc782bb7">
  <img alt="Angie" src="https://en.angie.software/_static/icons/logo.svg?digest=ba3df682f79ad1e877d1e607dc782bb7" height="86px">
</picture>

## About
A drop-in replacement container image to NGINX using ANGIE

This image includes the entrypoint scripts found in the NGINX official container image with a few modifications to support ANGIE.

To use this image, simply replace `nginx` with `socheatsok78/angie`. For example:

```diff
-FROM nginx:stable-alpine
+FROM socheatsok78/angie:minimal
```

## Supported tags

The container image tags are created following the official Angie container images, see https://en.angie.software/angie/docs/installation/docker/
for more details.

Examples:

- `socheatsok78/angie:minimal`: same as `angie:minimal`
- `socheatsok78/angie:<VERSION>-minimal`: same as `angie:<VERSION>-minimal`

## License

This project is licensed under the BSD-2-Clause license. See the [LICENSE](LICENSE) file for details.
