<?php

namespace App\Http\Controllers;

use App\Models\Etudiant;
use App\Models\LangPost;
use App\Models\Post;
use App\Models\Ville;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;

class CustomAuthController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $etudiants = Etudiant::select('id','name', 'email', 'phone', 'date_naissance')->paginate(15);
        return view('etudiant.index', ['etudiants' => $etudiants]);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function login()
    {
        return view('auth.login');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $villes = Ville::all();
        return view('auth.create', ['villes' => $villes]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|max:30',
            'email' => 'required|email|unique:etudiants',
            'password' => 'required|min:6|max:20',
            'adresse' => 'required|min:6|max:20',
            'date_naissance' => 'required|date',
            'phone' => 'required|numeric|min:10',
        ]);

        //redirect->back()->withErrors([])->withInput

        $etudiant = new Etudiant();
        $etudiant->fill($request->all());
        $etudiant->password = Hash::make($request->password);
        $etudiant->save();

        return redirect()->back()->withSuccess('Success !');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Etudiant  $etudiant
     * @return \Illuminate\Http\Response
     */
    public function show(Etudiant $etudiant)
    {
        $posts = Post::where('etudiant_id', $etudiant->id)->get();
        $lang = session()->get('locale');
        foreach($posts as $post) {
            $postLang = null;
            if(LangPost::where('post_id', $post->id)->where('lang', $lang)->exists()) {
                $postLang = LangPost::where('post_id', $post->id)->where('lang', $lang)->get()[0];
            }
            $etudiant = Etudiant::find($post->etudiant_id);
            $post['name_etudiant'] = $etudiant->name;
            $post->message = str_split(($postLang != null ) ? $postLang->message : $post->message, 200)[0]."..." ;
            $post->title = ($postLang != null ) ? $postLang->title : $post->title;
        }
        $etudiant['ville_nom'] = Ville::find($etudiant['ville_id'])['nom'];
        return view('etudiant.show', ['etudiant' => $etudiant, 'posts' => $posts]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Etudiant  $Etudiant
     * @return \Illuminate\Http\Response
     */
    public function edit(Etudiant $etudiant)
    {
        if(Auth::User()->id != $etudiant->id) { return redirect(route('etudiant.show'));}
        $villes = Ville::all();
        return view('etudiant.edit', ['etudiant' => $etudiant, 'villes' => $villes]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Etudiant  $etudiant
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Etudiant $etudiant)
    {
        $request->validate([
            'name' => 'required|max:30',
            'email' => 'required|email',
            'password' => 'required|min:6|max:20',
            'date_naissance' => 'required|date',
            'phone' => 'required|numeric|min:10',
        ]);
        //redirect->back()->withErrors([])->withInput

        $etudiant->fill($request->all());
        $etudiant->update();

        return redirect(route('etudiant.show', $etudiant->id))->withSuccess('Étudiant mis à jour avec success.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Etudiant  $etudiant
     * @return \Illuminate\Http\Response
     */
    public function destroy(Etudiant $etudiant)
    {
        if(Auth::User()->id != $etudiant->id) { return redirect(route('post.index'));}
        $etudiant->delete();
        Auth::logout();
        return redirect(route('login'));
    }

    public function authentication(Request $request){
        $request->validate([
            'email' => 'required|email|exists:etudiants',
            'password' => 'required'
        ]);

        $credentials = $request->only('email', 'password');

        if(!Auth::validate($credentials)):
            return redirect()->back()->withErrors(trans('auth.password'))->withInput();
        endif;

        $etudiant = Auth::getProvider()->retrieveByCredentials($credentials);
        Auth::login($etudiant);
        return redirect()->intended(route('post.index'));
    }

    public function logout(){
        Auth::logout();
        return redirect(route('login'));
    }

}
