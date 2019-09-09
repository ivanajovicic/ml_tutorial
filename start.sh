rm -rf __pycache__/ dask-worker-space/ .ipynb_checkpoints/ storage  

docker run --runtime=nvidia -v /home/ijovicic/rapids_repos/ml_tutorial/:/rapids/notebooks/ml_tutorial/ -p 8888:8888 -p 8787:8787 ml_tutorial:v1


