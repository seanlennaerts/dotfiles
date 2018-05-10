1. press <kbd>windows-key</kbd> + <kbd>r</kbd> and type `winver`. Hopefully your build is greater than `OS Build 16215`!
2. Install Ubuntu with this link: https://www.microsoft.com/store/p/ubuntu/9nblggh4msv6
3. If that doesn't work then you might need to do the following for it to show up: 

    press <kbd>windows-key</kbd> + <kbd>x</kbd> and click on `Windows PowerShell (admin)`. Then run the following command and restart when prompted:
    ```
    Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux. 
    ```
    Then try step 2 agian.
4. Once Ubuntu finishes installing you'll be asked to create a UNIX user account so just choose any username and password :) Once that's done you should be in an ugly bash shell! Stay here because we will install ZSH.
5. You may know this but apt-get is the Ubuntu equivalent of brew. So use `sudo apt-get install zsh` to install ZSH. If this doesn't work you might need to update the packages apt-get knows about by running:
    ```
    sudo apt-get update
    sudo apt-get upgrade
    ```
6. Make zsh your default shell by running `sudo chsh -s $(which zsh)` 
7. Now you can optionaly install ohmyzsh:
    ```
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    ```
8. Time to leave the ugly bash shell. Open hyper and click in the corner > Edit > Preferences. Edit this text file where the **shell** and **shellArgs** options are:
    ```
    shell: 'C:\\Window\\System32\\wsl.exe'
    shellArgs: [],
    ```
    You can comment out the default settings instead of deleting them if you want (that's what I did).
9. That should be it!