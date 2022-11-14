FROM docker.io/ultralytics/yolov5:latest

RUN pip3 install --no-cache-dir --verbose jupyter jupyterlab && \
    pip3 install --no-cache-dir --verbose jupyterlab_widgets
	
RUN jupyter lab --generate-config

CMD jupyter lab --config=/root/.jupyter/jupyter_notebook_config.py --port=8888 --ip=0.0.0.0 --allow-root --no-browser .	

# Build
# sudo docker build -f Dockerfile -t jupyter .

# Run
# # Run
# docker run --gpus all --ipc=host --ulimit memlock=-1 --ulimit stack=67108864 --rm --net=host -v "$(pwd)":/usr/src/app/local/ jupyter

