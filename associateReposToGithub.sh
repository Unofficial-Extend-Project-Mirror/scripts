#!/bin/sh

GITHUB_ACCOUNT_NAME=Unofficial-Extend-Project-Mirror

#Git based:
for gitFolder in \
  openfoam-extend-DensityBasedTurbo.git \
  openfoam-extend-OpenFOAM-1.6-ext.git \
  openfoam-extend-ShipHydroSIG.git \
  openfoam-extend-UsbStickCreation.git
do

  cd $gitFolder
  echo Establishing git connection with $gitFolder
  git remote add github git@github.com:${GITHUB_ACCOUNT_NAME}/${gitFolder}
  git push github --mirror 
  cd ..

done


#SVN based:
for svnFolder in \
  openfoam-extend-Core-OpenFOAM-1.5-dev \
  openfoam-extend-Breeder1.5-OSIG-TurboMachinery \
  openfoam-extend-Breeder1.5-OSIG-Turbulence \
  openfoam-extend-Breeder1.5-other-testHarness \
  openfoam-extend-Breeder1.5-libraries-alternateChemistryModels \
  openfoam-extend-Breeder1.5-libraries-canteraThermosChemistry \
  openfoam-extend-Breeder1.5-libraries-equationReaderExtension \
  openfoam-extend-Breeder1.5-libraries-multiSolverExtension \
  openfoam-extend-Breeder1.5-solvers-AlternateChemistry \
  openfoam-extend-Breeder1.5-solvers-other-solidParticleFoam \
  openfoam-extend-Breeder1.5-solvers-other-IcoLagrangianFoam \
  openfoam-extend-Breeder1.5-solvers-other-IcoStructFoam \
  openfoam-extend-Breeder1.5-utilities-parallelProcessing-WriteDecomposition \
  openfoam-extend-Breeder1.5-utilities-mesh-manipulation-MakeAxialMesh \
  openfoam-extend-Breeder1.5-utilities-preProcessing-simpleViewer_1.6 \
  openfoam-extend-Breeder1.5-utilities-preProcessing-simpleViewer \
  openfoam-extend-Breeder1.6-OSIG-Turbulence \
  openfoam-extend-Breeder1.6-OSIG-TurboMachinery \
  openfoam-extend-Breeder1.6-libraries-IOReferencerObject \
  openfoam-extend-Breeder1.6-libraries-equationReaderExtension \
  openfoam-extend-Breeder1.6-other-patchMacOSX \
  openfoam-extend-Breeder1.6-other-waves2Foam \
  openfoam-extend-Breeder1.6-shipHydrodynamicIG \
  openfoam-extend-Breeder1.6-utilities-mesh-manipulation-MakeAxialMesh \
  openfoam-extend-Breeder1.7-libraries-swak4Foam \
  openfoam-extend-Breeder2.0-OSIG-TurboMachinery \
  openfoam-extend-Breeder2.0-libraries-swak4Foam \
  openfoam-extend-Breeder2.0-solvers-other-solidParticleFoam \
  openfoam-extend-Breeder2.0-utilities-mesh-manipulation-MakeAxialMesh 
do

  cd $svnFolder
  echo Establishing git connection with $svnFolder
  git remote add github git@github.com:${GITHUB_ACCOUNT_NAME}/${svnFolder}.git
  git push github
  cd ..

done
