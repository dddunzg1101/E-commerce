<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Danhmuc
 * 
 * @property int $dm_id
 * @property string|null $dm_ten
 *
 * @package App\Models
 */
class Danhmuc extends Model
{
	protected $table = 'danhmuc';
	protected $primaryKey = 'dm_id';
	public $timestamps = false;

	protected $fillable = [
		'dm_id',
		'dm_ten',
		'ch_id',
	];

	/**
	 * Get the cuahang that owns the Danhmuc
	 *
	 * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
	 */
	public function cuahang()
	{
		return $this->belongsTo(Cuahang::class, 'ch_id');
	}
}
