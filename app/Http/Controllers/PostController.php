<?php

namespace App\Http\Controllers;

use App\Models\Etudiant;
use App\Models\LangPost;
use App\Models\Post;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class PostController extends Controller
{
    public function __construct() {
        $this->middleware('auth');
    }
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $messages = Post::paginate(10);

        $lang = session()->get('locale');
        foreach($messages as $post) {
            $postLang = null;
            if(LangPost::where('post_id', $post->id)->where('lang', $lang)->exists()) {
                $postLang = LangPost::where('post_id', $post->id)->where('lang', $lang)->get()[0];
            }
            $etudiant = Etudiant::find($post->etudiant_id);
            $post['name_etudiant'] = $etudiant->name;
            $post->message = str_split(($postLang != null ) ? $postLang->message : $post->message, 200)[0]."..." ;
            $post->title = ($postLang != null ) ? $postLang->title : $post->title;
        }
        return view('post.index', ['posts' => $messages]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('post.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required|max:100',
            'message' => 'required|min:10',
            'title_fr' => 'required|max:100',
            'message_fr' => 'required|min:10',
        ]);

        $post = Post::create([
            'title' => $request->title,
            'message' => $request->message,
            'etudiant_id' => Auth::User()->id,
        ]);
        LangPost::create([
            'lang' => "en",
            'title' => $request->title,
            'message' => $request->message,
            'post_id' => $post->id,
        ]);

        LangPost::create([
            'lang' => "fr",
            'title' => $request->title_fr,
            'message' => $request->message_fr,
            'post_id' => $post->id,
        ]);

        return redirect(route('post.show', $post->id));
    }

    /**
     * Display the specified resource.
     */
    public function show(Post $post)
    {
        $lang = session()->get('locale');
        $postLang = $post;
        if(LangPost::where('post_id', $post->id)->where('lang', $lang)->exists()) {
            $postLang = LangPost::where('post_id', $post->id)->where('lang', $lang)->get()[0];
        }
        $etudiant = Etudiant::find($post->etudiant_id);
        return view('post.show', ['post' => $post, 'postLang' => $postLang, 'etudiant' => $etudiant]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Post $post)
    {
        if(Auth::User()->id != $post->etudiant_id) { return redirect(route('post.index'));}
        $postLang = [ "title" => '', 'message' => '' ];
        $postLangFR = [ "title" => '', 'message' => '' ];
        if(LangPost::where('post_id', $post->id)->where('lang', 'en')->exists()) {
            $postLang = LangPost::where('post_id', $post->id)->where('lang', 'en')->get()[0];
        }
        if(LangPost::where('post_id', $post->id)->where('lang', 'fr')->exists()) {
            $postLangFR = LangPost::where('post_id', $post->id)->where('lang', 'fr')->get()[0];
        }
        return view('post.edit', ['post' => $post, 'postLang' => $postLang, 'postLangFR' => $postLangFR]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Post $post)
    {
        if(Auth::User()->id != $post->etudiant_id) { return redirect(route('post.index'));}
        $request->validate([
            'title' => 'required|max:100',
            'message' => 'required|min:10',
        ]);

        $lang = session()->get('locale');
        if($lang == 'en') {
            $post->update([
                'title' => $request->title,
                'message'  => $request->message,
            ]);
        }
        if(LangPost::where('post_id', $post->id)->where('lang', 'en')->exists()) {
            LangPost::where('post_id', $post->id)->where('lang', "en")->update([
                'title' => $request->title,
                'message' => $request->message,
            ]);
        } else {
            LangPost::create([
                'lang' => "en",
                'title' => $request->title,
                'message' => $request->message,
                'post_id' => $post->id,
            ]);
        }

        if(LangPost::where('post_id', $post->id)->where('lang', 'fr')->exists()) {
            LangPost::where('post_id', $post->id)->where('lang', "fr")->update([
                'title' => $request->title_fr,
                'message' => $request->message_fr,
            ]);
        } else {
            LangPost::create([
                'lang' => "fr",
                'title' => $request->title_fr,
                'message' => $request->message_fr,
                'post_id' => $post->id,
            ]);
        }

        return redirect(route('post.show', $post->id))->withSuccess('Article mis à jour avec success');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Post $post)
    {
        if(Auth::User()->id != $post->etudiant_id) { return redirect(route('post.index'));}
        LangPost::where('post_id', $post->id)->delete();
        $post->delete();
        return redirect(route('post.index'))->withSuccess('Article supprimé avec success');
    }

    /*public function pdf(Post $post) {
        $pdf = Pdf::loadView('post.message-pdf', ['post' => $post]);
        //return $pdf->download('post.pdf');
        return $pdf->stream('post.pdf');
    }*/

}
