if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/918088529/god /god 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /god
fi
cd /god 
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
