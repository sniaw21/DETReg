#!/usr/bin/env bash

set -x

EXP_DIR=exps/DETReg_fine_tune_10pct_coco
PY_ARGS=${@:1}

python -u main.py --output_dir ${EXP_DIR} --filter_pct 0.1 --dataset coco --pretrain checkpoint_imagenet.pth --epochs 50 ${PY_ARGS}