#!/bin/bash
python $HOME/code/text_normalization/denormalization/ci/pynini_export.py $PWD/en_toy
cp $HOME/code/text_normalization/denormalization/ci/tokenize_and_classify.grm en_toy/classify
cp $HOME/code/text_normalization/denormalization/ci/verbalize.grm en_toy/verbalize
cd en_toy/classify; thraxmakedep tokenize_and_classify.grm ; make; cd ../../;
cd en_toy/verbalize; thraxmakedep verbalize.grm ; make; cd ../../;
