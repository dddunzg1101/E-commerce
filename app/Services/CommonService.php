<?php

namespace App\Services;

use App\Models\Others\Notification;
use Carbon\Carbon;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\ImageManagerStatic as Image;

class CommonService
{
    /**
     * * getDateFolderCreate.
     *
     * @param  mixed $date
     * @return void
     */
    public function getDateFolderCreate($date)
    {
        $date = Carbon::parse($date);

        return $date->format('Y') . '/' . $date->format('Ymd');
    }

    /**
     * getFile
     *
     * @param  datetime $datetime
     * @param  string $name
     * @param  string $disk
     * @return string
     */
    public function getFile($name, $disk)
    {

        return Storage::disk($disk)->url($name);
    }

    /**
     * getFile
     *
     * @param  datetime $datetime
     * @param  string $name
     * @param  string $disk
     * @return string
     */
    public function getPathFile($datetime, $name, $disk)
    {
        $path = $this->getDateFolderCreate($datetime) . '/' . $name;
        
        return Storage::disk($disk)->getAdapter()->applyPathPrefix($path);
    }

    /**
     * deleteFile
     *
     * @param  datetime $datetime
     * @param  string $name
     * @param  string $disk
     * @return void
     */
    public function deleteFile($datetime, $name, $disk)
    {
        if (!$name || !$datetime || !$disk) {
            $file = $this->getDateFolderCreate($datetime) . '/' . $name;
            if (Storage::disk($disk)->exists($file)) {
                Storage::disk($disk)->delete($file);
            }
        }
    }

}
