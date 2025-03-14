The oximachinerunner does not generate the oxidation state of transition metals when we installed aiida2.X and oximachinerrunner.
I tried with installing python3.8, 3.9 and 3.10 for installed the aiida-core~=2.0 and oximachinerunner, no matter I upgrade or downgrade the packages, aiida and oximachinerunner can not be used at the same time. 
I followed the aiida-lsmo and oximachinerunner and found their first python versions are recommanded with python3.7. So I decided t come back to follow the installation instruction. 
It works finally with aiida-core 1.6.9 and oximachinerunner 1.4.0+3.ga405214 and oximachine-featurizer 0.3.2. Before I will see any stable aiida2.X with oximachinerunner, I will use aiida1.X.

Installation process:

conda create -n py37 python=3.7
conda activate py37

Install oximachinerunner firstly:
pip install git+https://github.com/kjappelbaum/oximachinerunner.git

test oximachinerunner runs well by testing a MOF cif file: 
from oximachinerunner import OximachineRunner
runner = OximachineRunner()
runner.run_oximachine('XX.cif')

After checking it runs, then install aiida-lsmo packages by: 
git clone https://github.com/lsmo-epfl/aiida-lsmo .
cd aiida-lsmo
pip install -e .
