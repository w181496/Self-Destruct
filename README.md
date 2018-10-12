# Self Destruct

## What's this

It is a simple script to prevent someone accessing your secret file.

If someone try to access some secret file, this script will delete all other secret files.

## Requirement

You need to install inotify-tools first.

## Usage

- Directly run
    - `./run.sh fake_secret real_secret`
- Crontab
    - `* * * * * /home/kaibro/run.sh /home/kaibro/fake_secret /home/kaibro/real_secret`

