<?php

namespace App\Helpers;
use Illuminate\Http\Request;
// use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;
// use Illuminate\Database\Eloquent\Model;

class Tools {

    // TODO: fungsi conver image ke base64
    public static function imageBase64($url){
      $urlParts = pathinfo($url);
      $extension = $urlParts['extension'];

      // TODO: fungsi ini untuk mengambil data file
      $response = file_get_contents($url);
      // dd($response);
      // TODO: gunakan fungsi ini jika mengambil data dari link internet
      // $ch = curl_init();
      // curl_setopt($ch, CURLOPT_URL, $url);
      // curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
      // curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
      // curl_setopt($ch, CURLOPT_HEADER, 0);
      // $response = curl_exec($ch);
      // curl_close($ch);

     // TODO: hasil convert gambar ke text
      $base64 = 'data:image/' . $extension . ';base64,' . base64_encode($response);
      return $base64;
    }

    // TODO: fungsi untuk mendapatkan info table
    public static function getFieldInfoFromTable($FieldInfo){

      foreach ($FieldInfo as $rows => $field) {
        $exp = explode(')',$field['Type']);
        $type = explode('(',$exp[0]);
        $value = array_key_exists(1, $type)? $type[1] : '';
        // echo $field['Field']." ".print_r($type)."<br>";
        $arr[$rows] = array(
          'field' => $field['Field'],
          'type' => $type[0],
          'length'=> $value
        );
      }

      return $arr;

    }

    // TODO: fungsi input html
    public static function form_input($col,$type='text',$val=null,$tag=null){
      $inp = "<input
  				type='".$type."'
  				".$tag."
  				name='".$col."'
  				id='".$col."'
  				placeholder='".str_replace("_"," ",strtoupper($col))."'
  				value='".$val."'
  				class=\"form-control\">";

  		return $inp;
    }

    public static function form_now($col,$type='date',$tag=null)
  	{
  		$inp = "<input
  				type='".$type."'
  				".$tag."
  				name='".$col."'
  				id=\"last_name\"
  				placeholder='".str_replace("_"," ",strtoupper($col))."'
  				value='".date('Y-pg-d h:i:s')."'
  				class=\"input-text\">";
  		return $inp;
  	}

  	//form textarea
  	public static function form_textarea($col,$val=null,$tag=null)
  	{
  		$inp = "<textarea class=\"form-control\"
  				rows=\"3\"
  				name='".$col."'
  				placeholder='".str_replace("_"," ",strtoupper($col))."'
  				id='".$col."' ".$tag.">".$val."</textarea>";
  		return $inp;
  	}

  	//form dropdown
  	public static function form_dropdown_enum($tbl,$col,$selected=null,$tag=null)
  	{
  		$inp = "<select class=\"select2\" style=\"width:100%;\" tabindex=\"2\" ".$tag." name=\"".$col."\">";
  				$inp .= "<option value=\"\"></option>";
     				$result = mysql_query("SELECT COLUMN_TYPE FROM INFORMATION_SCHEMA.COLUMNS
  				WHERE TABLE_SCHEMA = '".$GLOBALS['d']."' and TABLE_NAME = '".$tbl."' AND COLUMN_NAME = '".$col."'") or die (mysql_error());
  				$row = mysql_fetch_array($result);
  				$enumList = explode(",", str_replace("'", "", substr($row['COLUMN_TYPE'], 5, (strlen($row['COLUMN_TYPE'])-6))));
  				foreach($enumList as $value){
  				if(!empty($selected) and $selected==$value)
  				{
  					$s="selected";
  				}else{
  					$s="";
  				}
  				$inp .= "<option $s value=\"$value\">".str_replace("_"," ",ucwords($value))."</option>";
  				}
  				$inp .= "</select>";
  		return $inp;
  	}


  	//form dropdown
  	public static function form_dropdown_table($tbl,$col,$id_col,$sql_cond=null,$selected=null,$tag=null,$sort=null)
  	{
  		if(is_array($col)==true){
  			$name_col = $col[0];
  		}else{
  			$name_col = $col;
  		}
  		if(!empty($sql_cond))
  		{
  			$wh = " and ".$sql_cond;
  		}else{
  			$wh = "";
  		}
  		$order = !empty($sort) ? "ORDER BY ".$sort : '';
  		$inp = "<select class=\"select2\" style=\"width:100%;\" ".$tag." name=\"".$id_col."\">";
  		$inp .= "<option value=\"\"></option>";
  		$result = mysql_query("SELECT * FROM ".$tbl." WHERE 1=1 ".$wh." ".$order);
  			//echo "SELECT * FROM ".$tbl." WHERE 1=1 ".$wh."<br>";
  			//echo $selected;
  			while($row = mysql_fetch_array($result))
  			{
  				$display_col = "";
  				if(is_array($col)==true){
  					foreach($col as $show_col)
  					{
  						//$display_col .= $row[$show_col]." ";
  						$display_col = $row[$show_col];
  					}
  				}else{
  					$display_col = $row[$col];
  				}
  				if(!empty($selected) and $selected==$row[$name_col])
  				{
  					$s="selected";
  				}else{
  					$s="";
  				}
  				$inp .= "<option $s value=\"".$row[$name_col]."\">".$display_col."</option>";
  			}
  		$inp .= "</select>";

  		return $inp;
  	}
}
