FROM rapidsai/rapidsai:0.9-cuda10.0-runtime-ubuntu18.04

RUN apt update && apt -y upgrade



RUN source activate rapids && conda install -y -c conda-forge ipywidgets
RUN source activate rapids && jupyter labextension install @jupyter-widgets/jupyterlab-manager

RUN source activate rapids && conda install -y -c conda-forge ipyvolume
RUN source activate rapids && jupyter labextension install ipyvolume

RUN source activate rapids && conda install -c conda-forge python-graphviz 
RUN git clone https://github.com/miroenev/rapids

  

RUN source activate rapids && conda install -y -c rapidsai cupy
# RUN source activate rapids && conda install -y -c rapidsai -c nvidia cuml=0.9
# RUN source activate rapids && conda install -y -c rapidsai/label/xgboost xgboost=0.90.rapidsdev1



EXPOSE 8888

CMD ["bash", "-c", "source activate rapids && jupyter lab --no-browser --ip=0.0.0.0 --allow-root --NotebookApp.token=''"]

