<!-- Improved compatibility of back to top link: See: https://github.com/othneildrew/Best-README-Template/pull/73 -->
<a name="readme-top"></a>



<!-- ABOUT THIS EXAMPLE -->
## About This Example
This branch is an example of how the project could be used to test blockchain-enabled IoT applications.
The project can be used to create a variable amount of simulated IoT devices in a private ethereum network.
These IoT devices are by default configured to install and run the Geth client in a private blockchain.
Here is a nutshell of what the project does:
* Generate ethereum private keys for each node
* Generate wallet addresses based on these keys
* Generate genesis block (using ethhash) which has funds for each of these wallets
* Use vagrant to generate IoT devices with VirtualBox that run the Geth client on the private chain
* Run a test that uses geth on the devices


<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- GETTING STARTED -->
## Getting Started

This section shows how to install the project on Ubuntu 20.04.6.

### Prerequisites
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


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- USAGE EXAMPLES -->
## Usage
In this example, the tool is used to configure 5 virtual IoT devices, a bootnode and a sensor node.
These VMs run the custom Ethereum chain trough the clients. Then a test is conducted on the environment creation.
The steps to reproduce tests are as follows:


Step 1:
  Install the previously mentioned dependencies.
  
Step 2:
  Clone the repository
  ```sh
  git clone https://github.com/SanttuSi/IoTSimulation.git
  ```
step 3: Generate the required secrets
  ```sh
  cd IoTSimulation/
  cd secrets/
  ./genSecrets.sh -n 5
  cd ..
  ```
step 4: 
  Run the tool
  ```sh
  cd IoTSimulation/
  ./startup.sh -n 5
  ```
step 5: Run the testing script 
  ```sh
  mv testEnv.sh ../
  cd ..
  ./testEnv.sh
  ```

<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



