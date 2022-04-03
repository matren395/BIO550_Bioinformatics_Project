#!/usr/bin/perl

$inputFasta = $ARGV[0]; # no usage statement, usage covered in PDF report 
$outputName = $ARGV[1];

system("perl ~/projectSymLinkT02/scripts/runTaxonomizedBLAST.pl --threads 8 -p blastn -a megablast -d /media/Data_1/NCBI/REPGENOMES/ref_prok_rep_genomes --query $inputFasta --evalue 1e-5 --culling 5");
# system("perl ~/projectSymLinkT02/scripts/parseTaxonomizedBLAST.pl --blast *blastn.6 -f $inputFasta --name Escherichia \"Escherichia\" --evalue 1e-50 --output $outputName -v on");
system("perl ~/projectSymLinkT02/scripts/parseTaxonomizedBLAST.pl -b *blastn.6 -f $inputFasta -n Escherichia \"Escherichia\" --evalue 1e-50 --output $outputName -v on");
