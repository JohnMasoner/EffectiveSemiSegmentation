FROM pytorch/pytorch:1.6.0-cuda10.1-cudnn7-runtime

RUN apt-get update && apt-get install -y --no-install-recommends \
	# we have found python3.7 in base docker
	python3-pip \
	python3-setuptools \
	build-essential \
	&& \
	apt-get clean && \
	python -m pip install --upgrade pip

WORKDIR /workspace

ADD ./ /workspace

# pip install
RUN pip install --no-cache-dir --upgrade pip  -i https://pypi.douban.com/simple && \
        pip install --no-cache-dir -r /workspace/requirements.txt -i https://pypi.douban.com/simple

# run val
