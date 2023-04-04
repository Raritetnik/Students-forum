<?php

namespace App\Http\Controllers;

use App\Models\File;
use App\Models\LangFile;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;

class FileController extends Controller
{
    public function __construct() {
        $this->middleware('auth');
    }

    public function index()
    {
        $files = File::paginate(10);
        $lang = session()->get('locale');
        foreach($files as $file) {
            $fileLang = [ "title" => '', 'description' => '' ];
            if(LangFile::where('file_id', $file->id)->where('lang', $lang)->exists()) {
                $fileLang = LangFile::where('file_id', $file->id)->where('lang', $lang)->get()[0];
            }
            $file->title = ($fileLang != null ) ? $fileLang['title'] : $file->title;
            $file->description = ($fileLang != null ) ? $fileLang['description'] : $file->description;
        }
        return view('file.index', ['files' => $files]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('file.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required|max:100',
            'description' => 'required|min:10',
            'file' => 'required|file|max:16384'
        ]);

        $file = $request->file('file');
        $fileName = time()."-".$request->file('file')->getClientOriginalName();
        $path = $file->storeAs('files', $fileName);
        $file = File::create([
            'name' => $path,
            'title' => $request->title,
            'description' => $request->description,
            'etudiant_id' => Auth::User()->id,
        ]);

        LangFile::create([
            'lang' => "en",
            'title' => $request->title,
            'description' => $request->description,
            'file_id' => $file->id,
        ]);
        LangFile::create([
            'lang' => "fr",
            'title' => $request->title_fr,
            'description' => $request->description_fr,
            'file_id' => $file->id,
        ]);

        return redirect()->back()->withSuccess('Success !');
    }

    /**
     * Display the specified resource.
     */
    public function show(File $file)
    {
        $lang = session()->get('locale');
        $fileLang = [ "title" => '', 'description' => '' ];
        if(LangFile::where('file_id', $file->id)->where('lang', $lang)->exists()) {
            $fileLang = LangFile::where('file_id', $file->id)->where('lang', $lang)->get()[0];
        }
        return view('file.show', ['file' => $file, 'fileLang' => $fileLang]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(File $file)
    {
        if(Auth::User()->id != $file->etudiant_id) { return redirect(route('file.index'));}
        $fileLang = [ "title" => '', 'description' => '' ];
        $fileLangFR = [ "title" => '', 'description' => '' ];
        if(LangFile::where('file_id', $file->id)->where('lang', 'en')->exists()) {
            $fileLang = LangFile::where('file_id', $file->id)->where('lang', 'en')->get()[0];
        }
        if(LangFile::where('file_id', $file->id)->where('lang', 'fr')->exists()) {
            $fileLangFR = LangFile::where('file_id', $file->id)->where('lang', 'fr')->get()[0];
        }

        return view('file.edit', ['file' => $file, 'fileLang' => $fileLang, 'fileLangFR' => $fileLangFR]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, File $file)
    {
        if(Auth::User()->id != $file->etudiant_id) { return redirect(route('file.index'));}
        $request->validate([
            'title' => 'required|max:100',
            'description' => 'required|min:10',
        ]);

        $lang = session()->get('locale');
        if($lang == 'en') {
            $file->update([
                'title' => $request->title,
                'description' => $request->description,
            ]);
        }

        LangFile::where('file_id', $file->id)->where('lang', 'en')->update([
            'title' => $request->title,
            'description' => $request->description,
        ]);
        LangFile::where('file_id', $file->id)->where('lang', 'fr')->update([
            'title' => $request->title_fr,
            'description' => $request->description_fr,
        ]);

        return redirect(route('file.index'))->withSuccess('Fichier mis à jour avec success');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(File $file)
    {
        if(Auth::User()->id != $file->etudiant_id) { return redirect(route('file.index'));}
        LangFile::where('file_id', $file->id)->delete();
        Storage::delete($file->name);
        $file->delete();
        return redirect(route('file.index'))->withSuccess('Fichier supprimé avec success');
    }

    public function download(File $file)
    {
        return Storage::download($file->name);
    }

    /*public function page(){
        $files = File::select()
                ->paginate(10);
                return view('etudiant.page', ['files' => $files]);
    }*/

}
