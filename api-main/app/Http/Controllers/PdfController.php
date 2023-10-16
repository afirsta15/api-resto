<<?php use PDF;

public function generate()
{
    $pdf = PDF::loadView('pdf.view'); // Create a PDF from a view
    return $pdf->stream('document.pdf');
}
 ?>