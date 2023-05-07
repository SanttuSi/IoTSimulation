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
This project is an example of how Vagrant could be used to test IoT based blockchain applications. The project can be used to create a variable amount of simulated IoT devices in a private ethereum network. These IoT devices are by default configured to install and run the Geth client in a private blockchain.
Here is a nutshell of what the project does:
* Generate ethereum private keys for each node
* Generate wallet addresses based on these keys
* Generate genesis block (using ethhash) which has funds for each of these wallets
* Use vagrant to generate IoT devices with VirtualBox that run the Geth  client on the private chain



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
* Vagrant
  ```sh
  curl -O https://releases.hashicorp.com/vagrant/2.3.4/vagrant_2.3.4_x86_64.deb
  sudo apt install ./vagrant_2.3.4_x86_64.deb
  vagrant plugin install vagrant-vbguest
  ```
* Python deps
  ```sh
  pip install eth-keys
  ```

<!-- USAGE EXAMPLES -->
## Usage

TODO

<p align="right">(<a href="#readme-top">back to top</a>)</p>






<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



