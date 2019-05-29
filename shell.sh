export BERT_BASE_DIR=./models/chinese_L-12_H-768_A-12

export DATASET=./glue_dir/video

python run_classifier.py \
  --data_dir=$DATASET \
  --task_name=video \
  --vocab_file=$BERT_BASE_DIR/vocab.txt \
  --bert_config_file=$BERT_BASE_DIR/bert_config.json \
  --output_dir=./output/ \
  --do_train=true \
  --do_eval=true \
  --init_checkpoint=$BERT_BASE_DIR/bert_model.ckpt \
  --train_batch_size=32 \
  --num_train_epochs=5.0 \
  --text_mode=2