echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/g-r-e-e-n/greenvideoplayer /greenvideoplayer
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/g-r-e-e-n/greenvideoplayer -b $BRANCH /greenvideoplayer
fi
cd /greenvideoplayer
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
