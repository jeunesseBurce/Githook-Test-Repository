#!/usr/bin/python
# Above declaration will be used for Linux platform and will be ignored in Windows platform

# import python modules
import subprocess,
       humanhash;


# print last commit in git
print "Last commit in Git:"
print humanhash.humanize(
    subprocess.check_output(['git','rev-parse','HEAD'])
    )

print "Commit head: "


    
