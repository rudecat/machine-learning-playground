FROM jupyter/scipy-notebook:0ce64578df46

ENV PYTHONPATH "${PYTHONPATH}:/home/jovyan/work"

RUN echo "export PYTHONPATH=/home/jovyan/work" >> ~/.bashrc

WORKDIR /home/jovyan/work

COPY requirements.txt /home/jovyan/work
RUN conda install pip
RUN pip install -r requirements.txt