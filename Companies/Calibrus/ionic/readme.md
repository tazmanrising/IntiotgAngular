//ionic start [appName] [template]
//ionic start myApp blank


-------=======
npm install -g ionic
npm install -g cordova

ionic start ionicApp blank

run app in browser    -   ionic serve


run on a device or simulator 
     ionic run ios[android,browser]


install sdk for android 


ionic platform add android

ionic build android    ( fails without ANDROID_HOME  env. variable)

http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html
https://developer.android.com/studio/index.html?hl=sk

sdk tools only

ANDROID_HOME  =  C:\Users\tstickel\Downloads\tools_r25.2.3-windows 

Yes , outside of the tools folder 


ionic run android 


at work localhost is not launching

so ...

ionic serve --address localhost




testers
 http://view.ionic.io 


Create a free Ionic account to share and test apps with Ionic View?   Y/N :

 
=> download the google canary 

ionic platform add android 

ionic build android

// errors  

//
I guess it's because you set ANDROID_HOME to the wrong path.

ANDROID_HOME must be set to the root of the android SDK, not to tools folder:

SET ANDROID_HOME=C:\adt-bundle-windows-x86_64-20140702\sdk
But the tools folder must be in the path.

SET PATH=%PATH%;%ANDROID_HOME%\tools
(of course use windows settings to set env vars, don't do it in cmd, that was just to explain more clearly)

C:\Program Files (x86)\Android\android-sdk\tools


ionic emulate android




ionic 