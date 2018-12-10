
#!/bin/bash

if [ -z $1 ]
then
	sortie='galerie.html'
else
	sortie=$1
fi

echo '' > $sortie

if [ ! -e miniatures ]
then 
	mkdir miniatures
fi

echo '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr" >
   <head>
       <title>Ma galerie</title>
       <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
       <style type="text/css">
       a img { border:0; }
       </style>
   </head>
   <body><p>' >> $sortie

# Génération des miniatures et de la page

for image in `ls *.png *.jpg *.jpeg *.gif 2>/dev/null`
do
        convert $image -thumbnail '200x200>' miniatures/$image
        echo '<a href="'$image'"><img src="miniatures/'$image'" alt="" /> </a> '>> $sortie
done

# Pied de page HTML

echo '</p>
   </body>
</html>' >> $sortieecho '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr" >
   <head>
       <title>Ma galerie</title>
       <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
       <style type="text/css">
       a img { border:0; }
       </style>
   </head>
   <body><p>' >> $sortie

# Génération des miniatures et de la page

for image in `ls *.png *.jpg *.jpeg *.gif 2>/dev/null`
do
        convert $image -thumbnail '200x200>' miniatures/$image
        echo '<a href="'$image'"><img src="miniatures/'$image'" alt="" /> </a> '>> $sortie
done

# Pied de page HTML

echo '</p>
   </body>
</html>' >> $sortie
