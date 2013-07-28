#!/bin/sh
#
#     This shell script is free software: you can redistribute it and/or modify
#     it under the terms of the GNU General Public License as published by
#     the Free Software Foundation, either version 3 of the License, or
#     (at your option) any later version.
# 
#     This program is distributed in the hope that it will be useful,
#     but WITHOUT ANY WARRANTY; without even the implied warranty of
#     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#     GNU General Public License for more details.
# 
#     You should have received a copy of the GNU General Public License
#     along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
#   For more information, visit: https://github.com/Unofficial-Extend-Project-Mirror/scripts
#
#   Author(s):
#     Bruno Santos <wyldckat@github>
#

#Git based:
for gitFolder in \
  openfoam-extend-DensityBasedTurbo.git \
  openfoam-extend-OpenFOAM-1.6-ext.git \
  openfoam-extend-ShipHydroSIG.git \
  openfoam-extend-UsbStickCreation.git
do

  if [ -d $gitFolder ]; then
    cd $gitFolder
    echo Updating repo $gitFolder to package within the limit of 20M
    git config pack.packSizeLimit 20M
    git gc
    cd ..
  fi

done


#SVN based:
for svnFolder in \
  openfoam-extend-Core-OpenFOAM-1.5-dev \
  openfoam-extend-Breeder-other-scripting-PyFoam \
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

  if [ -d $svnFolder ]; then
    cd $svnFolder
    echo Updating repo $svnFolder to package within the limit of 20M
    git config pack.packSizeLimit 20M
    git gc
    cd ..
  fi

done

