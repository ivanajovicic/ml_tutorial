sudo rm -rf __pycache__/ dask-worker-space/ .ipynb_checkpoints/ storage  lts_data/

docker run --runtime=nvidia -v /home/ijovicic/rapids_repos/:/rapids/notebooks/ -p 8888:8888 -p 8787:8787 ml_tutorial:v2


