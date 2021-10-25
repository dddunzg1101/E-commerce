<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use App\Facades\CommonService;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Hinhanh
 * 
 * @property int $ha_id
 * @property int $sp_id
 * @property string $ha_đuongan
 *
 * @package App\Models
 */
class Hinhanh extends Model
{
	protected $table = 'hinhanh';
	protected $primaryKey = 'ha_id';
	public $timestamps = false;

	protected $casts = [
		'sp_id' => 'int'
	];

	protected $fillable = [
		'sp_id',
		'ha_duongdan'
	];

	public function getHaDuongdanAttribute()
    {
        return CommonService::getFile($this->attributes['ha_duongdan'],'hinhanh');
    }
}
