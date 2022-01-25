if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Rzeeo/daddy.git /daddy
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /daddy
fi
cd /daddy
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
