
#  gather songs
cat ./songs/отрядные/*.tex > OTRYAD_SONGS.txt 
cat ./songs/сачок/*.tex > SOCKO_SONGS.txt 
cat ./songs/лагерные/*.tex > CAMP_SONGS.txt 
cat ./songs/всеми\ любимые/*.tex > LOVE_SONGS.txt 


#  gen pdf
lilypond-book --pdf book.lytex
pdflatex book.tex


# gen index-files
songidx titlfile1.sxd titlfile1.sbx
songidx authfile1.sxd authfile1.sbx

songidx titlfile2.sxd titlfile2.sbx
songidx authfile2.sxd authfile2.sbx

songidx titlfile3.sxd titlfile3.sbx
songidx authfile3.sxd authfile3.sbx

songidx titlfile4.sxd titlfile4.sbx
songidx authfile4.sxd authfile4.sbx

# gen pdf (for indexes)
lilypond-book --pdf book.lytex
pdflatex book.tex

# convert a4 -> a5
pdflatex ./conv/conv.tex
mv conv.pdf book-a5.pdf

# clean
shopt -s extglob
rm -rf !(book.lytex|build.sh|songs|img|book.pdf|conv.sh|conv|book-a5.pdf|build-rapid.sh)

