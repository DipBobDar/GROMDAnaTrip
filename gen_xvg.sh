#!/bin/bash

#echo '10 0' | gmx energy -f em.edr -o potentialIII.xvg -xvg none
#echo '16 0' | gmx energy -f nvt.edr -o temperatureIII.xvg -xvg none
#echo '18 0' | gmx energy -f npt.edr -o pressureIII.xvg -xvg none
#echo '24 0' | gmx energy -f npt.edr -o densityIII.xvg -xvg none

# echo '1 0' | gmx trjconv -s MD3.tpr -f MD3.xtc -o MD3_noPBC.xtc -pbc mol -center
echo '1 1' | gmx rms -s MD3.tpr -f MD3_noPBC.xtc -o rmsd_proteinIII.xvg -xvg none
echo '2 2' | gmx rms -s MD3.tpr -f MD3_noPBC.xtc -o rmsd_protein-HIII.xvg -xvg none
#echo '3 3' | gmx rms -s MD3.tpr -f MD3_noPBC.xtc -o rmsd_CAIII.xvg -xvg none
echo '4 4' | gmx rms -s MD3.tpr -f MD3_noPBC.xtc -o rmsd_bbone_runIII.xvg -xvg none
#echo '5 5' | gmx rms -s MD3.tpr -f MD3_noPBC.xtc -o rmsd_mainChainIII.xvg -xvg none
#echo '6 6' | gmx rms -s MD3.tpr -f MD3_noPBC.xtc -o rmsd_mainChain+CbIII.xvg -xvg none
#echo '7 7' | gmx rms -s MD3.tpr -f MD3_noPBC.xtc -o rmsd_mainChain+HIII.xvg -xvg none
#echo '8 8' | gmx rms -s MD3.tpr -f MD3_noPBC.xtc -o rmsd_sideChainIII.xvg -xvg none
#echo '8 8' | gmx rms -s MD3.tpr -f MD3_noPBC.xtc -o rmsd_sideChainIII.xvg -xvg none
#echo '9 9' | gmx rms -s MD3.tpr -f MD3_noPBC.xtc -o rmsd_sideChain+HIII.xvg -xvg none -res
echo '1' | gmx gyrate -s MD3.tpr -f MD3_noPBC.xtc -o Rg_runIII.xvg -xvg none
echo '4' | gmx rmsf -s MD3.tpr -f MD3_noPBC.xtc -o rmsf_runIII.xvg -res -xvg none

# echo '1 0' | gmx trjconv -s MD2.tpr -f MD2.xtc -o MD2_noPBC.xtc -pbc mol -center
echo '1 1' | gmx rms -s MD2.tpr -f MD2_noPBC.xtc -o rmsd_proteinII.xvg -xvg none
echo '2 2' | gmx rms -s MD2.tpr -f MD2_noPBC.xtc -o rmsd_protein-HII.xvg -xvg none
#echo '3 3' | gmx rms -s MD2.tpr -f MD2_noPBC.xtc -o rmsd_CAII.xvg -xvg none
echo '4 4' | gmx rms -s MD2.tpr -f MD2_noPBC.xtc -o rmsd_bbone_runII.xvg -xvg none
#echo '5 5' | gmx rms -s MD2.tpr -f MD2_noPBC.xtc -o rmsd_mainChainII.xvg -xvg none
#echo '6 6' | gmx rms -s MD2.tpr -f MD2_noPBC.xtc -o rmsd_mainChain+CbII.xvg -xvg none
#echo '7 7' | gmx rms -s MD2.tpr -f MD2_noPBC.xtc -o rmsd_mainChain+HII.xvg -xvg none
#echo '8 8' | gmx rms -s MD2.tpr -f MD2_noPBC.xtc -o rmsd_sideChainII.xvg -xvg none
#echo '8 8' | gmx rms -s MD2.tpr -f MD2_noPBC.xtc -o rmsd_sideChainII.xvg -xvg none
#echo '9 9' | gmx rms -s MD2.tpr -f MD2_noPBC.xtc -o rmsd_sideChain+HII.xvg -xvg none -res
echo '1' | gmx gyrate -s MD2.tpr -f MD2_noPBC.xtc -o Rg_runII.xvg -xvg none
echo '4' | gmx rmsf -s MD2.tpr -f MD2_noPBC.xtc -o rmsf_runII.xvg -res -xvg none

# echo '1 0' | gmx trjconv -s MD.tpr -f MD.xtc -o MDnoPBC.xtc -pbc mol -center
echo '1 1' | gmx rms -s MD.tpr -f MDnoPBC.xtc -o rmsd_proteinI.xvg -xvg none
echo '2 2' | gmx rms -s MD.tpr -f MDnoPBC.xtc -o rmsd_protein-HI.xvg -xvg none
#echo '3 3' | gmx rms -s MD.tpr -f MDnoPBC.xtc -o rmsd_CAI.xvg -xvg none
echo '4 4' | gmx rms -s MD.tpr -f MDnoPBC.xtc -o rmsd_bbone_runI.xvg -xvg none
#echo '5 5' | gmx rms -s MD.tpr -f MDnoPBC.xtc -o rmsd_mainChainI.xvg -xvg none
#echo '6 6' | gmx rms -s MD.tpr -f MDnoPBC.xtc -o rmsd_mainChain+CbI.xvg -xvg none
#echo '7 7' | gmx rms -s MD.tpr -f MDnoPBC.xtc -o rmsd_mainChain+HI.xvg -xvg none
#echo '8 8' | gmx rms -s MD.tpr -f MDnoPBC.xtc -o rmsd_sideChainI.xvg -xvg none
#echo '8 8' | gmx rms -s MD.tpr -f MDnoPBC.xtc -o rmsd_sideChainI.xvg -xvg none
#echo '9 9' | gmx rms -s MD.tpr -f MDnoPBC.xtc -o rmsd_sideChain+HI.xvg -xvg none -res
echo '1' | gmx gyrate -s MD.tpr -f MDnoPBC.xtc -o Rg_runI.xvg -xvg none
echo '4' | gmx rmsf -s MD.tpr -f MDnoPBC.xtc -o rmsf_runI.xvg -res -xvg none

mkdir analysis
mv *.xvg analysis
