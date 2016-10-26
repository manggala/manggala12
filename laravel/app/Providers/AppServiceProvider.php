<?php namespace App\Providers;

use App\Contact;
use App\General;
use App\Menu;
use App\Theme;
use App\Products;
use App\Rss;
use App\Post;
use App\Event;
use App\MenuDetail;
//use FeedReader;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider {

	/**
	 * Bootstrap any application services.
	 *
	 * @return void
	 */
	public function boot()
	{
		$data = Theme::where('active','1')->first();
		if(!empty($data))
		{
			view()->composer('theme.'.$data->code.'.layout.index',function($v){
				$data = Theme::with('themeMenu')->where('active','1')->first();
				$menuSupport = array();
				foreach ($data->themeMenu as $row) {
					array_push($menuSupport, $row->code);
				}
				$rss = null;
				
				/*$data_t = Rss::where('featured','1')->first();
				if(!empty($data_t))
				{
					$rss_t = FeedReader::read($data_t->link);
					$rss= $rss_t->get_items(0,10);					
				}*/

				
				$social = \App\Social::all();
				$menu = Menu::with(
					'menuDetail',
					'menuDetail.menuType',
					'menuDetail.submenu',
					'menuDetail.submenu.menuType',
					'menuDetail.submenu.submenu',
					'menuDetail.submenu.submenu.menuType',
					'menuDetail.submenu.submenu.submenu',
					'menuDetail.submenu.submenu.submenu.menuType'
					)->whereIn('code',$menuSupport)->get();
				$general = General::find(1);
				$contact = Contact::where('featured','1')->first();
				$about_footer = Post::where('title','About Us')->first();
				$contact_footer = Post::where('title','Contact')->first();
				$products = Products::with('media')->get()->take(6);
				$event = Event::all();
				$v->with('menu',$menu)
					->with('general',$general)
					->with('contact',$contact)
					->with('social',$social)
					->with('rss',$rss)
					/*->with('rss_title', $data_t)*/
					->with('products', $products)
					->with('about_footer', $about_footer)
					->with('contact_footer', $contact_footer)
					->with('event', $event)
					;
			});
		}

		
		
	}

	/**
	 * Register any application services.
	 *
	 * This service provider is a great spot to register your various container
	 * bindings with the application. As you can see, we are registering our
	 * "Registrar" implementation here. You can add your own bindings too!
	 *
	 * @return void
	 */
	public function register()
	{
		$this->app->bind(
			'Illuminate\Contracts\Auth\Registrar',
			'App\Services\Registrar'
		);
	}

}
