# Pyar Meetup 2022

> This package was created as a demo following this guide https://packaging.python.org/en/latest/tutorials/packaging-projects/ on 8 Feb 2022

## Instructions
0. Create an activate a virtualenv
1. 
```
python3 -m pip install --upgrade pip   # Install project dependencies
python3 -m pip install --upgrade build # Build wheels and sdist from source files
python3 -m pip install --upgrade twine # Upload wheels and sdists to pypi
python3 -m pip install --upgrade wheel # To be able to install from wheels instead of sdists
#or just
python3 -m pip install --upgrade pip build twine wheel wheel
```
2. Build wheel and sdist (zip of source tree) from source
```
* Creating venv isolated environment...
* Installing packages in isolated environment... (setuptools>=42, wheel)
* Getting dependencies for sdist...
* Building sdist...
* Building wheel from sdist
* Creating venv isolated environment...
* Installing packages in isolated environment... (setuptools>=42, wheel)
* Getting dependencies for wheel...
* Installing packages in isolated environment... (wheel)
* Building wheel...
Successfully built pyarmeetup2020-0.0.1.tar.gz and pyarmeetup2020_ambro17-0.0.1-py3-none-any.whl
```
And then check with
```
$ ls dist/
pyarmeetup2020-0.0.1.tar.gz           pyarmeetup2020-0.0.1-py3-none-any.whl
```
3. Upload wheel and sdist to pypi
```
twine upload --repository testpypi dist/*
```
4. Test it
Run `python` and then
```python
>>> from pyarmeetup2020 import example
>>> example.should_i_pin_pip()
'Probably not'
```
