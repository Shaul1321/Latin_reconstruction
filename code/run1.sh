#!/bin/bash          
            
dataset="ipa"
batch=1
optimizer="cyclic"
model_type="gru"
model_size=150
dropout=0.2
running_id=1;
include_embeddings=0
features=1

python3 create_dataset.py $running_id $dataset;

sleep 5;
python3 main.py --running_id $running_id --model_size $model_size --batch_size $batch --dropout $dropout --optimizer $optimizer --network $model_type --include_embeddings $include_embeddings --features $features --dynet-autobatch 1 --dynet-mem 1024
