# ./configs/DETReg_fine_tune_10pct_lol.sh --device cuda:2 --batch_size 1
# ./configs/DETReg_fine_tune_10pct_coco.sh --device cuda:2 --batch_size 1
CUDA_VISIBLE_DEVICES=2,3 GPUS_PER_NODE=2 ./tools/run_dist_launch.sh 2 ./configs/DETReg_fine_tune_10pct_lol.sh --batch_size 1
# CUDA_VISIBLE_DEVICES=2,3 GPUS_PER_NODE=2 ./tools/run_dist_launch.sh 2 ./configs/DETReg_fine_tune_10pct_coco.sh --batch_size 2