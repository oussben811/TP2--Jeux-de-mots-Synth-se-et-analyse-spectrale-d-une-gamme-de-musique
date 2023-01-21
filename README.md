# TP2- Jeux de mots Synthèse et analyse spectrale d’une gamme de musique
  ## Objectifs 
  - Comprendre comment manipuler un signal audio avec Matlab, en effectuant 
    certaines opérations classiques sur un fichier audio d’une phrase enregistrée via 
    un smartphone.
  - Comprendre la notion des sons purs à travers la synthèse et l’analyse spectrale 
    d’une gamme de musique.
  ## Introduction
       La synthèse de jeux de mots est une technique utilisée pour créer des phrases ou
       des textes à partir de mots clés ou de phrases clés. Elle permet de générer du
       contenu automatiquement en combinant des mots ou des phrases de manière algorithmique.

        L'analyse spectrale d'une gamme de musique consiste à décomposer un signal sonore en 
        ses différentes fréquences. Cela permet de comprendre la composition d'un morceau de 
        musique et de détecter les différentes notes et instruments utilisés. Cela peut également
        être utilisé pour la création de musique électronique en utilisant des techniques de synthèse
        pour reproduire les caractéristiques spectrales d'un morceau de musique.
   ## Réalisation du TP

   ### Partie 1 : Jeux de mots 
   
    « phrase.wave » est un fichier audio enregistré à l’aide d’un smartphone, en prononçant 
    lentement la phrase : - « Rien ne sert de courir, il faut partir à point ».
            
   1-Sauvegardez ce fichier sur votre répertoire de travail, puis charger-le dans MATLAB à 
   l’aide de la commande « audioread ». 
   
   2-Tracez le signal enregistré en fonction du temps, puis écoutez-le en utilisant la 
   commande « sound ».

  ![1](https://user-images.githubusercontent.com/78149349/213871881-94962b80-43df-4230-b5a1-8865052c6a40.png)
  ![2](https://user-images.githubusercontent.com/78149349/213871883-1cda3f5c-8b12-470b-a515-51390d691142.png)

             
   3-« Terminator » ou « Donald Duck »
            
   ![Screenshot 2023-01-20 150051](https://user-images.githubusercontent.com/78149349/213715085-e5153463-5560-43f3-b787-8b7b0b19eeaa.png)
            
   4-Tracez le signal en fonction des indices du vecteur x, puis essayez de repérer les indices de 
     début et de fin de la phrase « Rien ne sert de ».
              
   ![3](https://user-images.githubusercontent.com/78149349/213871886-0f66c87e-ac94-4e0c-a080-b66db41649f2.png)
   ![4](https://user-images.githubusercontent.com/78149349/213871889-f9ba210e-c6e9-408a-8195-2b9292d193fc.png)

              
      Remarque :
      Le code semble charger un fichier audio, tracer le signal en fonction du temps, 
      puis lire le fichier audio. Le code modifie ensuite la fréquence d'échantillonnage
      du fichier audio et le lit à nouveau, ce qui fait que l'audio sonne comme 
      Donald Duck ou Terminator. Enfin, le code trace le signal par rapport aux indices.
           
   5- Pour segmenter le premier mot, il faut par exemple créer un vecteur « riennesertde » 
      contenant les n premières valeurs du signal enregistré x qui correspondent à ce morceau. 
      Créez ce vecteur, puis écoutez le mot segmenté.

   ![5](https://user-images.githubusercontent.com/78149349/213871890-10c9e094-fd23-4cd8-90f1-5461ac0c960a.png)
   ![6](https://user-images.githubusercontent.com/78149349/213871893-e39be195-19a4-4ba2-8a01-849532611abe.png)

   6- Segmentez cette fois-ci toute la phrase en créant les variables suivantes : riennesertde, courir, 
      ilfaut, partirapoint.
      
   - courir
   
   ![7](https://user-images.githubusercontent.com/78149349/213871894-e3edf593-59c5-4f6d-a71e-8fcb84199617.png)
   ![8](https://user-images.githubusercontent.com/78149349/213871895-dcb91475-0d8c-463e-8f84-8e62ea3fc1e2.png)

   
   -ilfaut
   
   ![Screenshot 2023-01-20 154358](https://user-images.githubusercontent.com/78149349/213726546-e0b5da7f-dd74-48ea-bc48-cb5eb124873e.png)
   ![Screenshot 2023-01-20 154411](https://user-images.githubusercontent.com/78149349/213726577-0ea7241d-d8fc-4b38-942c-2340182256ca.png)
   
   -partirapoint
   
   ![11](https://user-images.githubusercontent.com/78149349/213871896-83530f99-fbc5-4a76-8b66-7092903a8b30.png)
   ![12](https://user-images.githubusercontent.com/78149349/213871898-261267dd-b861-4940-adfc-c48117e2d562.png)
   
    Remarque:
     Ce code lit dans un fichier audio "audio.au" et stocke les données dans la variable 'y' 
     et le taux d'échantillonnage dans 'fs'. Il divise ensuite les données audio en 4 sections,
     chacune avec une durée différente, et trace chaque section dans une sous-parcelle, 
     tout en lisant l'audio pour cette section. Les sections sont nommées "Riennesertde",
     "courir", "ilfaut", et "partirapoint".

   
   7- Notez que le signal initial de parole est un vecteur colonne contenant un certain nombre de 
    valeurs (length(x)). Réarrangez ce vecteur pour écouter la phrase synthétisée « Rien ne sert de 
    partir à point, il faut courir »
    
   ![13](https://user-images.githubusercontent.com/78149349/213871899-6854cc2c-14d0-4499-9922-88629a4e02d4.png)
   ![14](https://user-images.githubusercontent.com/78149349/213871900-e007d25b-983f-4282-8f7e-1aaadc97b420.png)
   
     Remarque :
      Ce code charge un fichier audio appelé "audio.au" et le stocke dans la variable "y". 
      La variable "fs" stocke le taux d'échantillonnage du fichier audio. La variable "N" 
      stocke la longueur du signal audio. Ensuite, le code divise le signal audio en quatre segments,
      "riennesertde", "courir", "ilfaut" et "partirapoint", en utilisant des indices pour 
      sélectionner des parties spécifiques du signal d'origine. Ces segments sont ensuite concaténés
      pour former la variable "all_signal". Le code trace ensuite la variable "all_signal" et ajoute 
      un titre, et lit l'audio en utilisant la fonction "sound" avec la fréquence d'échantillonnage "fs".

   ### Partie 2 : Synthèse et analyse spectrale d’une gamme de musique 
    
   1- Créez un programme qui permet de jouer une gamme de musique.
   
   ![Screenshot 2023-01-20 182151](https://user-images.githubusercontent.com/78149349/213871901-c2f6137d-1662-40f5-847a-82c504d5ae6f.png)
   ![16](https://user-images.githubusercontent.com/78149349/213871902-95021568-49a7-45fd-814b-88834361ff06.png)
   
   #### Spectre de la gamme de musique
   
   2- Utilisez l’outil graphique d’analyse de signaux signalAnalyzer
   
   ![Screenshot 2023-01-20 155730](https://user-images.githubusercontent.com/78149349/213729576-b886b1f2-38f2-4f9f-9c57-91cda966fabc.png)

   3- Tracez le spectrogramme qui permet de visualiser le contenu fréquentiel du signal au 
      cours du temps
      
   ![Screenshot 2023-01-20 155745](https://user-images.githubusercontent.com/78149349/213729769-4f78839a-8385-43f4-8d28-483f1f1b5225.png)
    
   Remarque:
   
      Ce code génère une séquence d'ondes sinusoïdales représentant les notes d'une gamme musicale
      (Do, Re, Mi, Fa, Sol, La, Si, Do) avec une fréquence de 8192 Hz et une durée de 1 seconde pour
      chaque note. La durée totale de l'échelle est de 8 secondes. Le code concatène ensuite les notes 
      individuelles pour former la pleine échelle et trace le résultat, joue le son et ouvre l'analyseur
      de signal et le spectrogramme dans le même tracé avec l'axe des ordonnées étiqueté.
   
   #### Approximation du spectre d’un signal sinusoïdal à temps continu par FFT
   
   ![17](https://user-images.githubusercontent.com/78149349/213871904-1b683a6f-504d-44f2-a54d-017579c9c7fd.png)
   ![18](https://user-images.githubusercontent.com/78149349/213871908-7b599b70-7c62-47f3-ab03-f43ff392c326.png)
   
   Remarque:
   
    ce code applique la transformée de Fourier rapide (FFT) à la gamme musicale pour obtenir
    le spectre de fréquence du signal. La FFT est utilisée pour déterminer le contenu fréquentie
    l du signal. Le décalage de fréquence est ensuite appliqué au résultat FFT, cela permet de 
    centrer le spectre de fréquence autour de la fréquence zéro. L'amplitude de la FFT est ensuite
    tracée dans deux sous-parcelles différentes, l'une avec un axe y linéaire et l'autre avec 
    un axe y logarithmique (échelle en décibels). L'axe des x représente la fréquence
    et l'axe des y représente l'amplitude.

  ## Conclusion
  
  La manipulation démontre le processus de synthèse d'une gamme musicale en créant des ondes 
  sinusoïdales individuelles pour chaque note et en les concaténant ensemble. Le signal résultant 
  peut ensuite être analysé à l'aide de la transformée de Fourier rapide (FFT) pour déterminer 
  son contenu fréquentiel. Ce processus est connu sous le nom d'analyse spectrale et il permet de
  comprendre les différentes fréquences présentes dans le signal. Le code montre également comment
  tracer le spectre de fréquences à la fois sur des échelles linéaires et logarithmiques.
  Globalement, le code utilise le jeu de mots entre "synthèse" et "analyse spectrale" pour illustrer 
  comment un même signal peut être à la fois synthétisé et analysé dans le cadre d'une gamme musicale.
