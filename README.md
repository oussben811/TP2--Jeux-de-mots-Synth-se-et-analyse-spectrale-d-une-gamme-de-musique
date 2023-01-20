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

   ![Screenshot 2023-01-20 145933](https://user-images.githubusercontent.com/78149349/213722909-49508c80-8ebd-4351-8a60-c2f44f3ffc8a.png)
             
   3-« Terminator » ou « Donald Duck »
            
   ![Screenshot 2023-01-20 150051](https://user-images.githubusercontent.com/78149349/213715085-e5153463-5560-43f3-b787-8b7b0b19eeaa.png)
            
   4-Tracez le signal en fonction des indices du vecteur x, puis essayez de repérer les indices de 
     début et de fin de la phrase « Rien ne sert de ».
              
   ![Screenshot 2023-01-20 150344](https://user-images.githubusercontent.com/78149349/213715638-6493b7f8-491b-40d4-ba69-b06cf5503a65.png)
              
      Remarque :
      Le code semble charger un fichier audio, tracer le signal en fonction du temps, 
      puis lire le fichier audio. Le code modifie ensuite la fréquence d'échantillonnage
      du fichier audio et le lit à nouveau, ce qui fait que l'audio sonne comme 
      Donald Duck ou Terminator. Enfin, le code trace le signal par rapport aux indices.
           
   5- Pour segmenter le premier mot, il faut par exemple créer un vecteur « riennesertde » 
      contenant les n premières valeurs du signal enregistré x qui correspondent à ce morceau. 
      Créez ce vecteur, puis écoutez le mot segmenté.

   ![Screenshot 2023-01-20 152330](https://user-images.githubusercontent.com/78149349/213722589-a9583423-d60f-451e-b3b5-26f1c1fbb34d.png)

   6- Segmentez cette fois-ci toute la phrase en créant les variables suivantes : riennesertde, courir, 
      ilfaut, partirapoint.
      
   - courir
   
   ![Screenshot 2023-01-20 154337](https://user-images.githubusercontent.com/78149349/213726385-b98094c1-03ef-42cf-8e8d-11eff6cfdd94.png)
   
   -ilfaut
   
   ![Screenshot 2023-01-20 154358](https://user-images.githubusercontent.com/78149349/213726546-e0b5da7f-dd74-48ea-bc48-cb5eb124873e.png)
   
   ![Screenshot 2023-01-20 154411](https://user-images.githubusercontent.com/78149349/213726577-0ea7241d-d8fc-4b38-942c-2340182256ca.png)
   
   -partirapoint
   
   ![Screenshot 2023-01-20 154434](https://user-images.githubusercontent.com/78149349/213726615-65165b93-59e2-4e91-995b-2b5cf2cd2d91.png)
   
    Remarque:
     Ce code lit dans un fichier audio "audio.au" et stocke les données dans la variable 'y' 
     et le taux d'échantillonnage dans 'fs'. Il divise ensuite les données audio en 4 sections,
     chacune avec une durée différente, et trace chaque section dans une sous-parcelle, 
     tout en lisant l'audio pour cette section. Les sections sont nommées "Riennesertde",
     "courir", "ilfaut", et "partirapoint".

   
   7- Notez que le signal initial de parole est un vecteur colonne contenant un certain nombre de 
    valeurs (length(x)). Réarrangez ce vecteur pour écouter la phrase synthétisée « Rien ne sert de 
    partir à point, il faut courir »
    
   ![Screenshot 2023-01-20 155107](https://user-images.githubusercontent.com/78149349/213727836-665986b1-b300-4d0c-95f9-3a748f441af2.png)
   
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
   
   ![Screenshot 2023-01-20 155652](https://user-images.githubusercontent.com/78149349/213729410-d565193f-ceea-4236-9f32-7b8c56ec25d3.png)
   
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
   
   ![Screenshot 2023-01-20 160259](https://user-images.githubusercontent.com/78149349/213730528-b930bd29-d159-4cf0-bb89-11f36530fe9c.png)
   
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
