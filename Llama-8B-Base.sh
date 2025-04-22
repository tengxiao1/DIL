#!/bin/bash
export CUDA_VISIBLE_DEVICES=3,4,5,7

iter_num=15
for i in $(seq 1 $iter_num); do
    output_dir="models/$hub_model_id" # mode save local path
    gradient_accumulation_steps=16
    per_device_train_batch_size=2
    if [ "$i" -eq 1 ]; then
        beta=1.0
        learning_rate=5e-7
        hub_model_id="LLama-8B-Base-LSIF-5e-7"
        loss_type="LSIF"
        output_dir="models/$hub_model_id"
        ACCELERATE_LOG_LEVEL=info  accelerate launch --config_file recipes/accelerate_configs/deepspeed_zero3.yaml scripts/run.py recipes/zephyr/llama-3-8b-base.yaml run_name=$hub_model_id  learning_rate=$learning_rate hub_model_id=$hub_model_id output_dir=$output_dir loss_type=$loss_type  beta=$beta
    elif [ "$i" -eq 2 ]; then
        beta=1.0
        learning_rate=1e-6
        hub_model_id="LLama-8B-Base-LSIF-1e-6"
        loss_type="LSIF"
        output_dir="models/$hub_model_id"
        ACCELERATE_LOG_LEVEL=info  accelerate launch --config_file recipes/accelerate_configs/deepspeed_zero3.yaml scripts/run.py recipes/zephyr/llama-3-8b-base.yaml  run_name=$hub_model_id  learning_rate=$learning_rate hub_model_id=$hub_model_id output_dir=$output_dir loss_type=$loss_type  beta=$beta
    elif [ "$i" -eq 3 ]; then
        beta=1.0
        learning_rate=6e-7
        hub_model_id="LLama-8B-Base-LSIF-6e-7"
        loss_type="LSIF"
        output_dir="models/$hub_model_id"
        ACCELERATE_LOG_LEVEL=info  accelerate launch --config_file recipes/accelerate_configs/deepspeed_zero3.yaml scripts/run.py recipes/zephyr/llama-3-8b-base.yaml  run_name=$hub_model_id  learning_rate=$learning_rate hub_model_id=$hub_model_id output_dir=$output_dir loss_type=$loss_type  beta=$beta
    elif [ "$i" -eq 4 ]; then
        beta=1.0
        learning_rate=3e-7
        hub_model_id="LLama-8B-Base-3e-7"
        loss_type="LSIF"
        output_dir="models/$hub_model_id"
        ACCELERATE_LOG_LEVEL=info  accelerate launch --config_file recipes/accelerate_configs/deepspeed_zero3.yaml scripts/run.py recipes/zephyr/llama-3-8b-base.yaml  run_name=$hub_model_id learning_rate=$learning_rate hub_model_id=$hub_model_id output_dir=$output_dir loss_type=$loss_type  beta=$beta
    else
        continue 
    fi
    echo "Training"


done


