# Benvenuto al mio progetto Dart! :wave: :smiley:

Questo è un progetto creato per :rocket:Start2Impact:rocket:, che comprende diversi esempi di classi in Dart, incluse classi astratte, classi estese, e metodi vari. Il progetto è strutturato attorno a un "switch" che permette all'utente di scegliere tra diverse opzioni e testare le varie funzionalità inserendo personalmente i dati. :dart: :rocket:

## Funzionalità :wrench:

1. **Richiesta 1:** Stampa a video una figura a forma di piramide.
2. **Richiesta 2:** Verifica se una stringa è palindroma.
3. **Richiesta 3:** Calcola e stampa l'area di un rettangolo dati base e altezza.
4. **Richiesta 4:** Stampa la somma di due numeri interi; se i numeri sono uguali, stampa il triplo della loro somma.
5. **Richiesta 5:** Calcola il risultato dell'esame di uno studente basato su voti di prova pratica e teorica.
6. **Richiesta 6:** Crea oggetti di tipo Persona con nome, cognome, email, password e data di nascita.
7. **Richiesta 7:** Calcola la media dei numeri in un array.
8. **Richiesta 8:** Crea una classe astratta di tipo Persona e classi estese Docente e Studenti, e poi una classe Università che rappresenta un insieme di docenti universitari e studenti.
    (Per la struttura completa delle classi, consiglio di consultare il file test.dart direttamente)

## Classi :books:

### `Person` :bust_in_silhouette:
La classe base astratta per `Student` e `Professor`. Ha quattro proprietà: `name`, `surname`, `id`, e `age`.

### `Student` :student:
Estende la classe `Person`. Ha tutte le proprietà della classe `Person`.

### `Professor` :man_teacher:
Estende la classe `Person`. Ha tutte le proprietà della classe `Person`, più una proprietà aggiuntiva: `subject`.

### `University` :school:
Ha due proprietà, `students` e `professors`, che sono liste di oggetti `Student` e `Professor` rispettivamente. Contiene metodi per cercare studenti e professori per cognome o ID, e per calcolare l'età media di studenti e professori.

## Come eseguire il progetto :running:

Per eseguire questo progetto, devi avere Dart installato sul tuo sistema. Se non l'hai già fatto, puoi installarlo [qui](https://dart.dev/get-dart). Una volta installato Dart, clona questa repository e naviga nella directory del progetto. Puoi poi eseguire il file `test.dart` utilizzando il seguente comando:

```shell
dart run test.dart
```

## Contatti :phone:

Se hai domande o commenti su questo progetto, non esitare a contattarmi! :email:

## Contribuire :handshake:

Le Pull Request sono le benvenute. Per modifiche importanti, apri prima un problema per discutere cosa vorresti cambiare. :pencil2:

## Licenza :balance_scale:

[MIT](https://choosealicense.com/licenses/mit/)

## Note :memo:

Questo progetto è stato realizzato come parte del mio percorso di apprendimento con :rocket:Start2Impact:rocket:. :mortar_board: :book:

## Ringraziamenti :heart:

Grazie a :rocket:Start2Impact:rocket: per la straordinaria opportunità di apprendimento! :clap: :trophy:

E un grande grazie a tutti voi per aver dato un'occhiata a questo progetto. Spero che sia utile o interessante per voi in qualche modo. :blush:
