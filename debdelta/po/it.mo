��    B      ,  Y   <      �  $  �  �   �  ?   j  0   �  %   �  1        3  ?   I  	   �     �     �     �     �  /   �     	  ?   1	     q	  &   �	  /   �	  1   �	  "   
  5   7
  >   m
  ,   �
  >   �
  '     )   @     j  $   �  =   �     �  	             /     L  '   f  "   �  7   �  ,   �  A     .   X  9   �     �     �     �  �    +  �  �    w  �  �   n     �  D     9   W  #   �  V   �  �        �     �     �  K   �  ]        l  2     P   �       V    ?  g  �   �  C   \  0   �  %   �  3   �     +  C   ;          �     �     �      �  6   �     3  C   M  !   �  #   �  /   �  3      %   ;   <   a   E   �   /   �   E   !  <   Z!  4   �!  %   �!      �!  D   "  &   X"     "  0   �"  ,   �"  &   �"  6   #  0   D#  >   u#  ;   �#  Q   �#  >   B$  @   �$     �$  $   �$  #   �$  �  %  0  �&  �  *(  u  ,  ~   �-  $   .  I   8.  F   �.  3   �.  f   �.  �   d/     �/     �/     0  V   !0  t   x0     �0  =   �0  S   ;1     �1     =      @   1                4   	         .   7   "   /      5   >   &          *                      9                       ,                    #              (   ?   <   A   :   $       )   
   B          3      8   2           0           6   +                 '   -                                     !   ;   %        -v         verbose (can be added multiple times)
--no-act    do not do that (whatever it is!)
 -d         add extra debugging checks
 -k         keep temporary files (use for debugging)
--gpg-home HOME
            specify a different home for GPG

See man page for more options and details.
  Proxy settings detected in the environment; using "urllib2" for downloading; but
  this disables some features and is in general slower and buggier. See man page. (Faulty delta. Please consider retrying with the option "-d" ). (prelink %(time).2fsec, %(size)dk, %(speed)dk/s) (script %(time).2fsec %(speed)dk/sec) (sources.conf does not provide a server for `%s') (unaccounted %.2fsec) Created,    time %(time)5.2fsec, speed %(speed)4s/sec, %(name)s Creating: Delta is not present: Delta is not signed: Delta is too big: Delta-upgrade statistics: Deltas: %(present)d present and %(absent)d not, Downloaded head of %s. Downloaded, time %(time)5.2fsec, speed %(speed)4s/sec, %(name)s Downloading head of %s... Error: --gpg-home `%s' does not exist. Error: `%s' does not seem to be a Debian delta. Error: `%s' does not seem to be a Debian package. Error: `%s' is not a regular file. Error: argument is not a directory or a regular file: Error: argument of --alt is not a directory or a regular file: Error: argument of --dir is not a directory: Error: argument of --old is not a directory or a regular file: Error: feature `%s' cannot be disabled. Error: option `%s' is unknown, try --help Error: testing of delta failed: Error: the file `%s' does not exist. Faulty delta. Please send by email to %s the following files: Initializing APT cache... Lookup %s Need 3 filenames; try --help. Need a filename; try --help. Need to get %s of deltas. Not enough disk space for storing `%s'. Not enough disk space to download: Patching done, time %(time).2fsec, speed %(speed)dk/sec Recreated debs are saved in the directory %s Sorry, cannot find an URI to download the debian package of `%s'. Sorry, no source is available to upgrade `%s'. Sorry, the package `%s' is already at its newest version. Total running time: %.1f Upgraded APT cache. Upgrading APT cache... Usage: debdelta [ option...  ] fromfile tofile delta
  Computes the difference of two deb files, from fromfile to tofile, and writes it to delta

Options:
--signing-key KEY
            gnupg key used to sign the delta
--no-md5    do not include MD5 info in delta
--needsold  create a delta that can only be used if the old deb is available
 -M Mb      maximum memory  to use (for 'bsdiff' or 'xdelta')
--delta-algo ALGO
            use a specific backend for computing binary diffs
 Usage: debdelta-upgrade [package names]
  Downloads all deltas and apply them to create the debs
  that are needed by 'apt-get upgrade'.

Options:
--dir DIR   directory where to save results
--deb-policy POLICY
            policy to decide which debs to download,
 -A         accept unsigned deltas
 Usage: debdeltas [ option...  ]  [deb files and dirs, or 'Package' files]
  Computes all missing deltas for deb files.
  It orders by version number and produce deltas to the newest version

Options:
--signing-key KEY
            key used to sign the deltas (using GnuPG)
--dir DIR   force saving of deltas in this DIR
            (otherwise they go in the dir of the newer deb_file)
--old ARGS  'Package' files containing list of old versions of debs
--alt ARGS  for any cmdline argument, search for debs also in this place
 -n N       how many deltas to produce for each deb (default unlimited)
--no-md5    do not include MD5 info in delta
--needsold  create a delta that can only be used if the old .deb is available
--delta-algo ALGO
            use a specific backend for computing binary diffs;
            possible values are: xdelta xdelta-bzip xdelta3 bsdiff
 -M Mb      maximum memory to use (for 'bsdiff' or 'xdelta')
--clean-deltas     delete deltas if newer deb is not in archive
 Usage: debpatch [ option...  ] delta  fromfile  tofile 
  Applies delta to fromfile and produces a reconstructed  version of tofile.

(When using 'debpatch' and the old .deb is not available,
  use '/' for the fromfile.)

Usage: debpatch --info delta
  Write info on delta.

Options:
--no-md5   do not verify MD5 (if found in info in delta)
 -A        accept unsigned deltas
 Usage: debpatch-url [package names]
  Show URL wherefrom to downloads all deltas that may be used to upgrade the given package names
 WARNING, delta is not signed: Warning, no --old arguments, debdeltas will not generate any deltas. Warning, no non-option arguments, debdeltas does nothing. You may wish to rerun, to get also: delta is %(perc)3.1f%% of deb; that is, %(save)dkB are saved, on a total of %(tot)dkB. delta time %(time).2f sec, speed %(speed)dkB /sec, (%(algo)s time %(algotime).2fsec speed %(algospeed)dkB /sec) (corr %(corrtime).2f sec) done. downloaded debs,  downloaded deltas,  downloaded so far: time %(time).2fsec, size %(size)s, speed %(speed)4s/sec. not enough disk space (%(free)dkB) in directory %(dir)s for applying delta (needs %(size)dkB) patching to debs,  size %(size)s time %(time)dsec speed %(speed)s/sec total resulting debs, size %(size)s time %(time)dsec virtual speed %(speed)s/sec upgrading... Project-Id-Version: debdelta
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2010-11-06 23:40+0100
PO-Revision-Date: 2010-11-06 23:39+0100
Last-Translator: A Mennucc <mennucc1@debian.org>
Language-Team: italian <debian-italian@lists.debian.org>
Language: it
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
  -v         verboso (si puo' inserire più volte)
--no-act    non far nulla (far finta di lavorare)
 -d         aggiungi controlli di debug extra
 -k         tiene i file temporanei (per debug)
--gpg-home HOME
            specifica una diversa pagina HOME per gnupg

Si veda la pagina di manuale per ulteriori opzioni.
 Un proxy è definito nell'environment; userò "urllib2" per
scaricare; ma questo disabilita alcune caratteristiche e sarà
più lento e malfunzionante. Vedere la pagina di manuale. (Questo delta è difettoso. Potreste riprovare con l'opzione "-d"). (prelink %(time).2fsec, %(size)dk, %(speed)dk/s) (script %(time).2fsec %(speed)dk/sec) (il 'sources.conf' non descrive un server per '%s') (altro %.2fsec) Creato,    tempo %(time)5.2fsec, velocità %(speed)4s/sec, %(name)s Creazione di: Il delta non è presente: Il delta non è firmato: Il delta è troppo grande: Statistiche di debdelta-upgrade: Delta: %(present)d presenti e %(absent)d non presenti, Scaricato l'inizio di %s. Scaricato, tempo %(time)5.2fsec, velocità %(speed)4s/sec, %(name)s Scaricamento dell'inizio di %s... Errore: --gpg-home '%s' non esiste. Errore: '%s' non sembra essere un delta Debian. Errore: '%s' non sembra essere un pacchetto Debian. Errore: '%s' non è un file regolare. Errore: l'argomento non è una directory o un file regolare: Errore: l'argomento di --alt non è una directory o un file regolare: Errore: l'argomento --dir non è una directory: Errore: l'argomento di --old non è una directory o un file regolare: Errore: la caratteristica '%s' non può essere disabilitata. Errore: l'opzione '%s' è sconosciuta, vedere --help Errore: il test del delta è fallito: Errore: il file '%s' non esiste. Questo delta è difettoso. Si prega di inviare a %s i seguenti file: Inizializzazione della cache di APT... Cerco %s Ci vogliono tre nomi di file; si veda lo --help. Ci vuole un nome di file; si veda lo --help. Bisogna ancora scaricare %s di deltas. Non c'è abbastanza spazio nel disco per salvare '%s'. Non vi è abbastanza spazio disco per scaricare: Creato il deb, tempo: %(time).2fsec, velocità: %(speed)dk/sec I pacchetti deb ricreati saranno salvati nella directory %s Spiacente, non riesco a trovare un URI per scaricare il pacchetto
Debian di '%s'. Spiacente, non vi è una sorgente per l'aggiornamento di '%s'. Spiacente, il pacchetto '%s' è già alla versione più recente. Tempo totale: %.1f La cache di APT è stata aggiornata. Aggiornamento della cache di APT... Uso: debdelta [ opzioni...  ] DAFILE AFILE DELTA
  Calcola la differenza fra due deb, da DAFILE a AFILE, e lo scrive in DELTA

Opzione:
--signing-key KEY
            chiave usata per firmare il delta (usando GnuPG)
--no-md5    non includere MD5 nel delta
--needsold  crea un delta che può essere usato solo con il vecchio deb
 -M Mb      massima memoria da usare (per 'bsdiff' o 'xdelta')
--delta-algo ALGO
            usa uno specifico backend per calcolare i diff binari
 Uso: debdelta-upgrade [nomi pacchetti]
  Scarica i delta e li applica per creare i deb che servono
  per un 'apt-get upgrade'

Opzioni:
--dir DIR   directory in cui salvare i pacchetti
--deb-policy POLICY
            politica per accettare quali pacchetti scaricare
-A          accetta delta non firmati
 Uso: debdeltas [ opzioni...  ]  [deb e dirs, o file "Packages"]
   Calcola i delta per i pacchetti Debian.
   Li ordina per versione e produce i delta verso la versione più nuova.

Opzioni:
--signing-key KEY
            chiave GnuPG usata per firmare i delta
--dir DIR   forza il salvataggio dei delta in DIR
            (altrimenti vanno nella directory del 'deb' più nuovo)
--old ARGS  file 'Package' che contengono le liste delle versioni vecchie dei deb
--alt ARGS  per ogni deb, cerca anche in queste directory
 -n N       quanti delta creare per ogni deb (default illimitato)
--no-md5    non includere MD5 nel delta
--needsold  crea un delta che può essere usato solo se il vacchio deb è disponibile
--delta-algo ALGO
            usa l'algoritmo ALGO per calcolare le differenze binarie;
            valori possibili sono: xdelta xdelta-bzip xdelta3 bsdiff
 -M Mb      massima memoria da usare (per 'bsdiff' o 'xdelta')
--clean-deltas
            cancella i delta se il deb più nuovo non è presente
 Uso: debpatch [ opzioni...  ] delta  fromfile  tofile 
  Applica delta a fromfile e produce una versione ricostruita di tofile.

(Se il vecchio deb non è disponibile, si usi '/' come fromfile)

Usa: debpatch --info delta
  Scrive informazioni sul delta.

Opzioni:
--no-md5   non verifica lo MD5 (se è presente nelle info in delta)
 -A        accetta un delta non firmato
 Uso: debpatch-url [nomi pacchetti]
  Mostra lo URL da cui si scaricano i delta che possono aggiornare i
  pacchetti indicati.
 ATTENZIONE: il delta non è firmato: Attenzione, manca l'argomento --old, debdeltas non genererà alcun delta. Attenzione, non ci sono argomenti non-opzioni, debdeltas non fa nulla. Potresti riprovare più tardi, per scaricare anche: il delta è %(perc)3.1f%% del deb; cioè, sono stati risparmiati %(save)dkB su un totale di %(tot)dkB. delta tempo %(time).2f sec, velocità %(speed)dkB /sec, (%(algo)s tempo %(algotime).2fsec velocità %(algospeed)dkB /sec) (corr %(corrtime).2f sec) fatto. scaricati deb,  scaricato delta,  scaricato fin'ora: tempo %(time).2fsec, dimensione %(size)s, velocità %(speed)4s/sec. non c'è abbastanza spazio su disco (%(free)dkB) nella directory
%(dir)s per applicare il delta (servono %(size)dkB) creazione deb,  dimensione %(size)s tempo %(time)dsec velocità %(speed)s/sec totale deb scaricati, dimensione %(size)s tempo %(time)dsec velocità %(speed)s/sec aggiornamento... 