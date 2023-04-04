# ![tts logo](https://user-images.githubusercontent.com/98839796/225055945-ebfe1a25-6cbf-45ca-a17f-f140cb37ad11.jpg) TTS-rooms

TTS rooms project mobile 3D

This project is the starting point for a mobile application linking Flutter and babylon js viewer.


![flutter](https://user-images.githubusercontent.com/98839796/229504122-11e8e71d-a013-4592-8255-d19ff40b4e4f.png)

![screen](https://user-images.githubusercontent.com/98839796/229516118-a47bd459-e14d-48d0-8006-d7b780792e0f.png)




## installation configuration

**! Tuto youtube disponibles en cas de mauvaise compréhension de la marche à suivre !**

### 1ERE MANIERE : pas d'android, émulateur android

- Ouvrir l'IDE au choix: Android Studio ou Visual Studio Code

- Clonner le dépot dans l'onglet "File" > "New" > "Project from Version Control" > "Git".

- Ouvrir un terminal dans votre IDE et exécutez la commande pour télécharger toutes les dépendances du projet :
``` dart
flutter packages get 
```

- Pour **la vision du téléphone android**, ouvrez l'émulateur Android en cliquant sur l'icône de l'émulateur dans la barre d'outils de votre éditeur de code.
![icon](https://user-images.githubusercontent.com/98839796/229757664-197e18a2-6d43-4f03-922e-97a37ed4ccc4.png)

- Si vous n'avez pas encore configuré d'émulateur Android, vous pouvez suivre la doc de flutter directement ou ces tutos youtube LINUX, MAC ET WINDOWS qui m'ai aidé :



  [MAC](https://www.google.com/search?q=install+emulator+android+studio+MAC&rlz=1C1ONGR_frCH1019CH1019&sxsrf=APwXEdfwiD9TRoXTwvuERFZu-S3ZcF8blQ:1680603711678&source=lnms&tbm=vid&sa=X&ved=2ahUKEwiDmfjZgJD-AhW0hP0HHQ9dCbAQ_AUoAXoECAEQAw&biw=1528&bih=752&dpr=1.25#fpstate=ive&vld=cid:7c5a4265,vid:hTk2DojxcEM)


  [LINUX](https://www.youtube.com/watch?v=9dTAzFYWD1A)

  [WINDOWS](https://www.google.com/search?q=install+emulator+android+studio&rlz=1C1ONGR_frCH1019CH1019&sxsrf=APwXEdff5VYB6qUzcPvEArfvSog0qT48CA:1680603526112&source=lnms&tbm=vid&sa=X&ved=2ahUKEwiFm7qBgJD-AhWSgv0HHT6iC-EQ_AUoAXoECAIQAw&biw=1528&bih=752&dpr=1.25#fpstate=ive&vld=cid:875d4812,vid:WkEf1fa1sn0)


![bigo](https://user-images.githubusercontent.com/98839796/229764814-ea3c17a7-6220-42c0-b5c4-40b3b2701943.png)


- Une fois l'émulateur installé, dans le terminal, exécutez la commande pour lancer l'application Flutter sur l'émulateur Android.
``` dart
flutter run
```

ou cliquez simplement sur l'icon lancer (en vert) en choissisant votre device mobile :

![run](https://user-images.githubusercontent.com/98839796/229765932-6a5d3dbb-aa0f-48e3-b5ac-863ffa345c63.png)

![device](https://user-images.githubusercontent.com/98839796/229765668-37919a39-993a-4efd-acd9-364e9134aca6.png)

**RÉSULTAT À AVOIR :**

![result](https://user-images.githubusercontent.com/98839796/229766241-b7914b99-8216-44d4-ae69-5c9128700499.png)

- C'est tout ! Vous pouvez enfin visualiser TTS rooms sur une simulation d'android

### 2EME MANIERE : android à disposition, apk download

- **Pour cette étape vous devez disposer d'un android !**

- Pour générer un fichier APK pour Android, exécutez cette commande dans votre terminal :
``` dart
flutter build apk
```
- Le fichier APK sera généré dans le dossier **build/app/outputs/flutter-apk/.**

- téléchargez le maintenant sur votre android et profiter de TTS rooms !

[DOWLOAD APK](https://www.youtube.com/watch?v=tdk3a92RX-0)

### Arrivé au login, vous pouvez rentrer sans problèmes, le password et user ont été enlever pour le moment

``` dart
if (nameController.text == '' && passwordController.text == '')
```

![tts](https://user-images.githubusercontent.com/98839796/225056344-a8877034-c4c7-4ab7-b63b-51cfe600eba0.png)
