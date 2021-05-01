@extends('layouts.lte.template')
@section('content_lte')
<div class="this-place area">
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Listagem</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{route('listagem.index')}}">Listagem</a></li>
              <li class="breadcrumb-item active">Cadastro</li>
            </ol>
          </div>
        </div>
      </div>
    </div>
    <section class="content ">
      <div class="container-fluid">
          <div class="row">
                    <div class="col-12">
                        <div class="card">
                          <div class="card-header">
                            <h3 class="card-title">Listagem</h3>
                          </div>
                            <div class="card-body">
                              <div class="listagem form">
                                @include('partials.lte.required')
                                @include('listagem.form')
                              </div>
                            </div>
                          </div>
                        </div>
                    </div>
          </div>
      </div>
    </section>
</div>

@endsection
