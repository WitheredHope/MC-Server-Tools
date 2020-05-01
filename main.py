from flask import Flask
from example_vars import *
import time
import os

def getFiles():
    files = []
    entries = os.scandir(modPath)
    for entry in entries:
            files.append(entry.name)
    return(files)

def search(array, string):
    '''searches a list for items that contain a string
    returns 1st result'''
    for items in array:
        if string in items:
            return (items)
    return()

app = Flask(__name__)
versions = []
files=getFiles()
for mods in checkedMods:
    versions.append(search(files,mods))

@app.route("/")
def main():
    return ("""
            We're Currently running {} v{} <br/>
            Updated Mod Versions are: <br/>
            MineColonies - {} <br/>
            Structurize - {} <br/>
        """.format(modPack,packVersion, versions[0], versions[1]))
#@app.route("/debug")
#def debug():
