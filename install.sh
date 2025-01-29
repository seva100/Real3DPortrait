conda create -n real3dportrait python=3.9

conda activate real3dportrait

conda install conda-forge::ffmpeg # ffmpeg with libx264 codec to turn images to video

### We recommend torch2.0.1+cuda11.7. 
# conda install pytorch==2.0.1 torchvision==0.15.2 torchaudio==2.0.2 pytorch-cuda=11.7 -c pytorch -c nvidia
# conda install pytorch==2.0.1 torchvision==0.15.2 pytorch-cuda=11.7 -c pytorch -c nvidia
conda install pytorch==2.0.1 pytorch-cuda=11.7 -c pytorch -c nvidia

# Install from pytorch3d from conda (For fast installation, Linux only)
# conda install pytorch3d::pytorch3d
## Alternatively, a choice of compatibility, build from Github's source code. 
## It may take a long time (maybe tens of minutes), Proxy is recommended if encountering the time-out problem
# pip install "git+https://github.com/facebookresearch/pytorch3d.git@stable"

FORCE_CUDA=1 \
    CUDA_HOME=/usr/local/remote/cuda-11.7 \
    pip install "git+https://github.com/facebookresearch/pytorch3d.git@stable"

# MMCV for some network structure
pip install cython
pip install cmake lit
pip install openmim==0.3.9
mim install mmcv==2.1.0 # use mim to speed up installation for mmcv

conda install pyaudio    # cannot install with pip without portaudio installed system-wide, but conda install works

# other dependencies
# pip install -r docs/prepare_env/requirements.txt -v

# If you encounter the following error, please try to install the dependencies with the following command:
pip install -r docs/prepare_env/requirements.txt -v --use-deprecated=legacy-resolver

# and now we have two versions of numpy (thanks to wrong requirements.txt) which we now undo
pip install ipython
pip uninstall numpy
pip install numpy==1.23.0
# conda install torchvision    # fixing torchvision to make it suitable for torch==2.0.1
pip install torchvision==0.15.2    # fixing torchvision to make it suitable for torch==2.0.1
pip install numpy==1.23.0 moviepy==1.0.3