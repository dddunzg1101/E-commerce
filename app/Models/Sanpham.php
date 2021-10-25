<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Sanpham
 * 
 * @property int $sp_id
 * @property int $dm_id
 * @property string|null $sp_ten
 * @property int|null $sp_soluong
 * @property string|null $sp_mota
 * @property float|null $sp_giaban
 *
 * @package App\Models
 */
class Sanpham extends Model
{
	protected $table = 'sanpham';
	protected $primaryKey = 'sp_id';
	public $timestamps = false;

	protected $casts = [
		'dm_id' => 'int',
		'sp_soluong' => 'int',
		'sp_giaban' => 'float'
	];

	protected $fillable = [
		'sp_id',
		'dm_id',
		'sp_ten',
		'sp_soluong',
		'sp_mota',
		'sp_giaban',
		'ch_id',
		'sp_trangthai'
	];

	/**
	 * Get all of the hinhanh for the Sanpham
	 *
	 * @return \Illuminate\Database\Eloquent\Relations\HasMany
	 */
	public function hinhanh()
	{
		return $this->hasMany(Hinhanh::class, 'sp_id');
	}

	/**
	 * Get the danhmuc that owns the Sanpham
	 *
	 * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
	 */
	public function danhmuc()
	{
		return $this->belongsTo(Danhmuc::class, 'dm_id');
	}

	/**
	 * Get the mothinhanh associated with the Sanpham
	 *
	 * @return \Illuminate\Database\Eloquent\Relations\HasOne
	 */
	public function mothinhanh()
	{
		return $this->hasOne(Hinhanh::class, 'sp_id');
	}

	/**
	 * Get the cuahang that owns the Sanpham
	 *
	 * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
	 */
	public function cuahang()
	{
		return $this->belongsTo(Cuahang::class, 'ch_id');
	}

	public function getSLConLaiAttribute()
	{
		return max($this->attributes['sp_soluong']-Chitiethoadon::where('sp_id',$this->attributes['sp_id'])->sum('cthd_soluong'), 0);
	}

	public function getSLDaBanAttribute()
	{
		return max(Chitiethoadon::where('sp_id',$this->attributes['sp_id'])->sum('cthd_soluong'), 0);
	}

	public function getTTHoatDongAttribute()
	{
		return $this->cuahang()->first()->ch_trangthai;
	}


}
