<?php
namespace Application\Controllers\Patients;
require_once ('src/models/dataExtract.php');
require_once('src/lib/database.php');
use Application\Models\DataExtract\DataExtract;
use Application\Lib\Database\DatabaseConnection;

class Patients{
    function dataLoading(){
        if ($_SESSION['role'] == 'admin'){
            $title = 'Patients';
            $db = new DatabaseConnection();
            $patientList = (new DataExtract()) -> getList($db, "btsProject_User_Patient", "");
            include 'template/PatientsPageTemplate.php';
        } else {
            header('Refresh:0; url=index.php?page=homePage');
        }
    }
}

?>