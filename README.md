# sdis-cs-challenges
Coding challenges for St Dominics 26/27


## Installation

Install the following software: brew, docker, Makefile


1. Install brew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```


2. Install the others

```bash
brew install docker-desktop make
```

## Solve Challenges

1. Go to the challenges repo clone

To download new challenges.

```bash
git pull
```

2. Build Jupyter Notebook image (only the first-time).

The Makefile is just to make easy to build the container image.

```bash
make build
```

3. Run Jupyter Notebook

To launch the container running Jupyter Notebook.

```bash
make run
```




