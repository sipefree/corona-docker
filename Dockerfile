FROM jupyter/datascience-notebook

USER root

RUN apt-get update
RUN apt-get install fonts-lato

RUN pip install pandas seaborn jupyter jupyterthemes 

RUN jt -t chesterish -nf latosans

RUN jupyter nbextension install --py widgetsnbextension --user
RUN jupyter nbextension enable widgetsnbextension --user --py

EXPOSE 8888

CMD jupyter notebook --allow-root --ip=0.0.0.0