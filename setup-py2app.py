"""
This is a setup.py script generated by py2applet

Usage:
    python setup.py py2app
"""

from setuptools import setup

APP = ['greenflare.py']
DATA_FILES = []
OPTIONS = {
	'iconfile': 'greenflare-icon-64x64.icns',
	'plist': {
		'CFBundleIconFile': 'greenflare-icon-64x64.icns',
		'CFBundleIdentifier': 'io.greenflare.crawler',
		'CFBundleShortVersionString': '0.62.0'
		}
	}

setup(
    app=APP,
    data_files=DATA_FILES,
    options={'py2app': OPTIONS},
    setup_requires=['py2app'],
)