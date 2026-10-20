from setuptools import setup, find_packages

setup(
    name='apiverve_moonposition',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Moon Position calculates the moon's altitude in the sky for any latitude and longitude coordinates. Provide an optional time of day to determine lunar elevation; paid plans add custom dates, azimuth, and distance.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/moonposition?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
