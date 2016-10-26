<?php namespace App\Http\Middleware;

use Closure;


class LogMiddleware {

	/**
	 * Handle an incoming request.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @param  \Closure  $next
	 * @return mixed
	 */
	public function handle($request, Closure $next)
	{
		$controllerAction = $request->route()->getAction()['controller'];
		$controller_ar = explode("\\", $controllerAction);
		$controller = array_pop($controller_ar);
		$model_name_arr = explode('Controller', $controller)['0'];
		$model_name = "\\App\\".$model_name_arr;
		dd($data);
		return $next($request);
	}

}
