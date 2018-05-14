# WSL

## Initial setup
1. press <kbd>windows-key</kbd> + <kbd>r</kbd> and type `winver`. Hopefully your build is greater than `OS Build 16215`!
2. Install Ubuntu with this link: https://www.microsoft.com/store/p/ubuntu/9nblggh4msv6
3. If that doesn't work then you might need to do the following for it to show up: 

    press <kbd>windows-key</kbd> + <kbd>x</kbd> and click on `Windows PowerShell (admin)`. Then run the following command and restart when prompted:
    ```
    Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux. 
    ```
    Then try step 2 agian.
4. Once Ubuntu finishes installing you'll be asked to create a UNIX user account so just choose any username and password :smiley: Once that's done you should be in an ugly bash shell! Stay here because we will install ZSH.
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

## Next steps
1. To add the `subl` command you can add the following line to your ~/.zshrc file:
    ```
    alias subl='"/mnt/c/Program Files/Sublime Text 3/subl.exe"'
    ```
    You can do the same thing with any other editor you want to open from the command line. Just point an alias to the executable (.exe) somewhere in Program Files.
    
    (Also I just learned this but by putting the double quotes inside the single quotes you don't have the escape the spaces in the path with backslashes.)

    **IMPORTANT:** Don't use subl or any Windows applications to edit files on the linux side. This is not supported (yet) and can have unexpected behavior. So when you want to edit a file like ~/.zshrc just use vim or nano :+1:
2. Just ran into this problem: you should consider running the following command:
    ```
    git config --global core.autocrlf true
    ```
    For the reasons explained here https://help.github.com/articles/dealing-with-line-endings/