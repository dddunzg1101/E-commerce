<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Hoadon
 * 
 * @property int $hd_id
 * @property string|null $hd_ma
 * @property float|null $hd_tongtien
 * @property Carbon|null $hd_ngaylap
 * @property int|null $hd_trangthai
 *
 * @package App\Models
 */
class Hoadon extends Model
{
	protected $table = 'hoadon';
	protected $primaryKey = 'hd_id';
	public $timestamps = false;

	protected $casts = [
		'hd_tongtien' => 'float',
		'hd_trangthai' => 'int'
	];

	protected $dates = [
		'hd_ngaylap'
	];

	protected $fillable = [
		'hd_ma',
		'hd_tongtien',
		'hd_ngaylap',
		'hd_trangthai'
	];

	/**
	 * Get all of the sanpham for the Hoadon
	 *
	 * @return \Illuminate\Database\Eloquent\Relations\HasMany
	 */
	public function sanpham()
	{
		return $this->hasManyThrough(Sanpham::class, Chitiethoadon::class,'hd_id', // Foreign key on the cars table...
		'sp_id', // Foreign key on the owners table...
		'hd_id', // Local key on the mechanics table...
		'sp_id' // Local key on the cars table...
	);
	}

	/**
	 * Get all of the chitiethoadon for the Hoadon
	 *
	 * @return \Illuminate\Database\Eloquent\Relations\HasMany
	 */
	public function chitiethoadon()
	{
		return $this->hasMany(Chitiethoadon::class, 'hd_id');
	}

	public function gettongsoluongAttribute($dm_id)
	{
		return Chitiethoadon::with('sanpham')->
		where('hd_id',$this->attributes['hd_id'])->
		where('dm_id',$dm_id)->sum('cthd_soluong');
	}

}
