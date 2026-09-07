## The Research Lab website

The web site is built with Jekyll and is running on GitHub pages.

### Building locally

There are two options to build the website locally:

- Install and run Jekyll directly.
- Run Jekyll in a Docker container (recommended).

#### Installing and running Jekyll

Use Ruby 3.0 or newer; the lockfile pins `public_suffix` 6.0.2, which requires
Ruby 3.0. `Gemfile.lock` was generated with Bundler 2.4.22, and the Docker image
uses Ruby 3.4.7. On macOS, do not use the system Ruby; install a current Ruby
version by following the
[official Jekyll instructions](https://jekyllrb.com/docs/installation/macos/).

```shell
# Check the active Ruby version.
ruby --version

# Install the Bundler version used by this project and its dependencies.
gem install bundler --version 2.4.22
bundle _2.4.22_ install

# Build the static website in _site/.
bundle _2.4.22_ exec jekyll build --config _config.yml,_config_local.yml

# Start a local development server with automatic regeneration.
bundle _2.4.22_ exec jekyll serve --config _config.yml,_config_local.yml
```

Open <http://127.0.0.1:4000/fuse-lab/>. Press `Ctrl+C` to stop the server.

#### Running Jekyll with Docker (recommended)

With a Docker engine running, build the image and start the development server:

```shell
docker build --tag fuse-site .
docker run --rm \
  --publish 127.0.0.1:4000:4000 \
  --mount type=bind,source="$(pwd)",target=/myapp \
  fuse-site
```

Open <http://127.0.0.1:4000/fuse-lab/>. Press `Ctrl+C` to stop and remove the
container.
