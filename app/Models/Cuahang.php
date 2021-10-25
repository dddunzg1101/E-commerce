<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Cuahang
 * 
 * @property int $ch_id
 * @property string|null $ch_ten
 * @property string|null $ch_diachi
 * @property string|null $ch_gioithieu
 *
 * @package App\Models
 */
class Cuahang extends Model
{
	protected $table = 'cuahang';
	protected $primaryKey = 'ch_id';
	public $timestamps = false;

	protected $fillable = [
		'ch_id',
		'ch_ten',
		'ch_diachi',
		'ch_gioithieu',
		'ch_trangthai',
		'kh_id'
	];
}
