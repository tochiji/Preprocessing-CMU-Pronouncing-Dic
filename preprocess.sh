#!/bin/bash

#########################################################
#
# preprocess.sh
#   
#   2019.04.15
#
#########################################################

    COMMAND=$(basename "$0")

    FILE="cmudict.txt"

    cat "$FILE" \
        | sed "s/ /@@@ /" \
        | sed "s/$/ /" \
        | sed "s/ AO / ɔ /g" \
        | sed "s/ AO0 / ɔ /g" \
        | sed "s/ AO1 / ɔ́ /g" \
        | sed "s/ AO2 / ɔ̀ /g" \
        | sed "s/ AA / ɑ /g" \
        | sed "s/ AA0 / ɑ /g" \
        | sed "s/ AA1 / ɑ́ /g" \
        | sed "s/ AA2 / ɑ̀ /g" \
        | sed "s/ IY / i /g" \
        | sed "s/ IY0 / i /g" \
        | sed "s/ IY1 / í /g" \
        | sed "s/ IY2 / ì /g" \
        | sed "s/ UW / u /g" \
        | sed "s/ UW0 / u /g" \
        | sed "s/ UW1 / ú /g" \
        | sed "s/ UW2 / ù /g" \
        | sed "s/ EH / e /g" \
        | sed "s/ EH0 / e /g" \
        | sed "s/ EH1 / é /g" \
        | sed "s/ EH2 / è /g" \
        | sed "s/ IH / ɪ /g" \
        | sed "s/ IH0 / ɪ /g" \
        | sed "s/ IH1 / ɪ́ /g" \
        | sed "s/ IH2 / ɪ̀ /g" \
        | sed "s/ UH / ʊ /g" \
        | sed "s/ UH0 / ʊ /g" \
        | sed "s/ UH1 / ʊ́ /g" \
        | sed "s/ UH2 / ʊ̀ /g" \
        | sed "s/ AH / ʌ /g" \
        | sed "s/ AH0 / ə /g" \
        | sed "s/ AH1 / ʌ́ /g" \
        | sed "s/ AH2 / ʌ̀ /g" \
        | sed "s/ AE / æ /g" \
        | sed "s/ AE0 / æ /g" \
        | sed "s/ AE1 / ǽ /g" \
        | sed "s/ AE2 / æ̀ /g" \
        | sed "s/ AX / ə /g" \
        | sed "s/ AX0 / ə /g" \
        | sed "s/ AX1 / ə́ /g" \
        | sed "s/ AX2 / ə̀ /g" \
        | sed "s/ EY / eɪ /g" \
        | sed "s/ EY0 / eɪ /g" \
        | sed "s/ EY1 / éɪ /g" \
        | sed "s/ EY2 / èɪ /g" \
        | sed "s/ AY / aɪ /g" \
        | sed "s/ AY0 / aɪ /g" \
        | sed "s/ AY1 / áɪ /g" \
        | sed "s/ AY2 / àɪ /g" \
        | sed "s/ OW / oʊ /g" \
        | sed "s/ OW0 / oʊ /g" \
        | sed "s/ OW1 / óʊ /g" \
        | sed "s/ OW2 / òʊ /g" \
        | sed "s/ AW / aʊ /g" \
        | sed "s/ AW0 / aʊ /g" \
        | sed "s/ AW1 / áʊ /g" \
        | sed "s/ AW2 / àʊ /g" \
        | sed "s/ OY / ɔɪ /g" \
        | sed "s/ OY0 / ɔɪ /g" \
        | sed "s/ OY1 / ɔ́ɪ /g" \
        | sed "s/ OY2 / ɔ̀ɪ /g" \
        | sed "s/ P / p /g" \
        | sed "s/ B / b /g" \
        | sed "s/ T / t /g" \
        | sed "s/ D / d /g" \
        | sed "s/ K / k /g" \
        | sed "s/ G / g /g" \
        | sed "s/ CH / tʃ /g" \
        | sed "s/ JH / dʒ /g" \
        | sed "s/ F / f /g" \
        | sed "s/ V / v /g" \
        | sed "s/ TH / θ /g" \
        | sed "s/ DH / ð /g" \
        | sed "s/ S / s /g" \
        | sed "s/ Z / z /g" \
        | sed "s/ SH / ʃ /g" \
        | sed "s/ ZH / ʒ /g" \
        | sed "s/ HH / h /g" \
        | sed "s/ M / m /g" \
        | sed "s/ N / n /g" \
        | sed "s/ NG / ŋ /g" \
        | sed "s/ L / l /g" \
        | sed "s/ R / r /g" \
        | sed "s/ ER / ɜr /g" \
        | sed "s/ ER0 / ɜr /g" \
        | sed "s/ ER1 / ɜ́r /g" \
        | sed "s/ ER2 / ɜ̀r /g" \
        | sed "s/ AXR / ər /g" \
        | sed "s/ AXR0 / ər /g" \
        | sed "s/ AXR1 / ə́r /g" \
        | sed "s/ AXR2 / ə̀r /g" \
        | sed "s/ W / w /g" \
        | sed "s/ Y / j /g" \
        | sed "s/ //g" \
        | sed "s/@@@/ /g" \
    >output.txt


cat output.txt \
    | awk '{printf("\"%s\": \"%s\",",$1,$2)}' \
    | sed '1s/^/\{/' \
    | sed '$s/,$/\}/' \
    >output.json 