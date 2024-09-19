<?php
namespace App\Permissions;

class Permission
{
    public function Permission(){
        return [
                'admin' => [
                    'index/admin',
                    'post-all/admin',
                    'get-all/category',
                    'get/category',
                    'delete/category',
                    'update-all/category',
                    'post-all/category',

                    'get-all/admin',
                    'get/admin',
                    'delete/admin',
                    'update-all/admin',
                    'post-all/admin',

                    'get-all/user',
                    'get/user',
                    'delete/user',
                    'update-all/user',
                    'post-all/user',

                    'get-all/product',
                    'get/product',
                    'delete/product',
                    'update-all/product',
                    'post-all/product',

                    'get-all/SubCategory',
                    'get/SubCategory',
                    'delete/SubCategory',
                    'update-all/SubCategory',
                    'post-all/SubCategory',
                ],


                'user' => [
                    'post-all/attendance',
                    'post-all/user',
                    'update-all/user',
                    'get-all/user',
                    'get/user',
                    'get/attendance',

                    'get/wallet',

                    'get-all/category',
                    'get/category',

                    'get-all/SubCategory',
                    'get/SubCategory',


                    'get-all/product',
                    'get/product',

                ],

                'vendor' => [
                    'index/vendor',
                    'get-all/product',
                    'get/product',
                    'post-all/product',
                    'delete/product',
                    'update-all/product',

                    'get-all/part',
                    'get/part',
                    'post-all/part',
                    'delete/part',
                    'update-all/part',


                    'get-all/ProductGallary',
                    'get/ProductGallary',
                    'post-all/ProductGallary',
                    'delete/ProductGallary',
                    'update-all/ProductGallary',

                    'get-all/PartGallary',
                    'get/PartGallary',
                    'post-all/PartGallary',
                    'delete/PartGallary',
                    'update-all/PartGallary',

                ],
                // Additional roles/permissions can be added here
        ];
    }
}
