# sdis-cs-challenges
Coding challenges for St Dominics 26/27


## Installation (only once)

Install the following software: docker


With homebrew (on Mac)
```bash
brew install docker-desktop
```

Without homebrew follow this link (everywhere else)
    https://docs.docker.com/get-started/get-docker/


## Setup the environment


1. Launch docker


2. Build Jupyter Notebook image (only the first time).

```bash
docker compose build
```

3. Run Jupyter Notebook

To launch the container running Jupyter Notebook.

```bash
docker compose up
```

4. Open the Jupyter Link

As the container boots up and the notebook is launched a link is made available, similar to:

```
http://localhost:8888/lab?token=8ad9842dc1a5f2b07ca2f67969c503e1adeee671aca33e86
```
Only the token will be different.
Copy that link and access it in a browser to start a coding session.

## Solve Coding Challenge

Pick the challenge and solve it.


## Store the Coding challenge Solution (optional)

Eventually, you will want to save the challenges solutions in a code repository.
