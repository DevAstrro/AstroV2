if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/DevAstrro/AstroV2.git /AstroV2
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /AstroV2
fi
cd /AstroV2
pip3 install -U -r requirements.txt
echo "Starting AstroV2-Bot...."
python3 bot.py
