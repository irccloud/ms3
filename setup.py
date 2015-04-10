from distutils.core import setup
import os
 
setup(
    name='ms3',
    version = os.environ.get('RELEASE_VERSION', '99.0.0.dev0'),
    author='Skoobe',
    packages=['ms3'],
    url='https://github.com/skoobe/ms3',
    description='A fake s3 server for testing',
    install_requires=[
        "tornado == 2.4",
        "lxml",
    ],
 )
