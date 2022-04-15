CUDA_VISIBLE_DEVICES=0 CUDA_LAUNCH_BLOCKING=1 python fusion_main.py \
--dim 256 --dropout 0.3 --layers 2 \
--vision-backbone resnet34 \
--mode train \
--epochs 50 --batch_size 16 --lr 0.00030951 \
--vision_num_classes 1 --num_classes 1 \
--data_pairs partial_ehr_cxr --missing_token learnable \
--fusion_type early --task in-hospital-mortality \
--labels_set mortality \
--save_dir checkpoints/mortality/early_with_tokens