from distutils.core import setup
 
setup(
    name='ms3',
    version='0.1.0',
    author='Skoobe',
    packages=['ms3'],
    url='https://github.com/skoobe/ms3',
    description='A fake s3 server for testing',
    install_requires=[
        "tornado == 2.4",
        "lxml",
    ],
 )
