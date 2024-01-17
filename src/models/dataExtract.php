<?php
namespace Application\Models\DataExtract;

class DataExtract
{    
    function credentialVerification($tab, $db){
        $rqt = $db -> getConnection() -> prepare (
        "SELECT * FROM btsProject_User WHERE " . " mail = '" . $tab['mail']. "' and password = '" . $tab['password'] . "';");
        $rqt -> execute();
        $data = $rqt -> fetch();
        // echo var_dump($data);
        return $data;   
        
    }
    function getRowWhere($db, $table, $where, $field){
        $rqt = $db -> getConnection() -> prepare ("SELECT * FROM $table WHERE " . $where[0] . " = " . $where[1] . sortBy($field) . ";");
        $rqt -> execute();
        $data = $rqt -> fetchAll();
        return $data;
    }
    function getItemWhere($db, $item, $table, $where){
        $rqt = $db -> getConnection() -> prepare ("SELECT $item FROM $table WHERE " . $where[0] + " = " + $where[1] . ";");
        $rqt -> execute();
        $data = $rqt -> fetch();
        return $data;
    }
    function getList($db, $table, $field){
        $rqt = $db -> getConnection() -> prepare (
            "SELECT * FROM $table ". sortBy($field) .";");
        $rqt -> execute();
        $data = $rqt -> fetchAll();
        return $data;
    }
    function getListWhere($db, $table, $id, $idTitle, $field){
        $rqt = $db -> getConnection() -> prepare (
            "SELECT * FROM $table WHERE $idTitle" ." = ". $id . sortBy($field) .";");
        $rqt -> execute();
        $data = $rqt -> fetchAll();
        return $data;
    }
    function sortBy($field){
        if ($field == null){
            return "";
        }
        else if ($field != null){
            $requestComplement = " ORDER BY " . $field;
            return $requestComplement;
        }
    }
}
?>