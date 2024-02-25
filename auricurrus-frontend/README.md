## Auricurrus, your navigation assistance through silence
Auricurrus is an IoT based solution to support the deaf in driving. Auricurrus provides support in 
visual and haptic cues from noises in surroundings, giving more information to deaf drivers on what is happening around them.

## Features
![welcome](../images/welcome.png?raw=true "welcome")
![frame](../images/frames.png?raw=true "frame")
![init](../images/init.png?raw=true "init")
![signin](../images/signin.png?raw=true "singin")
![connect](../images/connect.png?raw=true "connect")
![siren](../images/siren.png?raw=true "siren")


## Architecture
![app architecture](images/architecuture.png?raw=true "Architecure")

## Setting Up - Application Frontend
1. Ensure that Flutter and Android Studio are installed on your device and that you can run Flutter on your device locally. 
2. Ensure that you have installed a phone emulator/android phone and a square WearOS emulator on your device. 
3. Git clone this project 
4. Open CMD
5. Navigate to auricurrus-frontend (cd auricurrus-frontend)
6. Open your editor in respective directory
7. Install dependencies
8. Run flutter pub get
9. Run npm i express socket.io
10. Change the IP variable to your IP address in index.js and audio_recorder.dart if you decide to use an android phone.
11. For the index.js, it is by default to have no IP for localhost settings. Do change them to your IP address if you choose to test our app using your android phone.
12. For audio_recorder.dart, it is by default to have the value ‘10.0.2.2’ for emulators. Do change them to your IP address if you choose to test our app using your android phone.
13. Turn on your phone emulator/connect your android phone
14. Flutter run 

## Challenges
### 1. Getting feedback for developing our application
Due to our app being targeted for the hearing impaired, the amount of people we could contact to provide input for the application was limited.

### How we tackled that challenge

We contacted local deaf communities and organizations as well as joined many online discussion forums and groups. We made an effort to involve ourselves in the community and find respondents we can work with throughout the development process.

### 2. Decibel detection integration
We utilized many packages to develop our app, however for our main feature, decibel monitoring, we had difficulty implementing this feature due to many recording packages writing audio data to a file for future playback instead of a stream, which can hinder performance and overfill memory with long usage time.

### How we tackled that challenge
After comparing the documentation of many dart packages, rigorous trial and error, and consulting experienced developers, we were able to find a package that supports our feature and implemented it into one of our core features.

### 3. IoT Communication Means
Ideally, we would implement Bluetooth technology, as it is efficient, fast, and secure. The lack of resources led us to utilize other simpler solutions, in which we used websocket servers.

### How we tackled that challenge
Websocket servers are easy to set up, although many downsides come with it. The first downside would be scalability. Websockets rely on servers and as the amount of users increases, so would the requirements of servers. Another would be IP address configuration. Websockets rely on them, and different sources of connections would impact the IP address for the devices. Difference in IP addresses would result in failure of communication establishment.

## Further Development
1. Implement sound recognition to classify honks, sirens, and other road sounds.
2. Implement attention monitoring via watch heart rate monitors & facial recognition.
3. Bluetooth Integration
4. Turn-by-turn map navigation
5. Decibel monitoring for road sounds
6. Connection to your smartwatch for haptic feedback
7. Profile customizability for hearing impairment severity

## Contributors
1. Alana Jocelyn Natania Massie → Business
2. Vian Sebastian Bromokusumo → Mobile
3. Hafid Sasayuda Ambardi → Mobile
4. Jalalludin Mukthafi → Design

