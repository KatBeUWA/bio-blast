#!/bin/bash


  573  makeblastdb -in zebrafish.1.protein.faa -dbtype prot
  574  blastp -query mm-first.fa -db zebrafish.1.protein.faa
  575  blastp -query mm-first.fa -db zebrafish.1.protein.faa -out first.x.zebrafish.txt

  576  head -498 mouse.1.protein.faa  > mm-second.fa
  577  blastp -query mm-second.fa -db zebrafish.1.protein.faa -out mm-second.x.zebrafish.txt
  580  blastp -query mm-second.fa -db zebrafish.1.protein.faa -out mm-second.x.zebrafish.tsv -outfmt 6
