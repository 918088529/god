if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Ayush64047/MdiskAdvance /MdiskAdvance 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /MdiskAdvance 
fi
cd /MdiskAdvance 
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
