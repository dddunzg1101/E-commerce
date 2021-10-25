<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Chitiethoadon
 * 
 * @property int $sp_id
 * @property int $hd_id
 * @property float|null $cthd_dongia
 * @property int|null $cthd_soluong
 *
 * @package App\Models
 */
class Chitiethoadon extends Model
{
	protected $table = 'chitiethoadon';
	public $incrementing = false;
	public $timestamps = false;

	protected $casts = [
		'sp_id' => 'int',
		'hd_id' => 'int',
		'cthd_dongia' => 'float',
		'cthd_soluong' => 'int'
	];

	protected $fillable = [
		'sp_id',
		'cthd_dongia',
		'cthd_soluong'
	];

	/**
	 * Get the sanpham that owns the Chitiethoadon
	 *
	 * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
	 */
	public function sanpham()
	{
		return $this->belongsTo(Sanpham::class, 'sp_id');
	}
}
