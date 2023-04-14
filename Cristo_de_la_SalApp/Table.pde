
class Table {

  String[] tableHeaders;   // Títulos de las columnas
  String[][] tableData;    // Datos de la tabla
  float[] columnWidths;    // Ancho de las columnas

  int numCols, numRows;  // Número de filas y columnas

  // Constructor
  Table(int nr, int nc) {
    this.numRows = nr;
    this.numCols = nc;
  }

  // Setters

  void setHeaders(String[] h) {
    this.tableHeaders = h;
  }

  void setData(String[][] d) {
    this.tableData = d;
  }

  void setValueAt(String value, int nr, int nc) {
    this.tableData[nr][nc] = value;
  }

  void setColumnWidths(float[] w) {
    this.columnWidths = w;
  }

  // Dibuja tabla
  void display(float x, float y, float w, float h) {

    fill(200, 50);
    stroke(0);
    strokeWeight(3);
    rect(x, y, w, h);

    float rowHeight = h / numRows;
    fill(getColorAt(0));
    stroke(0);
    strokeWeight(3);
    rect(x, y, w, rowHeight);

    // Dibuja files
    stroke(0);
    for (int r = 1; r <numRows; r++) {
      if (r==1) {
        strokeWeight(3);
      } else {
        strokeWeight(1);
      }
      line(x, y + r*rowHeight, x + w, y + r*rowHeight);
    }

    // Dibuja Columnas
    float xCol = x;
    for (int c = 0; c<numCols; c++) {
      xCol += w*columnWidths[c]/100.0;
      line(xCol, y, xCol, y + h);
    }

    // Dibuja textos
    fill(0);
    textSize(24);
    for (int r = 0; r< numRows; r++) {
      xCol = x;
      for (int c = 0; c< numCols; c++) {
        if (r==0) {
          pushStyle();
          fill(255);
          text(tableHeaders[c], xCol + 10, y + (r+1)*rowHeight - 10);
          popStyle();
        } else {
          text(tableData[r-1][c], xCol + 10, y + (r+1)*rowHeight - 10);
        }
        xCol += w*columnWidths[c]/100.0;
      }
    }
  }
}
