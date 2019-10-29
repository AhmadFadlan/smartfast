<?php

namespace App\FormFields;

use TCG\Voyager\FormFields\AbstractHandler;

class FroalaTextEditor extends AbstractHandler
{
    protected $codename = 'froala_text_box';

    public function createContent($row, $dataType, $dataTypeContent, $options)
    {
        return view('formfields.froala_text_box', [
            'row' => $row,
            'options' => $options,
            'dataType' => $dataType,
            'dataTypeContent' => $dataTypeContent
        ]);
    }
}
