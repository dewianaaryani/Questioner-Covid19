<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Questioner;
use App\Question;
use App\QuestionersDetail;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        return view('dashboard');
    }
    public function mulai(){
        return view('welcome');
    }
    public function saveQuestioner(Request $request)
    {
        $questioner = new Questioner;
        $questioner->name = $request->name;
        $questioner->date = date('Y-m-d');
        $questioner->save();
       return redirect("question-answer/".$questioner->id."/0");
    }

    public function questions(Request $request,$questioner_id,$no_question = 0)
    {
        $questioner = Questioner::find($questioner_id);
        $questions = Question::orderBy('id','ASC')->get();
        $question = $questions[$no_question];
        return view('start_test',[
            'questioner' => $questioner,
            'question' => $question,
            'no' => $no_question+1
        ]);
    }
    
    public function saveAnswer(Request $request,$questioner_id,$no_question = 0)
    {
        $questioner = Questioner::find($questioner_id);
        $questionersDetail = new QuestionersDetail;
        $questionersDetail->answer = $request->answer;
        $questionersDetail->question_id = $request->question_id;
        $questionersDetail->questioner_id = $questioner_id;
        $questionersDetail->save();

        if($request->answer == 1){
            $questioner->total_y = $questioner->total_y + 1;
        }else{
            $questioner->total_n = $questioner->total_n + 1;
        }
        if($questioner->total_y < 8){
            $questioner->status = "Low";
        }
        if($questioner->total_y >= 8 && $questioner->total_y <= 14){
            $questioner->status = "Moderate";
        }
        if($questioner->total_y > 14){
            $questioner->status = "High";
        }
        $questioner->save();

        
        $questions = Question::orderBy('id','ASC')->get();
        if(!empty($questions[$no_question])){
            return redirect("question-answer/".$questioner->id."/".$no_question);
        }else{
            return redirect("result/".$questioner->id);
        }
        
    }

    public function result($questioner_id){
        $questioner = Questioner::find($questioner_id);
        return view('result',[
            'questioner' => $questioner,
        ]);
    }
}