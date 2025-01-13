#!/bin/bash
#SBATCH -o train.out
#SBATCH -p batch --gres=gpu:1
#SBATCH -J matcha

export CUDA_VISIBLE_DEVICES=4
#source /home/mingyang/miniconda3/bin/activate se
PYTHONPATH=. nohup python scripts/train.py --args.load conf/ablations/baseline.yml --save_path checkpoints/baseline > train.out 2>&1 &
