import 'dart:io';

void main() {
  bool fine = false;
  do{
    fine = funzioneMain();
  }
  while (!fine);
  
}


funzioneMain(){
  int? opzioneScelta;
  do {
    print('Digita un numero:\ntra 1 e 8 per controllare le richieste;\n0 per vedere la lista di funzioni\n9 per interrompere il programma.');
    opzioneScelta = int.tryParse(stdin.readLineSync()!);
    print("");
    if (opzioneScelta == null || (opzioneScelta < 0 || opzioneScelta > 9)) {
      print('Per favore inserisci un numero tra 0 e 9.');
    }
  } while (opzioneScelta == null || (opzioneScelta < 0 || opzioneScelta > 9));

  switch (opzioneScelta) {
    
    case 0:
      print('''
      1. asterischi(): Stampa un triangolo rovesciato di asterischi.
      2. palindromi(): Controlla se una stringa è palindroma.
      3. areaRettangolo(): Calcola l'area di un rettangolo.
      4. sommaProdotto(): Stampa la somma di due numeri, o il triplo della somma se i numeri sono uguali.
      5. risultatiEsami(): Calcola il risultato degli esame di uno studente.
      6. persona(): Crea due oggetti della classe Persona.
      7. mediaNumeri(): Calcola la media dei numeri in un array.
      8. classiUniversita(): Gestisce un sistema universitario con classi e metodi.
      ''');
      return false;
    
    case 1:
      asterischi();
      print("");
      return false;
      
    case 2:
      palindromi();
      print("");
      return false;

    case 3:
      areaRettangolo();
      print("");
      return false;

    case 4:
      sommaProdotto();
      print("");
      return false;

    case 5:
      risultatiEsami();
      print("");
      return false;

    case 6:
      classePersona();
      print("");
      return false;

    case 7:
      mediaNumeri();
      print("");
      return false;

    case 8:
      classeUniverisita();
      print("");
      return false;
    
    case 9:
      print("il programma è terminato");
      return true;

    // Aggiungi casi per le altre richieste
    default:
      print('Errore! Questo non dovrebbe accadere.');
      return true;
  }

}


/* Richiesta 1

Completa la funzione.

Stampa a video questa figura:

******

*****

****

***

**

*

*/
void asterischi(){
  print("Richiesta 1");
  print("Inserisci il numero di * che vuoi stampare = ");
  print("Valore consigliato = 6");
  String? inputString = stdin.readLineSync();
  
  try {
    int numeroAsterischi = int.parse(inputString!);

    for (int i = numeroAsterischi; i > 0; i--) {
      String asterischi = "*";
      asterischi = asterischi * i;
      print(asterischi);
    }
  } catch (e) {
    print('Errore: l\'input non è un numero intero valido.');
  }
}

/* Richiesta 2
Data la stringa “ingegni”, verifica se è una parola palindroma, in tal caso stampa “La stringa è palindroma”, altrimenti “La stringa non è palindroma”.

   Per esempio, se la stringa ha il valore esempio “ingegni” → stampa “La stringa è palindroma”.

 palindroma() {

 }*/
palindromi(){

  print("Richiesta 2");
  print("Inserisci una parola o un numero e scopri se sono palindromi");
  print("Parola consigliata: 'ingegni'");
  String? word = stdin.readLineSync();
  if(word != null){
    if(word.isEmpty){
      print("Assicurati di inserire una parola");
    } else {

      String? reverse = word.split('').reversed.join('');
      if (word == reverse){
        print("la stringa $word è palindorma");
      }
      else{
        print("la stringa $word non è palindroma => $reverse");
      }
    } 
  }
  else{
    print("Si è verificato un errore");
  }
}

/* Richiesta 3
Completa la funzione in modo tale che stampi l’area del rettangolo avendo come parametri l’altezza e la base. 

final int base = 4; 

final int altezza = 6;

  areaRettangolo() {

     // Il tuo codice

  }
*/
areaRettangolo(){
    
    print("Richiesta 3");
    print("Inserisci base e altezza e scopri l'area dell rettangolo");
    print("Valori consigliati: base = 4 | altezza = 6");
    
    int? base;
    do {
      print("Base");
      base = int.tryParse(stdin.readLineSync()!);
      if (base == null || base <= 0){
        print("Perfavore inserisci un numero positivo");
      }
    }while (base == null || base <= 0);
    
    
    int? altezza;
    do {
      print("Altezza");
      altezza = int.tryParse(stdin.readLineSync()!);
      if(altezza == null || altezza <= 0){
        print("Perfavore inserisci un numero positivo");
      }
    }while (altezza == null || altezza <= 0);

    int area = base * altezza;
    print("L'area del rettangolo è: $area");

  }

/*Richiesta 4
Completa la funzione in modo tale che stampi 
la somma di due numeri interi, se i due valori 
sono uguali fai la stampa del triplo della loro somma.

   Per esempio:

    Inseriti 2, 3 → stampa 5
    Inseriti 2, 2 → stampa 12 (perchè (2+2) * 3 = 12)
sommaProdotto(a: Int, b: Int) {

    // Il tuo codice

} 
*/
sommaProdotto(){
  print("Richiesta 4");

  print("Inserisci 2 valori 'a' e 'b' \nOtterrai la somma e se i valori sono uguali otterai il triplo della loro somma.");
  int? a , b;
  do {
    print("a:");
    a = int.tryParse(stdin.readLineSync()!);
    if (a == null){
      print("Perfavore inserisci un numero");
    }
  }while(a == null);
  
  do {
    print("b:");
    b = int.tryParse(stdin.readLineSync()!);
    if (b == null){
      print("Perfavore inserisci un numero");
    }
  }while(b == null);
  int r ;

  
  if (a == b){
    r = a * b * 3;
    print("I due valori sono uguali per tanto il risultato è = $r");
  }
  else{
    r = a + b;
    print("La somma dei due valori è = $r");
  }
}

/* Richiesta 5
Scrivi la funzione che calcoli il risultato dell’esame di uno studente. 

Il voto ottenuto nella prova scritta può variare da +8 a -8.

Il voto ottenuto nella prova pratica può variare da 0 a 24.

Il risultato finale è la somma dei dati di pratica e di teoria.

Se lo studente prende come voto 18 è promosso, se prende meno è bocciato.

Se il voto complessivo tra teoria e pratica fa 31 o 32, il risultato sarà 30 e lode.

///il tuo codice qui */
risultatiEsami(){
  print("Richiesta 5");
  print("Inserisci i voti della prova scritta (tra -8 e +8) e praticata (tra 0 e 24) dello studente e scropri la valutazione finale ");
  
  int? votoScritto, votoPratica;

  do{
    print("Valutazione prova scritta");
    votoScritto = int.tryParse(stdin.readLineSync()!);
    if(votoScritto==null || (votoScritto < -8 || votoScritto >8)){
      print("Perfavore inserisci un valore corretto, compreso tra -8 & +8");
    }
  }while(votoScritto==null || (votoScritto < -8 || votoScritto >8));

  do{
    print("Valutazione prova pratica");
    votoPratica = int.tryParse(stdin.readLineSync()!);
    if(votoPratica==null || (votoPratica < 0 || votoPratica >24)){
      print("Perfavore inserisci un valore corretto, compreso tra 0 & 24");
    }
  }while(votoPratica==null || (votoPratica < 0 || votoPratica >24));

  int valutazioneFinale = votoScritto + votoPratica;

  if(valutazioneFinale >= 31){
    print("Lo studente è promosso con 30 e lode");
  }
  else{
    if(valutazioneFinale >= 18){
      print("Lo studente è promosso con $valutazioneFinale");
    }
    else{
      print("Lo studente è bocciato");
    }
  }
}

/*Richiesta 6
Data la classe Persona, richiama nel main due differenti oggetti aventi nome, cognome, email, password e data di nascita.

Per esempio:

class Persona{

//inserire parametri qui

//inserire costruttore qui

}

void main(){

///inserire oggetti qui

}
*/
class Persona {
  String nome; 
  String cognome;
  String email;
  String password;
  DateTime dataDiNascita;


  Persona(this.nome, this.cognome, this.email, this.password, this.dataDiNascita);
}
classePersona(){
  print("Richiesta 6");
  print('''class Persona {
  String nome; 
  String cognome;
  String email;
  String password;
  DateTime dataDiNascita;
  }''');
  print("");

  Persona persona1 =Persona('Mario','Rossi', 'mario.rossi@email.com', 'passwordsegreta', DateTime(1980, 1, 1) 
  );
    Persona persona2 =Persona('Luigi','Verdi', 'luigi.verdi@email.com', 'passwordsegreta2', DateTime(1990, 1, 1) 
  );

  print("Primo esempio di Istanza di Persona");
  print("Nome = ${persona1.nome}");
  print("Cognome = ${persona1.cognome}");
  print("Email = ${persona1.email}");
  print("Password = ${persona1.password}");
  print("Data di nascita = ${persona1.dataDiNascita.toIso8601String().split('T')[0]}");
  print("");
  print("Secondo esempio di Instanza di Persona");
  print("Nome = ${persona2.nome}");
  print("Cognome = ${persona2.cognome}");
  print("Email = ${persona2.email}");
  print("Password = ${persona2.password}");
  print("Data di nascita = ${persona2.dataDiNascita.toIso8601String().split('T')[0]}");

}

/*Richiesta 7
Dato l’array [6,3,1,2,9] calcola la media dei numeri all’interno dell’array.

var arr = [6,3,1,2,9];

///scrivi la funzione qui
*/
mediaNumeri(){
  print("Richiesta 7");
  print("Inserisci 5 valori e scopri la loro media");
  print("Valori consigliati= [6,3,1,2,9]");
  List<int> array = [];
  for (int i=0; i < 5; i ++){
    int? numero;
    do {
        print("Inserisci ${i+1}° numero");
        numero = (int.tryParse(stdin.readLineSync()!));
        if(numero == null){
          print("Per favore inserisci un valore corretto");
        }
      } while (numero == null);
      array.add(numero);


  }

  int somma = 0;
  for(int i=0; i < array.length; i++){
    somma += array[i];
  }
  double media = somma / array.length;
  print("La media dei valori inseriti è $media");
}


/* Richiesta 8
Scrivi una classe astratta di tipo Persona che abbia come parametri nome, cognome, codice ed età. 

Scrivi una classe Docente che estende la classe Persona e rappresenti le seguenti informazioni
 relative a un docente: nome, cognome, codice ed età (da classe astratta), e contenga i metodi 
 getCodice, getCognome, GetNome e getEta che restituiscono rispettivamente il codice, il cognome, il nome e l’età del docente. 

Scrivi una classe Studenti che rappresenti le seguenti informazioni relative a uno studente e i get come sopra
 (che estende anch’essa la classe astratta): nome, cognome, età e codice.

Scrivi poi una classe Università, che rappresenti un insieme di docenti universitari tramite un array di tipo Docente e un insieme di studenti 
(array di studenti).

Inserisci nell’Univeristà i seguenti metodi: 

cercaDocentiByCodice

cercaDocentiByCognome

cercaStudentiByCodice

cercaStudenteByCognome

mediaEtàStudenti

mediaEtàDocenti
   */
class Person {
  String name;
  String surname;
  int id;
  int age;

  Person(this.name, this.surname, this.id, this.age);
}

class Professor extends Person {
  String subject;

  Professor(String name, String surname, int id, int age, this.subject) 
  : super(name, surname, id, age);

  getName() => name;
  getSurname() => surname;
  getId() => id;
  getAge() => age;
  getSubject() => subject;
}

class Student extends Person{
  Student(String name, String surname, int id, int age)
  : super(name, surname, id, age);

  getName() => name;
  getSurname() => surname;
  getId() => id;
  getAge() => age;
}

class University {
  List<Student> students = [];
  List<Professor> professors = [];
  
  //cercaStudenteByCognome
  List<Student> searchStudentBySurname(String surnameStudentSearch){
    List<Student> researchedStudents = [];
    for(Student student in students){
      if(surnameStudentSearch == student.surname){
        researchedStudents.add(student);
      }
    }
    return researchedStudents;
  }

  //cercaStudentiByCodice
  Student? searchStudentById(int idStudentSearch){
    for(Student student in students){
      if(idStudentSearch == student.id){
        return student;
      }
    }
    return null;
  }

  //cercaDocentiByCodice
  Professor? searchProfessorById(int idProfessorSearch){
    for(Professor professor in professors){
      if(idProfessorSearch == professor.id){
        return professor;
      }
    }
    return null;
  }

  //cercaDocentiByCognome
  List<Professor> searchProfessorBySurname(String surnameProfessorSearch){
    List<Professor> reaserchedProfessors = [];
    for(Professor professor in professors){
      if(surnameProfessorSearch == professor.surname){
        reaserchedProfessors.add(professor);
      }
    }
    return reaserchedProfessors;
  }

  //mediaEtàStudenti
  double? getAverageAgeStudents(){
    if(students.isEmpty){
      return null;
    }

    double averageAge = 0;
    for(Student student in students){
      averageAge += student.age;
    }
    return averageAge / students.length;
  }
   
   //mediaEtàDocenti
   double? getAverageAgeProfessors(){
    if(professors.isEmpty){
      return null;
    }

    double averageAge = 0;
    for(Professor professor in professors){
      averageAge += professor.age;
    }
    return averageAge / professors.length;
   }
}

classeUniverisita(){
  print("Richiesta 8");
  print("""
  Classe 'Person':
  Classe base astratta per 'Student' e 'Professor'. Ha quattro proprietà: 'name', 'surname', 'id', e 'age'.

  Classe 'Student':
  Estende la classe 'Person'. Ha tutte le proprietà della classe 'Person'.

  Classe 'Professor':
  Estende la classe 'Person'. Ha tutte le proprietà della classe 'Person', più una proprietà aggiuntiva: 'subject'.

  Classe 'University':
  Ha due proprietà, 'students' e 'professors', che sono liste di oggetti 'Student' e 'Professor' rispettivamente.
  Contiene metodi per cercare studenti e professori per cognome o ID, e per calcolare l'età media di studenti e professori.
  """);

  print("""
  1. Funzione 'searchStudentBySurname': Questa funzione accetta un cognome come parametro di input e cerca tra gli studenti per trovare corrispondenze. Restituisce una lista di studenti con il cognome corrispondente.

  2. Funzione 'searchStudentById': Questa funzione accetta un ID come parametro di input e cerca tra gli studenti per trovare corrispondenze. Restituisce lo studente con l'ID corrispondente. Se nessuno studente con l'ID dato viene trovato, restituisce null.

  3. Funzione 'searchProfessorById': Questa funzione accetta un ID come parametro di input e cerca tra i professori per trovare corrispondenze. Restituisce il professore con l'ID corrispondente. Se nessun professore con l'ID dato viene trovato, restituisce null.

  4. Funzione 'searchProfessorBySurname': Questa funzione accetta un cognome come parametro di input e cerca tra i professori per trovare corrispondenze. Restituisce una lista di professori con il cognome corrispondente.

  5. Funzione 'getAverageAgeStudents': Questa funzione calcola l'età media di tutti gli studenti. Se la lista degli studenti è vuota, la funzione restituisce null. Altrimenti, restituisce l'età media.

  6. Funzione 'getAverageAgeProfessors': Questa funzione calcola l'età media di tutti i professori. Se la lista dei professori è vuota, la funzione restituisce null. Altrimenti, restituisce l'età media.
  """);



}

  












