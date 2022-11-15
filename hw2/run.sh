#!/bin/bash
# python cs285/scripts/run_hw2.py --env_name InvertedPendulum-v4 \
#     --ep_len 1000 --discount 0.9 -n 100 -l 2 -s 64 -b 1024 -lr 0.01 -rtg \
#     --exp_name q2_b128_r0.0001

# kernprof -lv cs285/scripts/run_hw2.py \
#     --env_name LunarLanderContinuous-v2 --ep_len 1000 \
#     --discount 0.99 -n 100 -l 2 -s 64 -b 40000 -lr 0.005 \
#     --reward_to_go --nn_baseline --exp_name q3_b40000_r0.005

python cs285/scripts/run_hw2.py \
    --env_name Hopper-v4 --ep_len 1000 \
    --discount 0.99 -n 300 -l 2 -s 32 -b 2000 -lr 0.001 \
    --reward_to_go --nn_baseline --action_noise_std 0.5 --gae_lambda 0 \
    --exp_name q5_b2000_r0.001_lambda1