<?php

namespace App\Http\Controllers;

use App\Models\News;
use Illuminate\Http\Request;

class NewsController extends Controller
{
    public function index(){
        $news=News::paginate(1);
        $new = News::latest('id')->first();
        return response()->json(['new'=>$new,'news'=>$news]);
    }
    public function show($id){
        $news = News::where('id',$id)->get()->first();
        return response()->json($news);
    }
}
