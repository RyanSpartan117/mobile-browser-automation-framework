# Mobile Brower Automation
This is a small framework for Android mobile browser automation pointed at the [Three Website](www.three.co.uk). Built in Ruby with Appium.  

## bash profile setup

The following will need to be added to your choice of `bash_profile`, `bashrc` or `zshrc` if you use it.

```
export ANT_HOME=/usr/local/opt/ant
export MAVEN_HOME=/usr/local/opt/maven
export GRADLE_HOME=/usr/local/opt/gradle
export ANDROID_HOME=/usr/local/Caskroom/android-sdk/3859397,26.0.1
export ANDROID_NDK_HOME=/usr/local/opt/android-ndk
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_141.jdk/Contents/Home

export PATH=$ANT_HOME/bin:$PATH
export PATH=$MAVEN_HOME/bin:$PATH
export PATH=$GRADLE_HOME/bin:$PATH
export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/build-tools/19.1.0:$PATH
export PATH=$JAVA_HOME/bin:$PATH
```

After you've saved this, restart your terminal.  

This isn't guaranteed to be correct and could need to be debugged to find the correct directory paths, we'll be using `appium-doctor` later on to diagnose if our system is ready to run Appium.

## Installation commands - OSX  

List of installation commands to paste into your terminal. Feel free to skip the ones that you already have installed.

#### Install Ruby:

``` 
curl -sSL https://get.rvm.io | bash -s stable
rvm install ruby
```

You can check with `ruby --version`

#### Install RubyGems and Bundler:

```
gem update --system
gem install --no-rdoc --no-ri bundler
gem update
gem cleanup
```
Check with `gem --version`

#### Install Homebrew:
` /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" `  

Running  `brew doctor` should let tell you that `Your system is ready to brew`.

#### Installing node and npm:

` brew install node `

Run `node -v` and `npm -v` to make sure that they're installed. If it tells you that there's no command node or npm, they haven't been installed.  

#### Installing Ant and Maven:

` brew install ant`  
` brew install maven`  

#### Installing Appium: 

` npm install appium `  

You'll be able to spin up an Appium server by running `appium`, but to use the element inspector you'll need [Appium desktop](https://github.com/appium/appium-desktop/releases/tag/v1.2.6) (pick the .dmg package).

#### Installing appium-doctor:

` npm install appium-doctor`  

To check to see if your Appium is ready for android we'll be running `appium-doctor --android`  

#### Installing Android-sdk:

` brew cask install android-sdk `  

Go to your caskroom: `cd /usr/local/Caskroom` and look for android-sdk. `cd android-sdk` and look at the version number. This should match what you set your `ANDROID_HOME` path earlier. If not go back into your bash_profile and update it to `/usr/local/Caskroom/android-sdk/<the version number here>`  


If that doesn't work, you can try installing [Android Studio](https://developer.android.com/studio/index.html) and matching up your PATH from there.  

## Running the app  


Once you've downloaded the project, go to the root directory of the project and run `bundle` to install all the gems used and their dependencies.  

Connect your Android device via USB to your computer, wait 10 second and run `adb devices`. You should see the connected device in your terminal. The project is made to take any non-specific Android, automatically find it's UDID and run the test.  

To run the example test we use cucumber:  

`cucumber`  

If you would like a brief overview of BDD or test automation in general, please feel free to refer to [my GitHub wiki page for a cucumber framework](https://github.com/RyanSpartan117/capybara_cucumber_sitePrism_POM_framework/wiki/Test-Automation-Resources) to help get started.  


\- Ryan


