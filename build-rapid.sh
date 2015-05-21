
#  gather songs
cat ./songs/отрядные/*.tex > OTRYAD_SONGS.txt 
cat ./songs/сачок/*.tex > SOCKO_SONGS.txt 
cat ./songs/лагерные/*.tex > CAMP_SONGS.txt 
cat ./songs/всеми\ любимые/*.tex > LOVE_SONGS.txt 


#  gen pdf
lilypond-book --pdf book.lytex
pdflatex book.tex




# clean
shopt -s extglob
rm -rf !(book.lytex|build.sh|songs|img|book.pdf|conv.sh|conv|build-rapid.sh|dependencies)

