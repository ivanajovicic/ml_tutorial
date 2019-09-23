sudo rm -rf __pycache__/ dask-worker-space/ .ipynb_checkpoints/ storage  lts_data/

docker run --runtime=nvidia -v /home/ijovicic/rapids_repos/:/rapids/notebooks/ -p 8889:8888 -p 8789:8787 ml_tutorial2


