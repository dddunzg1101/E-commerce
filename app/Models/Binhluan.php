<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Binhluan
 * 
 * @property int $bl_id
 * @property int $bl_id_rep
 * @property int $sp_id
 * @property string|null $bl_noidung
 *
 * @package App\Models
 */
class Binhluan extends Model
{
	protected $table = 'binhluan';
	protected $primaryKey = 'bl_id';
	public $timestamps = false;

	protected $casts = [
		'bl_id_rep' => 'int',
		'sp_id' => 'int'
	];

	protected $fillable = [
		'bl_id',
		'bl_id_rep',
		'sp_id',
		'bl_noidung',
		'kh_id',
		'bl_status',
	];

	/**
	 * Get the user that owns the Binhluan
	 *
	 * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
	 */
	public function user()
	{
		return $this->belongsTo(KhachHangModel::class, 'kh_id');
	}

	/**
	 * Get the sanpham that owns the Binhluan
	 *
	 * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
	 */
	public function sanpham()
	{
		return $this->belongsTo(Sanpham::class, 'sp_id');
	}

	/**
	 * Get the khachhang that owns the Binhluan
	 *
	 * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
	 */
	public function khachhang()
	{
		return $this->belongsTo(KhachHangModel::class, 'kh_id');
	}
}
