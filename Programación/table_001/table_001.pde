// Components de la GUI
// Taula
Table t;

// Dimensions de la taula
float tableW = 1200, tableH = 500;

// Número de files (capçalera inclosa) i columnes de la taula
int files = 4, columnes = 9;

// Títols de les columnes 
String[] headers = {"Número hermano", "Nombre", "Apellidos", "Correo electrónico", "Fecha nacimiento", "Fecha de alta", "Fecha alta", "Dirección", "Cuenta Bancaria",};

// Amplades de les columnes
float[] colWidths = {5,10,10,10,10,10,15,10,10,10};

// Dades de la taula
String[][] info = {
                     {"0001", "Benito","Pérez Galdós", "bps@gmail.com", "31/10/1995", "10/10/2020", "C/Roble, 18, Bargas, 45593", "0000 0000 00 0000000000", "Al corriente"},
                     {"0001", "Benito","Pérez Galdós", "bps@gmail.com", "31/10/1995", "10/10/2020", "C/Roble, 18, Bargas, 45593", "0000 0000 00 0000000000", "Al corriente"},
                     {"0001", "Benito","Pérez Galdós", "bps@gmail.com", "31/10/1995", "10/10/2020", "C/Roble, 18, Bargas, 45593", "0000 0000 00 0000000000", "Al corriente"},
                     {"0001", "Benito","Pérez Galdós", "bps@gmail.com", "31/10/1995", "10/10/2020", "C/Roble, 18, Bargas, 45593", "0000 0000 00 0000000000", "Al corriente"},
                     {"0001", "Benito","Pérez Galdós", "bps@gmail.com", "31/10/1995", "10/10/2020", "C/Roble, 18, Bargas, 45593", "0000 0000 00 0000000000", "Al corriente"},
                  };

void setup(){
  
  fullScreen();      // Dimensions de la Pantalla
  
  // Creació de la taula
  t = new Table(files, columnes);
  t.setHeaders(headers);
  t.setData(info);
  t.setColumnWidths(colWidths);
  
}

void draw(){
 
  background(255);
  
  // Dibuixa la taula
  t.display(50, 50, tableW, tableH);
  
}
