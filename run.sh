CUDA_VISIBLE_DEVICES=3 \
CUDA_HOME=/usr/local/remote/cuda-11.7 \
    python inference/real3d_infer.py \
    --src_img data/raw/examples/Macron.png \
    --drv_aud data/raw/examples/Obama_5s.wav \
    --drv_pose data/raw/examples/May_5s.mp4 \
    --bg_img data/raw/examples/bg.png \
    --out_name output.mp4 \
    --out_mode concat_debug