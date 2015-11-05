# Taikoz

**Set environmental variables**

**Figaro**

Run this to configure the ENV variables
```bundle exec figaro heroku:set -e production --app taikoz```

**Casein**

To add a user through the command line run ```heroku run rake casein:users:create_admin email=??? password=??? --app taikoz```

Use this to set the initial user so you can log in.

**Delayed Job**

start the worker. ```heroku run rake jobs:work```
