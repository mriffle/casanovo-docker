FROM python:3.10

# Set environment variables for Matplotlib and Fontconfig
ENV MPLCONFIGDIR=/tmp/matplotlib_cache
ENV HOME=/tmp/home

# Define a build argument for the casanovo version
ARG CASANOVO_VERSION

# Use the build argument in the pip install command
RUN pip install --no-cache-dir casanovo==${CASANOVO_VERSION}

ADD entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
CMD []

