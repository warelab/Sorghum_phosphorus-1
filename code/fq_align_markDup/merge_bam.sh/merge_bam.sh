#!/bin/bash
# specify BASH shell
#$ -S /bin/bash
#$ -N merge_bam.Sorg
# run job in the current working directory where qsub is executed from
#$ -cwd
# specify that the job requires 16GB of memory
#$ -l m_mem_free=4G
#$ -pe threads 8
# help scheduling if you know how long job will run (here: 2 hours, 30 min, zero secs)
#$ -l h_rt=30:30:0
#$ -e /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/err/merge_bam/merge_bam.err2
#$ -o /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/out/merge_bam/merge_bam.out2

cd /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/sorted_bam_markDup

#samtools merge -f G3_noP_K27me3_pooled_markDup.sorted.bam G3_noP_K27me3_rep1_markDup.sorted.bam G3_noP_K27me3_rep2_markDup.sorted.bam
#
#samtools merge -f G3_noP_inp_pooled_markDup.sorted.bam G3_noP_inp_rep1_markDup.sorted.bam G3_noP_inp_rep2_markDup.sorted.bam
#
#samtools merge -f G3_noP_K4me3_pooled_markDup.sorted.bam G3_noP_K4me3_rep1_markDup.sorted.bam G3_noP_K4me3_rep2_markDup.sorted.bam
#
#samtools merge -f G3_noP_H3_pooled_markDup.sorted.bam G3_noP_H3_rep1_markDup.sorted.bam G3_noP_H3_rep2_markDup.sorted.bam
#
#
#
#samtools merge -f G3_P_K27me3_pooled_markDup.sorted.bam G3_P_K27me3_rep1_markDup.sorted.bam G3_P_K27me3_rep2_markDup.sorted.bam
#
#samtools merge -f G3_P_inp_pooled_markDup.sorted.bam G3_P_inp_rep1_markDup.sorted.bam G3_P_inp_rep2_markDup.sorted.bam
#
#samtools merge -f G3_P_K4me3_pooled_markDup.sorted.bam G3_P_K4me3_rep1_markDup.sorted.bam G3_P_K4me3_rep2_markDup.sorted.bam
#
#samtools merge -f G3_P_H3_pooled_markDup.sorted.bam G3_P_H3_rep1_markDup.sorted.bam G3_P_H3_rep2_markDup.sorted.bam


samtools index G3_noP_K27me3_pooled_markDup.sorted.bam
samtools index G3_noP_K4me3_pooled_markDup.sorted.bam
samtools index G3_noP_H3_pooled_markDup.sorted.bam
samtools index G3_P_K27me3_pooled_markDup.sorted.bam
samtools index G3_P_K4me3_pooled_markDup.sorted.bam
samtools index G3_P_H3_pooled_markDup.sorted.bam
