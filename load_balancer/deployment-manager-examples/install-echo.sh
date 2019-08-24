#!/bin/bash -e
ATTR=http://metadata.google.internal/computeMetadata/v1/instance/attributes
apt-get update
apt-get -y install python-pip
python -m pip install --upgrade pip
echo `curl -sf "${ATTR}/echo" -H "Metadata-Flavor: Google`
echo `curl -sf "${ATTR}" -H "Metadata-Flavor: Google`

if pkg=$(curl -sf "${ATTR}/echo" -H "Metadata-Flavor: Google"); then
    echo $pkg
    python -m pip install $pkg
    gunicorn -b 0.0.0.0:80 -w 4 echo:app 
fi

