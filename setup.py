from setuptools import setup, find_packages
import os

version = '0.001-alpha'

long_description = (
    open('README.txt').read()
    + '\n' +
    'Contributors\n'
    '============\n'
    + '\n' +
    open('CONTRIBUTORS.txt').read()
    + '\n' +
    open('CHANGES.txt').read()
    + '\n')

setup(name='sibci.tda.ugenerator',
      version=version,
      description="actualizador y generador de codigo para tda",
      long_description=long_description,
      # Get more strings from
      # http://pypi.python.org/pypi?%3Aaction=list_classifiers
      classifiers=[
        "Programming Language :: Python",
        ],
      keywords='',
      author='',
      author_email='',
      url='http://svn.plone.org/svn/collective/',
      license='gpl',
      packages=find_packages('src'),
      package_dir = {'': 'src'},
      namespace_packages=['sibci', 'sibci.tda'],
      include_package_data=True,
      zip_safe=False,
      install_requires=[
          'setuptools',
          'templer.core'
          # -*- Extra requirements: -*-
      ],
      entry_points="""
      # -*- Entry points: -*-
      [templer.templer_structure]
      estructura = sibci.tda.ugenerator.estructura:CreaEstructura
      """,
      )
