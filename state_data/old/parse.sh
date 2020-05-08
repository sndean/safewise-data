name=$(grep -A 2 '#' VA_top.txt | grep '[A-z]')
pop=$(grep 'Population' VA_top.txt | awk '{print $2}')
PC=$(grep 'PC' VA_top.txt | cut -c26- | awk '{gsub("Not available,", "");sum = 0; for (i = 1; i <= NF; i++) sum += $i; sum /= NF; print sum}')
VC=$(grep 'VC' VA_top.txt | cut -c26- | awk '{gsub("Not available,", "");sum = 0; for (i = 1; i <= NF; i++) sum += $i; sum /= NF; print sum}')

paste <(printf "${name[@]}") <(printf "${pop[@]}") <(printf "${VC[@]}") <(printf "${PC[@]}")