#!/bin/tcsh
cat MultileptonEventList.txt | awk '{print $1" "$3" "$2}' > allCata/MultileptonEventList.txt
cat B2G_12_019_ele_data.txt | grep '*' | grep -v 'Num' | awk -F "*" '{print $3" "$4" "$5}' > allCata/B2G_12_019_data.txt
cat B2G_12_019_mu_data.txt | grep '*' | grep -v 'Num' | awk -F "*" '{print $3" "$4" "$5}' >> allCata/B2G_12_019_data.txt
cat SS2L_Event_lists.txt | awk -F "=" '{print $2" "$3" "$4}' | awk '{print $1" "$4" "$7}' > allCata/SS2L_Event_lists.txt
