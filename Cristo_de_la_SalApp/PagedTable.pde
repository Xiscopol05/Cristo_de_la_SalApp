
class PagedTable {

  String[] tableHeaders;   // Títulos de las columnas
  String[][] tableData;    // Datos de la tabla
  float[] columnWidths;    // Ancho de las columnas
  int[] maxCaracters;    // Máximo de lletras de las columnas

  int numCols, numRows;  // Número de filas y columnas

  int numPage;
  int numTotalPages;

  // Constructor
  PagedTable(int nr, int nc) {
    this.numRows = nr;
    this.numCols = nc;
    this.numPage = 0;
  }

  // Setters

  void setHeaders(String[] h) {
    this.tableHeaders = h;
  }

  void setData(String[][] d) {
    this.tableData = d;
    this.numTotalPages = d.length / (this.numRows-1);
  }

  void setValueAt(String value, int nr, int nc) {
    this.tableData[nr][nc] = value;
  }

  void setColumnWidths(float[] w) {
    this.columnWidths = w;
  }

  void setColumnMaxChars(int[] c) {
    this.maxCaracters = c;
  }

  void nextPage() {
    if (this.numPage<this.numTotalPages) {
      this.numPage++;
    }
  }

  void prevPage() {
    if (this.numPage>0) {
      this.numPage--;
    }
  }

  // Dibuja tabla
  void display(float x, float y, float w, float h) {

    pushStyle();

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
    for (int r = 0; r < numRows; r++) {
      xCol = x;
      for (int c = 0; c< numCols; c++) {
        if (r==0) {
          pushStyle();
          fill(255);
          text(tableHeaders[c], xCol + 10, y + (r+1)*rowHeight - 10);
          popStyle();
        } else {
          int k = (numRows-1)*numPage + (r-1);
          if (k<tableData.length) {
            String t = retallaText(tableData[k][c], maxCaracters[c]);
            text(t, xCol + 10, y + (r+1)*rowHeight - 10);
          }
        }
        xCol += w*columnWidths[c]/100.0;
      }
    }
  }


  String retallaText(String allText, int maxLength) {
    String t = allText.substring(0, min(maxLength, allText.length()));
    if (!allText.equals(t)) {
      t+="...";
    }
    return t;
  }
}
