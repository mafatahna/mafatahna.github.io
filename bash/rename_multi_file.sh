

for file in  Scorpion\ Season\ 1\ Episode\ *.mp4
do
        mv -i "${file}" "${file/Scorpion\ Season\ 1\ Episode/Scorpion\ Season\ 1}"
done
