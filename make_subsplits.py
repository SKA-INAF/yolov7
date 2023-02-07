from pathlib import Path

RGZ = ['sample4_galaxy', 'sample5_galaxy', 'sample3_source']
ATCA = ['sample2_source', 'sample10_sidelobe']
ASKAP = ['sample1_sidelobe', 'sample1_source']

subdatasets = {'RGZ': RGZ, 'ATCA': ATCA, 'ASKAP': ASKAP}

if __name__ == '__main__':
    for split in ['train', 'val', 'test']:
        with open(f'data/radio-galaxy/{split}.txt') as f:
            for line in f:
                for subdataset, names in subdatasets.items():
                    for name in names:
                        if name in Path(line).stem:
                            with open(f'data/radio-galaxy/{subdataset.lower()}_{split}.txt', 'a') as o:
                                o.write(line)