# morph-docker-python

## Updating the image

Login to the VPN, then:

    ssh openc@morph1
    cd ~/morph-docker-python
    git pull --rebase
    docker build --no-cache -t opencorporates/morph-python .
    docker push opencorporates/morph-python
