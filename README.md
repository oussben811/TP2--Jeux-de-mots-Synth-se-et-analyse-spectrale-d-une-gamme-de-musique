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
   ![Screenshot 2023-01-20 145933](https://user-images.githubusercontent.com/78149349/213722909-49508c80-8ebd-4351-8a60-c2f44f3ffc8a.png)

        - Partie : Jeux de mots 
            « phrase.wave » est un fichier audio enregistré à l’aide d’un smartphone, en prononçant 
            lentement la phrase : - « Rien ne sert de courir, il faut partir à point ».   
            1-Sauvegardez ce fichier sur votre répertoire de travail, puis charger-le dans MATLAB à 
            l’aide de la commande « audioread ». 
            2-Tracez le signal enregistré en fonction du temps, puis écoutez-le en utilisant la 
            commande « sound ».
            
            ![Screenshot 2023-01-20 145933](https://user-images.githubusercontent.com/78149349/213714765-501a6cd3-7185-446b-9891-dbc21dfd588c.png)
             
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
              ![Screenshot 2023-01-20 142504](https://user-images.githubusercontent.com/78149349/213705408-0a6764db-714a-44c7-b974-b2b7f1c1b8ea.png)
              ![Screenshot 2023-01-20 152330](https://user-images.githubusercontent.com/78149349/213722589-a9583423-d60f-451e-b3b5-26f1c1fbb34d.png)

               

              
