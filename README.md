# DVWA Installation Guide

## Prerequisites

Before installing Damn Vulnerable Web Application (DVWA), ensure the following:

- You have a Linux distribution installed, such as Kali, WSL (Windows Subsystem for Linux), or any other Linux distro.
- Git is required for the installation. If not installed, use the following command:

    ```bash
    sudo apt-get install git
    ```

Ignore this if you are using `kali`

- If you are using WSL make sure you use WSL2 here are instuctions <a href="https://www.youtube.com/watch?v=OAtcxnNlSic" target="_blank">Updating WSL</a>.

## Installation Steps

1. Open the terminal, and while running this command when prompted for the Kali password, provide it.

    ```bash  
    curl https://raw.githubusercontent.com/skabdulhaq/DVWA_installation/main/setup.sh | sh
    ```

    Pro tip use your own hotspot insted of college wifi :)

    You can see text is running on your terminal be patient setback and relax until you can below message in terminal 

    ```text
    installation completed successfully
    


    Enter this command to start DVWA
    start_DVWA.sh
    ```

    <details>

    <summary>
        Click to see explanation
    </summary>

    This command performs the following steps:

    - Changes to the home directory (`cd ~`).
    - Clones the DVWA installation repository from GitHub (`git clone https://github.com/skabdulhaq/DVWA_installation`).
    - Navigates into the DVWA installation directory (`cd DVWA_installation`).
    - Makes all scripts executable (`chmod +x *`).
    - Copies the `start_DVWA.sh` script to the system's binary directory (`sudo cp start_DVWA.sh /bin/`).
    - Returns to the home directory (`cd ..`).
    - Removes the DVWA installation directory (`rm -rf DVWA_installation`).

    </details>

2. To start DVWA every time, use this command in the terminal:
3. if you are running this for the first time it will require internet 
    ```bash  
    sudo start_DVWA.sh
    ```

    You will see something like this in your terminal then you are ready to go.

    ![image.png](https://i.imgur.com/Z5I9VLu.png)

4. DVWA is now running successfully. Access it through <a href="http://localhost:1337/" target="_blank">http://localhost:1337/</a>.

## How to Stop DVWA

You have two options:

- Simply close the terminal where `start_DVWA.sh` is running.
- To stop DVWA manually, go to the terminal running the `start_DVWA.sh` script and press `ctrl+c`.

Now, you've completed the installation and learned how to start and stop DVWA. Happy exploring!

## Troubleshoot

Run

```bash
sudo dockerd
```

check the error and if it's reated to iptables then use these.

```bash
sudo update-alternatives --set iptables /usr/sbin/iptables-legacy
sudo update-alternatives --set ip6tables /usr/sbin/ip6tables-legacy
```
