#!/usr/bin/env bash

set -x

EXP_DIR=exps/lol_game1_e50_coco/img
MODEL_PATH=full_coco_finetune.pth
RESUME_PATH=exps/lol_game1_e50_coco/save.pth
# contains 10% data already, no need for filter_pct
PY_ARGS=${@:1}

python -u main.py --output_dir ${EXP_DIR} --viz --viz_only --dataset_file lol --dataset lol --resume ${RESUME_PATH} --epochs 50 ${PY_ARGS}
# python -u main.py --output_dir ${EXP_DIR} --device cuda:1 --batch_size 2 --dataset_file lol --dataset lol --pretrain ${MODEL_PATH} --epochs 50 ${PY_ARGS}