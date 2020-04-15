<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Questioner extends Model
{
    protected $table = 'questioners';
    protected $guarded = ['id'];
}