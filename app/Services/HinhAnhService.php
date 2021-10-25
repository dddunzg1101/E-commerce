<?php

namespace App\Services;

use App\Facades\CommonService;
use App\Models\Hinhanh;
use App\Models\Sanpham;
use Illuminate\Support\Facades\Storage;

class HinhAnhService
{
    public function uploadImage(Sanpham $sanpham, $request)
    {
        if ($request->hasFile('hinhanh')) {
            Hinhanh::where('sp_id',$sanpham->sp_id)->delete();
            foreach ($request->file('hinhanh') as $key => $value) {
                $path = CommonService::getDateFolderCreate(date('Y-m-d H:i:s'));
    
                Storage::disk('hinhanh')->makeDirectory($path);
    
                $storagePath = Storage::disk('hinhanh')->put($path, $value);
                $hinhanh=$sanpham->hinhanh()->create([
                    'ha_duongdan' => $storagePath,
                ]);
            }

            return $hinhanh;
        }
    }
}