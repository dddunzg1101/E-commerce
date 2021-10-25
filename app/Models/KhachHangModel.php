<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;

class KhachHangModel extends Authenticatable
{
    use HasFactory;
    protected $table = 'khachhang';
    protected $primaryKey = 'kh_id';
    protected $fillable = ['kh_id','kh_hoten','username','password'];
    protected $hidden = ['password'];

    /**
	 * Get the cuahang that owns the Khachhang
	 *
	 * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
	 */
	public function cuahang()
	{
		return $this->belongsTo(Cuahang::class, 'kh_id','kh_id');
	}
}
