#!/bin/bash

cd /opt/regluit
source ENV/bin/activate
export DJANGO_SETTINGS_MODULE=regluit.settings.please

# sysadmin/drop_tables.sh | django-admin.py dbshell
# cat test/campaign_starter.sql | django-admin.py dbshell

# django-admin.py makemigrations
# django-admin.py migrate  --fake-initial --noinput
# load Pride and Prejudice
echo -e "django-admin.py shell_plus << EOF\nfrom regluit.core import bookloader; w = bookloader.add_by_isbn('9781909621657')\nEOF\n" | sh
