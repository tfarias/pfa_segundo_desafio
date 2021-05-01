<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;


    use App\Repositories\ListagemRepository;
    use App\Repositories\ListagemRepositoryEloquent;
    //[uses]

class RepositoryServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap the application services.
     *
     * @return void
     */
    public function boot()
    {
        //
    }

    /**
     * Register the application services.
     *
     * @return void
     */
    public function register()
    {
       
        
    $this->app->bind(ListagemRepository::class,ListagemRepositoryEloquent::class);
    //[repository]
    }
}
