using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace Prueba3
{
    public class ImagenX
    {
        public static string subirImagen(FileUpload FuploadImgen)
        {
            int tamaño = FuploadImgen.PostedFile.ContentLength;
            byte[] ImagenOriginal = new byte[tamaño];

            FuploadImgen.PostedFile.InputStream.Read(ImagenOriginal, 0, tamaño);

            Bitmap imagenOriginalBinaria = new Bitmap(FuploadImgen.PostedFile.InputStream);


            System.Drawing.Image nImage;
            int tamañonew = 200;
           nImage = imagenOriginalBinaria;
            byte[] bImagen = new byte[tamañonew];
            ImageConverter convert = new ImageConverter();
            bImagen = (byte[])convert.ConvertTo(nImage, typeof(byte[]));


            string imagenDataURL64 = "data:image/jpg;base64," + Convert.ToBase64String(bImagen);
            return imagenDataURL64;
        }
        
    }
}