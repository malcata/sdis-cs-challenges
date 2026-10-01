FROM python:slim

## Maintainer
LABEL org.opencontainers.image.authors="malcata"

## Install stuff
#RUN apt-get update \
#    && apt-get install -y --no-install-recommends \
#    && rm -rf /var/lib/apt/lists/*

## Upgrade PIP (and six)
RUN pip3 install --no-cache-dir --upgrade pip six

## Install requirements
RUN mkdir /opt/ds-jupyter
WORKDIR /opt/ds-jupyter
COPY requirements.txt /opt/ds-jupyter
RUN pip3 install --no-cache-dir -r requirements.txt

## Download models and/or datasets
## Subject to disk space constrains
## nltk models
#RUN python -m nltk.downloader words
#RUN python -m nltk.downloader -q all && find ./nltk_data -name '*.zip' | xargs rm
## spaCy models
#RUN python -m spacy download en_core_web_sm

## Configure jupyter
RUN jupyter lab --generate-config --allow-root

RUN echo "\n\n# Adding inline plotting\nc.InteractiveShellApp.matplotlib = 'inline'\n#c.InteractiveShellApp.matplotlib = 'notebook'" >> ~/.jupyter/jupyter_notebook_config.py

EXPOSE 8888
CMD ["jupyter", "lab","--allow-root","--NotebookApp.ip='*'","--NotebookApp.open_browser=False"]


