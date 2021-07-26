<?php

namespace App\Http\Controllers;

use App\Models\Comment;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;



class CommentController extends Controller
{


    public function postCreateComment( Request $request)
    {
        
        $comment = new Comment();
        $comment->content = $request['content'];
        $comment->id_post = $request['id_post'];
        $request->user()->comments()->save($comment);
        
        return redirect()->route('dashboard');
    }
}