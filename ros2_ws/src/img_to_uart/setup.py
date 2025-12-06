from setuptools import find_packages, setup

package_name = 'img_to_uart'

setup(
    name=package_name,
    version='0.0.0',
    packages=find_packages(exclude=['test']),
    data_files=[
        ('share/ament_index/resource_index/packages',
            ['resource/' + package_name]),
        ('share/' + package_name, ['package.xml']),
    ],
    install_requires=['setuptools'],
    zip_safe=True,
    maintainer='dani',
    maintainer_email='danielaguirrelacuna@gmail.com',
    description='TODO: Package description',
    license='TODO: License declaration',
    extras_require={
        'test': [
            'pytest',
        ],
    },
    
    # I have changed this part to match the new file structure
    entry_points={
    'console_scripts': [
        'sender = img_to_uart.uart_sender:main',
    ],
},
)
