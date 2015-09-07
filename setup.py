#!/usr/bin/env python
# -*- coding: utf-8 -*-

from setuptools import setup, find_packages

setup(
    name='pip_test_library',
    version='v'+open('VERSION').read().strip(),
    description='A significant part of the "Alytics" project.',
    author='Andrey Shetov',
    author_email='ashetov@rtcsoftware.ru',
    packages=find_packages(),
    install_requires=open('requirements.txt').read().split()
)
