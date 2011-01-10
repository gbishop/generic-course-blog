#!/home/gb/bin/python2.6

# starts running in the directory being served

import cgi
import cgitb
import os
import json
import sys
from subprocess import check_call
from shutil import copytree

cgitb.enable()#display=0, logdir='/home/gb/tmp')

print "Content-Type: text/html"     # HTML is following
print                               # blank line, end of headers

sys.stdout.flush()

#form = cgi.FieldStorage()
#payload = json.loads(form['payload'].value.decode('utf-8'))

#if payload['repository']['owner']['name'] != 'gbishop':
#    sys.exit(0)

os.chdir("${bf.config.site.git}")
check_call(['/home/gb/bin/git', 'pull', 'origin', '${bf.config.site.branch}'])
check_call(['/home/gb/bin/blogofile', 'build'])
for f in [ 'updateSite.cgi', 'searchIndex.cgi' ]:
    os.chmod(os.path.join('_site', f), 0555)
check_call(['/home/gb/bin/python2.6', 'buildIndex.py'])
copytree('_site', "${bf.config.site.dir}")

print 'ok'
