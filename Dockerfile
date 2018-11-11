FROM caffe2ai/caffe2:c2v0.8.1.cpu.min.ubuntu16.04

# get required python packages
RUN pip install -U pip setuptools && pip install \
    graphviz \
    hypothesis \
    ipython \
    jupyter \
    matplotlib \
    notebook \
    pydot \
    python-nvd3 \
    pyyaml \
    requests \
    scikit-image \
    scipy

RUN sed -i -e 's/archive.ubuntu.com/kr.archive.ubuntu.com/g' /etc/apt/sources.list

# # auto config
# RUN apt update && \
#     apt-get install -y git tmux && \
#     git clone https://github.com/cgbahk/dotfiles && \
#     dotfiles/auto/auto

CMD jupyter notebook --ip 0.0.0.0 --no-browser --allow-root
