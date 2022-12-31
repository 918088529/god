if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/stbhai/MovieStorageWalaBOT /MovieStorageWala
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /MovieStorageWala
fi
cd /MovieStorageWala
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
