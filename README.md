# APP_Via_flutter
### ordering & connecting app project
![logo](https://user-images.githubusercontent.com/68888169/173794942-f1d2c123-1a64-4f31-bd89-07758c653787.png)
<- my app logo


## Reference
In base of design, I refer to https://github.com/Tarikul711/flutter-food-delivery-app-ui



## Login page
you must support flutter 2.8 and connect firebase

use SignInScreen Widget

![login](https://user-images.githubusercontent.com/68888169/173795225-1151a078-a0db-4a76-a9f4-1c4bd76202aa.png)


## Onboarding page
![onboard](https://user-images.githubusercontent.com/68888169/173796516-18014ff0-07a3-40db-91a0-355770241980.png)



Using introduction_screen 

``` flutter pub add introduction_screen ```

This page introduce about my app in 5 pages


## Welcome page
![welcome](https://user-images.githubusercontent.com/68888169/173796225-6c6a043b-0487-4679-a156-a03810c8f0f5.png)



## Base page
![basepage](https://user-images.githubusercontent.com/68888169/173796344-92d46f11-c7bd-46c6-85b2-c81670a42d86.png)



## Order page

![order](https://user-images.githubusercontent.com/68888169/173796573-5d59c83a-f011-4022-a508-1e22cd494e54.png)



## Cart page

![cart](https://user-images.githubusercontent.com/68888169/173798587-85171cfe-0956-4cd8-97bf-22c24f820311.png)



## Account page

![account](https://user-images.githubusercontent.com/68888169/173798938-f206a841-e53e-46ff-a69d-09656eea3dec.png)


## Near by & Messenger page

Near by - I didn't make it yet

chatting page - null safety issue


## Error & Solution

### AndroidManifest.xml Error: user-sdk:minSdkVersion 16 cannot be smaller than version 19 declared in library [com.google.firebase:firebase-analytics::]
go android/app/build.gradle and fixed

- minSdkVersion 16 -> minSdkVersion 23

or 

- minSdkVersion flutter.minSdkVersion -> minSdkVersion 23

### DexArchiveMergerException Error
-  multiDexEnabled true

-  implementation 'com.android.support:multidex:2.0.1'


### Error: Cannot run with sound null safety, because the following dependencies don't support null safety:

#### Solution 1: Run this command

```flutter run --no-sound-null-safety```

#### Solution 2: Setting For Android Studio

To set this up in your IDE of choice, you can use ???Edit Configurations??? (in your run configurations) 
??? ???Additional run args??? in IntelliJ and search for ???Additional Args??? (with ???Dart???/???Flutter???) in your setting.

Open Edit Configurations in Run.
Select on Add Additional Run args.
Just add ???no-sound-null-safety there.
Apply setting. Press Ok and rerun your app.

reference : https://fluttercorner.com/cannot-run-with-sound-null-safety-because-dependencies-dont-support-null-safety/


#### ERROR | Running multiple emulators with the same AVD ERROR |
closing all AVD and restart
