#! /bin/sh

HOME_DIR=$HOME
#DICTIONARY_CREATION=$HOME_DIR/Desktop/Workshop/Github/testing/millets/dictionary_creation
DICTIONARY_CREATION=$HOME_DIR/Desktop/Workshop/Github/testing/millets/dictionary_creation
VERSION = ami20190216b
DICTIONARY_DIR = $DICTIONARY_CREATION/$VERSION
#dictionary creation from terms
echo "Dictionary creation from terms"

# NOTE the output from the below command is send to /dev/null
ami-dictionary create \
        --dictionary plantvirusesA \
        --directory $DICTIONARY_DIR/dictionary \
        --terms \
Alfamovirus,Allexivirus,Alphacryptovirus,Ampelovirus,Anulavirus,Apscaviroid,Aureusvirus,Avenavirus,Avsunviroid,Badnavirus,Begomovirus,Benyvirus,\
Betacryptovirus,Betaflexiviridae,Bromovirus,Bymovirus,Capillovirus,Carlavirus,Carmovirus,Caulimovirus,Cavemovirus,Cheravirus,Closterovirus,\
Cocadviroid,Coleviroid,Comovirus,Crinivirus,Cucumovirus,Curtovirus,Cytorhabdovirus,Dianthovirus,Enamovirus,Fabavirus,Fijivirus,Furovirus,\
Hordeivirus,Hostuviroid,Idaeovirus,Ilarvirus,Ipomovirus,Luteoviridae,Machlomovirus,Macluravirus,Marafivirus,Mastrevirus,Nanovirus,Necrovirus,\
Nepovirus,Nucleorhabdovirus,Oleavirus,Ophiovirus,Oryzavirus,Panicovirus,Pecluvirus,Petuvirus,Phytoreovirus,Polerovirus,Pomovirus,Pospiviroid,\
Potexvirus,Potyviridae,Potyvirus,Reoviridae,Rhabdoviridae,Rymovirus,Sadwavirus,Sequivirus,Sobemovirus,Tenuivirus,Tobamovirus,Tobravirus,\
Tombusviridae,Tombusvirus,Topocuvirus,Tospovirus,Trichovirus,Tritimovirus,Tungrovirus,Tymovirus,Umbravirus,Unassigned,Varicosavirus,Vitivirus,Waikavirus > /dev/null

if [ -d "$HOME_DIR/ContentMine" ];then
	echo "contentmine directory present"
	rm -r $HOME_DIR/ContentMine
fi
if [ -d ./target ];then
	echo "target directory present"
	rm -r ./target
fi	
printf "\n"



#dictionary creation from wikpedia page
echo "Dictionary creation from wikipedia page"

ami-dictionary create\
  --input https://en.wikipedia.org/wiki/Millet\
  --informat wikipage\
  --dictionary millets_wikipage \
  --outformats xml,json,html \
  --directory $DICTIONARY_DIR/dictionary > /dev/null

if [ -d "$HOME_DIR/ContentMine" ];then
	echo "contentmine directory present"
	rm -r $HOME_DIR/ContentMine
fi
if [ -d ./target ];then
	echo "target directory present"
	rm -r ./target
fi	
printf "\n"



#dictionary creation from wikipedia list
echo "Dictionary creatiion from wikipedia list"

ami-dictionary create\
    --input  https://en.wikipedia.org/wiki/List_of_Indian_spices \
    --informat  wikitable \
    --namecol 'Standard English'\
    --dictionary spices_list\
    --outformats  xml,json,html \
    --directory $DICTIONARY_DIR/dictionary > /dev/null

if [ -d "$HOME_DIR/ContentMine" ];then
	echo "contentmine directory present"
	rm -r $HOME_DIR/ContentMine
fi
if [ -d ./target ];then
	echo "target directory present"
	rm -r ./target
fi	
printf "\n"



#dictionary creation from wikipedia category
echo "Dictionary creation from wikipedia category"

ami-dictionary create\
	--input https://en.wikipedia.org/wiki/Category:Millets\
	--informat wikicategory \
	--dictionary millets_category\
	--outformats  xml,json,html\
	--directory $DICTIONARY_DIR/dictionary > /dev/null

if [ -d "$HOME_DIR/ContentMine" ];then
	echo "contentmine directory present"
	rm -r $HOME_DIR/ContentMine
fi
if [ -d ./target ];then
	echo "target directory present"
	rm -r ./target
fi	

