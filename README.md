<!-- Improved compatibility of back to top link: See: https://github.com/othneildrew/Best-README-Template/pull/73 -->
<a name="readme-top"></a>







<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project
This project is a tool that could be used to test blockchain-enabled IoT applications. The project can be used to create a variable amount of simulated IoT devices. These IoT devices run Ubuntu by default and have 1GB of ram, with the CPU executioncap set to 10%. The paramters of the devices are configurable.
Here is a nutshell of what the tool does:
* Download and ubdate ubuntu/bionic64 and then package it to a base box in VirtualBox
* Generate a Vagrantfile based on the template files that are provided by the developer
* Use vagrant to generate IoT devices based on this generated Vagrantfile


<p align="right">(<a href="#readme-top">back to top</a>)</p>



### Built With

The project was built and tested with the following programs and versions

* Ubuntu 20.04.6
* Vagrant 2.3.4
* VirtualBox 7.0.4
* Python 3.8.10
* OpenSSL 1.1.1f

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- GETTING STARTED -->
## Getting Started

This section shows how to install the project on Ubuntu 20.04.6.

### Prerequisites and installation
Before installing some programs need to be installed.

* VirtualBox
  ```sh
  sudo apt-get install virtualbox
  ```
* Vagrant 2.3.2
  ```sh
  wget https://releases.hashicorp.com/vagrant/2.3.2/vagrant_2.3.2-1_amd64.deb
  sudo apt install ./vagrant_2.3.2-1_amd64.deb
  vagrant plugin install vagrant-vbguest
  ```
* Pip ( Used by the tests in the test branches)
  ```sh
  sudo apt install pip
  ```
* Python deps ( Used by the tests in the test branches)
  ```sh
  pip install eth-keys eth-hash[pycryptodome]
  ```

<!-- USAGE EXAMPLES -->
## Usage
In this example, the tool is used to configure 5 virtual IoT devices.
Other examples, such as running a blockchain enabled IoT application with the tool are provided on the validation test branches.

Step 1:
  Install the previously mentioned dependencies.
  
Step 2:
  Clone the repository:
  ```
  git clone https://github.com/SanttuSi/IoTSimulation.git
  ```
step 3:
  Run the tool:
  ```
  cd IoTSimulation/
  ./startup.sh -n 5
  ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>






<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



