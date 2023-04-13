// Librería de MySQL i Processing
import de.bezier.data.sql.*;
import java.util.Random;


//enumeración de las pantallas de la aplicación
enum PANTALLA {
  INICIO, PRINCIPAL, CENSO, CONTABILIDAD, ARCHIVO, AVISOS, ENLACES, CENSO_DETALLE, CENSO_NUEVOHERMANO,
    CONTABILIDAD_BALANCE, CONTABILIDAD_PRESUPUESTO, CONTABILIDAD_AÑADIRCONCEPTO, CONTABILIDAD_DETALLEBALANCE,
    CONTABILIDAD_DETALLEMOVIMIENTO, ARCHIVO_NUEVO, ARCHIVO_DETALLE, AVISOS_NUEVOAVISO, AVISOS_NUEVOEVENTO,
    AVISOS_DETALLEAVISO, AVISOS_DETALLEEVENTO;
};

///Pantalla actual
PANTALLA pantalla =PANTALLA.ARCHIVO;

boolean logged= false;

String userNameAdmin = "admin";
String userNameUser = "user";
String currentUserId;

boolean admin= true;
float estadoDeCuentas;
String recibo;

int lastKeyCodePressed;


void setup() {
  size(1280, 800);
  connexionBBDD();
  setColors();
  setFonts();
  setMedias();
  setGUI();

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
}
// Comprova si el login és correcte
boolean comprovaLogin() {
  return isValidated(userText.getValue(), passText.getValue() );
}

boolean comprovaAdmin() {
  return isAdmin(userText.getValue());
}
