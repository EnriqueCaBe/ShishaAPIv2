package cat.tecnocampus.rooms.application.services;

import cat.tecnocampus.rooms.application.dtos.MarcaDTO;
import cat.tecnocampus.rooms.persistence.MarcaDAO;
import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import org.springframework.stereotype.Component;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.util.List;

@Component
public class CreatePDF {

    private MarcaDAO marcaDAO;

    public CreatePDF(MarcaDAO marcaDAO) {
        this.marcaDAO = marcaDAO;
    }

    public void createFile() throws FileNotFoundException {
        Document document = new Document();

        List<MarcaDTO> marcaDTOList = marcaDAO.getAllMarcas();

        try {
            PdfWriter.getInstance(document,
                    new FileOutputStream("C:/Users/User/Desktop/HelloWorld-Table.pdf"));

            document.open();
            PdfPTable table = new PdfPTable(3); // 3 columns.
            for(MarcaDTO marcaDTO: marcaDTOList){
                PdfPCell cell1 = new PdfPCell(new Paragraph(marcaDTO.getName_marca()));
                cell1.setHorizontalAlignment(Element.ALIGN_CENTER);
                cell1.setVerticalAlignment(Element.ALIGN_MIDDLE);
                cell1.setPadding(5);
                PdfPCell cell2 = new PdfPCell(new Paragraph(marcaDTO.getPais()));
                cell2.setHorizontalAlignment(Element.ALIGN_CENTER);
                cell2.setVerticalAlignment(Element.ALIGN_MIDDLE);
                cell2.setPadding(5);
                PdfPCell cell3 = new PdfPCell(new Paragraph(marcaDTO.getDescripcion()));
                cell3.setHorizontalAlignment(Element.ALIGN_CENTER);
                cell3.setVerticalAlignment(Element.ALIGN_MIDDLE);
                cell3.setPadding(5);
                table.addCell(cell1);
                table.addCell(cell2);
                table.addCell(cell3);
            }

            document.add(table);

            document.close();
        } catch(Exception e){

        }

    }
}
