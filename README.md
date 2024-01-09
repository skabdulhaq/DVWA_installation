# DVWA Installation Guide

## Prerequisites

Before installing Damn Vulnerable Web Application (DVWA), ensure the following:

- You have a Linux distribution installed, such as Kali, WSL (Windows Subsystem for Linux), or any other Linux distro.
- Git is required for the installation. If not installed, use the following command:

    ```bash
    sudo apt-get install git
    ```

## Installation Steps

1. Open the terminal, and when prompted for the Kali password, provide it.

    ```bash  
    cd ~ && git clone https://github.com/skabdulhaq/DVWA_installation && cd DVWA_installation && chmod +x * && sudo cp start_DVWA.sh /bin/ && cd ~ && rm -rf DVWA_installation && clear && echo $'installation completed successfully\n\n\n\nEnter this command to start DVWA\nstart_DVWA.sh'
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

    ```bash  
    start_DVWA.sh
    ```

    You will see something like this in your terminal then you are ready to go.

    ![image.png](https://imgur.com/a/V4hh44A)

3. DVWA is now running successfully. Access it through <a href="http://localhost:1337/" target="_blank">http://localhost:1337/</a>.

## How to Stop DVWA

You have two options:

- Simply close the terminal where `start_DVWA.sh` is running.
- To stop DVWA manually, go to the terminal running the `start_DVWA.sh` script and press `ctrl+c`.

Now, you've completed the installation and learned how to start and stop DVWA. Happy exploring!
