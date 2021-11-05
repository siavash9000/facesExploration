FROM tensorflow/tensorflow:1.7.1
RUN apt update && apt install -y libsm6 libxext6 libxrender-dev libpq-dev
WORKDIR /workdir
COPY facenet /workdir/
COPY VGGFace2-PretrainedModel /VGGFace2-PretrainedModel
RUN python -m pip install -r requirements.txt
ENV PYTHONPATH "${PYTHONPATH}:/workdir/contributed"
ENV PYTHONPATH "${PYTHONPATH}:/workdir/src"
RUN cd /VGGFace2-PretrainedModel&& cat x* > model.zip && unzip model.zip
