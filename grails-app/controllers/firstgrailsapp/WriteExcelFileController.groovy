package firstgrailsapp

import org.apache.poi.hssf.usermodel.*

class WriteExcelFileController {

    def index() {
        List<MyProject> listOfProjects = MyProject.list()
        HSSFWorkbook workbook = new HSSFWorkbook()
        HSSFSheet sheet = workbook.createSheet("firstExcelSheet")

        int rowCount = 0;
        int columnCount = 0;

        //Generic code for list object
        for(int i=0;i<listOfProjects.size();i++)
        {
            HSSFRow row = sheet.createRow(i)
            HSSFCell cell = row.createCell(0);
            cell.cellValue = listOfProjects[i].id
            cell = row.createCell(1);
            cell.cellValue = listOfProjects[i].Name
            cell = row.createCell(2);
            cell.cellValue = listOfProjects[i].Description
            cell = row.createCell(3);
            cell.cellValue = listOfProjects[i].Author

        }



        workbook.write(new FileOutputStream("excel1.xls"))
        workbook.close()

    }
}
