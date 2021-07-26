<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Models\Comment;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;


class PostController extends Controller
{
   
    public function getDashboard()
    {
        $posts = Post::all()->sortByDesc('created_at');
        $comments = Comment::all();
        return view('dashboard',['posts'=> $posts, 'comments'=> $comments]);
    }
    
    public function getMyPosts()
    {
        $posts = Post::all()->sortByDesc('created_at');
        $comments = Comment::all();
        return view('my_posts',['posts'=> $posts, 'comments'=> $comments]);
    }


    public function getDeletePost($post_id)
    {
        $post = Post::where('id', $post_id)->first();
        $post -> delete();
        $message = 'Successfully deleted';
        return redirect()->route('dashboard')->with(['message' => $message]);
    }

    public function getIndividualPost($post_id)
    {
        //$post = Post::where('id', $post_id)->first();

        $post = Post::find($post_id);
        return view('individual_post', compact('post'));
        
        //return redirect()->route('dashboard')->with(['message' => $message]);
    }

    public function getEditPost($post_id)
    {
        $post = Post::find($post_id);
        return view('edit_post', compact('post'));
    }

    public function updatePost(Request $request, $post_id)
    {
        //Valid
        $this->validate($request, [
            'body' => 'required|max:1000'
        ]);


        $post = Post::findOrFail($post_id);
        $post->title = $request['title'];
        $post->body = $request['body'];

        $message = 'There was an error';
       if ($request->user()->posts()->save($post)) {
            $message = 'Post successfully created!';
        }
        
        return redirect()->route('my-posts')->with(['message' => $message]);
    }

    public function postCreatePost(Request $request)
    {
        //Valid
        $this->validate($request, [
            'body' => 'required|max:1000'
        ]);
        $post = new Post();
        $post->title = $request['title'];
        $post->body = $request['body'];
        $post->user_id=auth()->user()->id;
        $message = 'There was an error';
        
       if ($request->user()->posts()->save($post)) {
            $message = 'Post successfully created!';
        }dd($post);
        return redirect()->route('dashboard')->with(['message' => $message]);


    }
}