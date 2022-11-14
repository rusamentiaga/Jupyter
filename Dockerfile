FROM docker.io/ultralytics/yolov5:latest

RUN pip3 install --no-cache-dir --verbose jupyter jupyterlab && \
    pip3 install --no-cache-dir --verbose jupyterlab_widgets
	
RUN jupyter lab --generate-config

CMD jupyter lab --config=/root/.jupyter/jupyter_notebook_config.py --port=8888 --ip=0.0.0.0 --allow-root --no-browser .	

# Build
# sudo docker build -f Dockerfile -t $t .



