FROM nvcr.io/nvidia/rapidsai/rapidsai:0.9-cuda9.2-runtime-ubuntu18.04

RUN apt update && apt -y upgrade

RUN source activate rapids && conda install -y -c conda-forge nodejs

RUN source activate rapids && conda install -y -c conda-forge ipywidgets
RUN source activate rapids && jupyter labextension install @jupyter-widgets/jupyterlab-manager

RUN source activate rapids && conda install -y -c conda-forge ipyvolume

RUN source activate rapids && jupyter labextension install ipyvolume
RUN source activate rapids && jupyter labextension install jupyter-threejs

RUN source activate rapids && conda install -c conda-forge python-graphviz 

#RUN apt -y --fix-missing install font-manager unzip git vim htop

#RUN git clone https://github.com/miroenev/deep_trees

#RUN git clone https://github.com/miroenev/rapids
### nvdashboard
RUN pip install jupyter-server-proxy 
RUN pip install bokeh
RUN pip install pynvml
#RUN pip install psutil


# enables demo of ETL with RAPIDS and model building with DL-framework [ optional extension ]
RUN source activate rapids && conda install -y -c pytorch pytorch    

EXPOSE 8888

CMD ["bash", "-c", "source activate rapids && jupyter lab --no-browser --ip=0.0.0.0 --allow-root --NotebookApp.token=''"]
