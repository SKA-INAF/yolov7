#!bin/bash
# Mixed
echo Mixed
python make_pred_json.py --conf-thres 0.6 --source data/radio-galaxy/images/test --weights runs/train/exp-mixed/weights/best.pt --out-json trained_on_all/all.json
python make_pred_json.py --conf-thres 0.6 --source data/atca_test --weights runs/train/exp-mixed/weights/best.pt --out-json trained_on_all/atca.json
python make_pred_json.py --conf-thres 0.6 --source data/askap_test --weights runs/train/exp-mixed/weights/best.pt --out-json trained_on_all/askap.json
python make_pred_json.py --conf-thres 0.6 --source data/rgz_test --weights runs/train/exp-mixed/weights/best.pt --out-json trained_on_all/rgz.json

# # RGZ
echo RGZ
python make_pred_json.py --conf-thres 0.6 --source data/radio-galaxy/images/test --weights runs/train/exp-rgz/weights/best.pt --out-json trained_on_rgz/all.json
python make_pred_json.py --conf-thres 0.6 --source data/atca_test --weights runs/train/exp-rgz/weights/best.pt --out-json trained_on_rgz/atca.json
python make_pred_json.py --conf-thres 0.6 --source data/askap_test --weights runs/train/exp-rgz/weights/best.pt --out-json trained_on_rgz/askap.json
python make_pred_json.py --conf-thres 0.6 --source data/rgz_test --weights runs/train/exp-rgz/weights/best.pt --out-json trained_on_rgz/rgz.json

# ATCA
echo ATCA
python make_pred_json.py --conf-thres 0.6 --source data/radio-galaxy/images/test --weights runs/train/exp-atca/weights/best.pt --out-json trained_on_atca/all.json
python make_pred_json.py --conf-thres 0.6 --source data/atca_test --weights runs/train/exp-atca/weights/best.pt --out-json trained_on_atca/atca.json
python make_pred_json.py --conf-thres 0.6 --source data/askap_test --weights runs/train/exp-atca/weights/best.pt --out-json trained_on_atca/askap.json
python make_pred_json.py --conf-thres 0.6 --source data/rgz_test --weights runs/train/exp-atca/weights/best.pt --out-json trained_on_atca/rgz.json

# ASKAP
echo ASKAP
python make_pred_json.py --conf-thres 0.6 --source data/radio-galaxy/images/test --weights runs/train/exp-askap/weights/best.pt --out-json trained_on_askap/all.json
python make_pred_json.py --conf-thres 0.6 --source data/atca_test --weights runs/train/exp-askap/weights/best.pt --out-json trained_on_askap/atca.json
python make_pred_json.py --conf-thres 0.6 --source data/askap_test --weights runs/train/exp-askap/weights/best.pt --out-json trained_on_askap/askap.json
python make_pred_json.py --conf-thres 0.6 --source data/rgz_test --weights runs/train/exp-askap/weights/best.pt --out-json trained_on_askap/rgz.json