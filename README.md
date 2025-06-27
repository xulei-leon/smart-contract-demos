
# Smart Contract Learning
Building Smart Contract demos using Solidity and Foundry. 


## Setup and Installation

1. Build Docker Image:
    ```bash
    docker build -t foundry-dev:latest .
    ```

## Running the Application

1. Start the Service:
    ```bash
    docker run -it --rm --name foundry-env -v ".:/app" -p 8545:8545 -p 3000:3000 foundry-dev:latest 
    ```

2. VVerify Foundry version
    ```
    root@bf42276ba4e6:/app# forge --version
    forge Version: 1.2.3-stable
    Commit SHA: a813a2cee7dd4926e7c56fd8a785b54f32e0d10f        
    Build Timestamp: 2025-06-08T15:42:40.147013149Z (1749397360)
    Build Profile: maxperf
    root@bf42276ba4e6:/app# cast --version
    cast Version: 1.2.3-stable
    Commit SHA: a813a2cee7dd4926e7c56fd8a785b54f32e0d10f        
    Build Timestamp: 2025-06-08T15:42:40.147013149Z (1749397360)
    Build Profile: maxperf
    root@bf42276ba4e6:/app# anvil --version
    anvil Version: 1.2.3-stable
    Commit SHA: a813a2cee7dd4926e7c56fd8a785b54f32e0d10f        
    Build Timestamp: 2025-06-08T15:42:40.147013149Z (1749397360)
    Build Profile: maxperf
    ```

3. Create and run demo 
    ```bash
    mkdir -p /app/var
    cd /app/var
    forge init my_project
    cd my_project
    forge test -vvv
    ```

4. Start local test chain
    ```bash
    anvil --host 0.0.0.0
    ```

 ## Create applicaton

 1. Create project
    ```bash
    mkdir -p /app/project
    cd /app/project
    forge init my_dapp
    cd my_dapp
    ```

2. Edit contract file src/Counter.sol

3. Edit test file test/Counter.t.sol
