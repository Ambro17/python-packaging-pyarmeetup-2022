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
python3 -m pip install --upgrade pip build twine wheel
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


## Expected Error While Installing Bad Lib
```
ERROR: Cannot install pyarmeetup2020 and pyarmeetup2020==0.0.2 because these package versions have conflicting dependencies.

The conflict is caused by:
    pyarmeetup2020 0.0.2 depends on Flask>=2.0.2
    elpasado 0.0.4 depends on Flask==1.0.1

To fix this you could try to:
1. loosen the range of package versions you've specified
2. remove package versions to allow pip attempt to solve the dependency conflict

ERROR: ResolutionImpossible: for help visit https://pip.pypa.io/en/latest/topics/dependency-resolution/#dealing-with-dependency-conflicts
```

## With pip 20.2.0
```
ERROR: After October 2020 you may experience errors when installing or updating packages. This is because pip will change the way that it resolves dependency conflicts.

We recommend you use --use-feature=2020-resolver to test your packages with the new resolver before it becomes the default.

elpasado 0.0.7 requires Flask==1.0.1, but you'll have flask 2.0.2 which is incompatible.
```
DO NOT PIN PIP!! Solve the root problem!