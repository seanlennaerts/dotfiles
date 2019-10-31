## Ruby development
* https://github.com/rbenv/rbenv#homebrew-on-macos
* http://sourabhbajaj.com/mac-setup/Ruby/
* rbenv is ruby version manager
* installed rbenv with homebrew (note rbenv automatically installs ruby-build)
* `rbenv install --list` to see available ruby versions
* `rbenv install 2.4.2` to install new ruby
* `rbenv global 2.4.2` to make 2.4.2 globally used ruby
* `rbenv global system` to revert to macOS ruby
* `rbenv local 2.4.2` to use 2.4.2 locally
* `rbenv versions` to see all installed rubys
* ruby is installed in `~/.rbenv/versions/`

### gem
* ruby package manager
* `gem env` to see information about install directory
* `gem update --system` to update RubyGems
* `gem list` to see all installed gems
* `gem outdated` to see old gems, and `gem update` to update all gems
* `gem cleanup` to remove outdated gems
* `gem install <gemname> --no-document` to install without documentation (faster)

## Python development
* https://github.com/pyenv/pyenv#homebrew-on-mac-os-x
* http://sourabhbajaj.com/mac-setup/Python/
* pyenv is python version manager forked from rbenv
* installed pyenv with homebrew
* `pyenv install 3.6.3` to install new python
* all same as rbenv
* python is installed in `~/.pyenv/versions/`

## ~~Node development~~
* https://github.com/creationix/nvm#installation
* http://sourabhbajaj.com/mac-setup/Node.js/
* nvm is node version manager
* installed with script on github above
* `nvm install node` installs latest node
* `nvm ls` lists installed node versions
* `nvm use node` to use latest node installed
* `nvm alias default node` set latest installed node as default
* node is installed in `~/.nvm/versions/`

## Node development (updated)
* first `brew uninstall node --ignore-dependencies` if already installed (possible by yarn)
* install using `brew install n`
* `n` to interactively switch node versions (enter to select)
* `n latest` or `n lts` (note LTS is recommended) to install node

## go development
* add the following to `.zshrc`
```
export GOPATH=$HOME/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
```
* `mkdir -p $GOPATH $GOPATH/src $GOPATH/pkg $GOPATH/bin` to build workspace

## Java development
* to see jdk 8 in brew cask `brew tap cask/versions`
* install with `brew cask install java8`
* `brew install jenv` if you want to manage java versions
* on welcome screen click Configure > Project Defaults > Project Structure
	* Under 'Platform Settings' click 'SDKs' > + > JDK > and then find the JDK in /Library/Java/JavaVirtualMachines
	* click Apply
	* now under 'Project Settings' click 'Project' and choose the default 'Project SDK' (i.e. 1.8) and choose '6 - @Override in interfaces' under 'Project language level'


## Brew
* https://docs.brew.sh/FAQ.html
* `brew list` see installed brews
* `brew install` install brew
* `brew uninstall` uninstall brew
* `brew cleanup` after installing
* `brewup` alias I made to update
* `brew tap` to see all taps (repos)

## npm
* `npm list -g --depth=0` to see all globally installed

## ~~For 3rd party SSDs~~
* https://apple.stackexchange.com/a/75956
* `sudo trimforce enable` to turn on trim for all connected devices
* `pmset -a sms 0` turns off sudden motion sensor for both battery and ac (-all)
* `pmset -g` to see all power settings
* Also recommended to turn of hard drive sleep
* the other settings are unnecessary

## Atom setup for React Native
* install nuclide
* in package settings for nuclide check "Install Recommended Packages on Startup"
* setup flow:
    * in package settings under nuclide-flow check "Use flow binary included in each project's..."
    * check verson of flow in .flowconfig and `npm i flow-bin@0.53.0 --save-dev` (UPDATE: use yarn instead. Using npm will delete all the dependencies that `react-native init` installed because `react-native init` uses yarn. Yarn also uses the package.json and produces the yarn.lock file. See https://yarnpkg.com/en/docs/migrating-from-npm for more :thumbsup:)
    * don't need to install separate compilor to remove flow types. React Native ships with babel compiler and the "react-native" preset in .babelrc supports flow
* setup eslint:
    * install package "linter-eslint" and DON'T install "linter" dependency (nuclide can use any linter plugins out-of-the-box)
    * `npm install --save-dev eslint-config-rallycoding`
    * or `yarn add --dev eslint-config-rallycoding`
    * In project root make .eslintrc: `{"extends": "rallycoding"}`

## React Native and Redux
* yarn add redux react-redux
add:
import { Provider } from 'react-redux';
import { createStore } from 'redux';
to top of App.js
