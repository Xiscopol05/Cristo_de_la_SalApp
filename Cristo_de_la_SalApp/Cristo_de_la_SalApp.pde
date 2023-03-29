// Librería de MySQL i Processing
import de.bezier.data.sql.*;

//enumeración de las pantallas de la aplicación
enum PANTALLA {
  INICIO, PRINCIPAL, CENSO, CONTABILIDAD, ARCHIVO, AVISOS, ENLACES, CENSO_DETALLE, CENSO_NUEVOHERMANO,
    CONTABILIDAD_BALANCE, CONTABILIDAD_PRESUPUESTO, CONTABILIDAD_AÑADIRCONCEPTO, CONTABILIDAD_DETALLEBALANCE,
    CONTABILIDAD_DETALLEMOVIMIENTO, ARCHIVO_NUEVO, ARCHIVO_DETALLE, AVISOS_NUEVOAVISO, AVISOS_NUEVOEVENTO, AVISOS_DETALLEAVISO, AVISOS_DETALLEEVENTO;
};

///Pantalla actual
PANTALLA pantalla =PANTALLA.AVISOS;

boolean logged= false;

boolean admin= true;

String userNameAdmin = "admin";
String userNameUser = "user";
String userValidated="";

float estadoDeCuentas = 27500.50;
int lastKeyCodePressed;


void setup() {
  size(1280, 800);
  setColors();
  setFonts();
  setMedias();
  setGUI();
  connexionBBDD();

  desktop = Desktop.getDesktop();
}

void draw() {
  //Establece una configuración por defecto
  textAlign(LEFT);
  fill(0);
  textFont(getFontAt(4));


  // Dibuja la pantalla correspondiente
  switch(pantalla) {
  case INICIO:
    dibujaPantallaInicio();
    break;
  case PRINCIPAL:
    dibujaPantallaPrincipal();
    break;
  case CENSO:
    dibujaPantallaCenso();
    break;
  case CONTABILIDAD:
    dibujaPantallaContabilidad();
    break;
  case ARCHIVO:
    dibujaPantallaArchivo();
    break;
  case AVISOS:
    dibujaPantallaAvisos();
    break;
  case ENLACES:
    dibujaPantallaEnlaces();
    break;
  case CENSO_DETALLE:
    dibujaPantallaCensoDetalle();
    break;
  case CENSO_NUEVOHERMANO:
    dibujaPantallaCensoNuevoHermano();
    break;
  case CONTABILIDAD_BALANCE:
    dibujaPantallaContabilidadBalance();
    break;
  case CONTABILIDAD_PRESUPUESTO:
    dibujaPantallaContabilidadPresupuesto();
    break;
  case CONTABILIDAD_AÑADIRCONCEPTO:
    dibujaPantallaContabilidadAñadirConcepto();
    break;
  case CONTABILIDAD_DETALLEBALANCE:
    dibujaPantallaContabilidadDetalleBalance();
    break;
  case CONTABILIDAD_DETALLEMOVIMIENTO:
    dibujaPantallaContabilidadDetalleMovimiento();
    break;
  case ARCHIVO_NUEVO:
    dibujaPantallaArchivoNuevo();
    break;
  case ARCHIVO_DETALLE:
    dibujaPantallaArchivoDetalle();
    break;
  case AVISOS_NUEVOAVISO:
    dibujaPantallaAvisosNuevoAviso();
    break;
  case AVISOS_NUEVOEVENTO:
    dibujaPantallaAvisosNuevoEvento();
    break;
  case AVISOS_DETALLEAVISO:
    dibujaPantallaAvisosDetalleAviso();
    break;
  case AVISOS_DETALLEEVENTO:
    dibujaPantallaAvisosDetalleEvento();
    break;
  }

  updateCursor();   // Modifica la apariencia del cursor

  if ( userText.text.equals(userNameAdmin) &&
    passText.text.equals("1234")) {
    admin = true;
  } else if (( userText.text.equals(userNameUser) &&
    passText.text.equals("1234"))) {
    admin = false;
  }
}
// Comprova si el login és correcte
boolean comprovaLogin() {
  if (((userText.text.equals(userNameAdmin)||(userText.text.equals(userNameUser))) &&
    passText.text.equals("1234"))) {
          userValidated = userText.getValue();
    return true;
  } else {
    return false;
  }
}
