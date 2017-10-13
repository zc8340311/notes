module purge
module add slurm cm-ml-pythondeps cudnn openblas/dynamic cuda80/toolkit hdf5_18
echo 'module load slurm cm-ml-pythondeps cudnn openblas/dynamic cuda80/toolkit hdf5_18'>> ~/.bashrc

pip install --user --upgrade pip
pip install --user --upgrade virtualenv
virtualenv env
source env/bin/activate
pip install --upgrade pip
pip install jupyter -I
pip install tensorflow-gpu==1.2.0

