<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Support\Facades\Auth;
//use Illuminate\Validation\Validator;
use Illuminate\Support\Facades\Validator;

class PassportController extends Controller
{
    public $successStatus = 200;

    public function login(){
        if (Auth::attempt(['email' => \request('email'),
            'password' => \request('password')])){
            $user = Auth::user();
            $success['token'] = $user->createToken('MyApp')->accessToken;

            return response()->json(['status' => $this->successStatus, 'data' => [$success]]);
        } else {
            return response()->json(['status' => 401, 'data' => ['message' => 'Não autorizado']]);
        }
    }

    public function register(Request $request){
        $validator = Validator::make($request->all(),[
            'name' => 'required',
            'email' => 'required|email',
            'password' => 'required',
            'c_password' => 'required|same:password',
        ]);

        if ($validator->fails()){
            return response()->json(['status' => 401,'message' => $validator->errors()]);
        }

        $input = $request->all();
        $input['password'] = bcrypt($input['password']);
        $input['guid'] = md5(uniqid(""));

        $user = User::create($input);

        $success['token'] = $user->createToken('MyApp')->accessToken;
        $success['name'] = $user->name;
        $success['guid'] = $user->guid;

        return response()->json(['status' => $this->successStatus, 'data' => [$success]]);
    }

    public function getDetails(){
        $user = Auth::user();

        if (isset($user)) {
            return response()->json(['status' => $this->successStatus, 'data' => [$user]]);
        } else {
            return response()->json(['status' => 404, 'message' => 'Usuário não encontrado!']);
        }
    }

    public function getClientes(){
        $user = User::all();

        if (isset($user)) {
            return response()->json(['status' => $this->successStatus, 'data' => [$user]]);
        } else {
            return response()->json(['status' => 404, 'message' => 'Usuários não encontrados!']);
        }
    }

    public function delete($id) {
        $user = User::find($id);

        if (isset($user)) {
            $user->delete();
            return response()->json(['status' => $this->successStatus, 'message' => 'Usuário removido com sucesso!']);
        } else {
            return response()->json(['status' => 404, 'message' => 'Usuário não encontrado!']);
        }
    }
}