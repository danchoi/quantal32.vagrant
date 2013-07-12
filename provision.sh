echo "Installing build-essential vi etc"
apt-get update >/dev/null 2>&1
apt-get install -y build-essential haskell-platform
cabal update
cabal install cabal-dev
sudo apt-get -y install mysql-client mysql-server-5.5
sudo apt-get -y install postgresql postgresql-contrib

#  # Setup the Postgres user
#  $ sudo passwd -d postgres
#  $ sudo su postgres -c passwd    # Enter new password
#  $ su postgres -c psql template1
#  > ALTER USER postgres WITH PASSWORD '<PASSWORD>';
#  > \q
#  
#  # Create a Postgres user matching your Linux username & password. These steps are
#  # for convenience. It's annoying to always access psql via the Postgres user.
#  $ sudo -u postgres createuser -P <YOUR_USERNAME>
#  # Enter password for new role: <PASSWORD>
#  # Shall the new role be a superuser? (y/n) y
#  $ createdb mjs7231 --owner=mjs7231
#  
#  # When creating new Postgres users, use the following
#  $ createuser -P <USERNAME>
#  # Enter password for new role: <PASSWORD>
#  # Shall the new role be a superuser? (y/n) n
#  # Shall the new role be allowed to create databases? (y/n) n
#  # Shall the new role be allowed to create more new roles? (y/n) n
#  $ createdb <DBNAME> --owner=<USERNAME>


# TODO see postfix part http://pushingkarma.com/notebook/kickstarting-linode-server/


