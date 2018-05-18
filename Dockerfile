# Base image
#FROM python:3.6.5-alpine3.7
FROM python:3.6.5-slim-stretch

# Meta-data
LABEL maintainer="Zachariel Norzagaray <zachariel.norzagaray@gmail.com>" \
      description="Data Science base image"

# Working directory
WORKDIR /app

# Install basic libraries
RUN pip --no-cache-dir install numpy sklearn jupyter nltk matplotlib scikit-learn pandas

EXPOSE 8888
CMD ["jupyter", "notebook", "--ip='*'", "--no-browser", "--allow-root"]
