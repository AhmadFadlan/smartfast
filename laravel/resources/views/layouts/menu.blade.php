<style>
  .dropdown-item:hover{
    color: #fff;
    background: darkorange;
  }
</style>

<ul class="nav-dropdown collapse pull-xs-right nav navbar-nav navbar-toggleable-sm" id="exCollapsingNavbar">
  @foreach($items as $menu_item)
      @if (!$menu_item->children->isEmpty())

        <li class="nav-item dropdown"><a class="nav-link link dropdown-toggle" href="#" data-toggle="dropdown-submenu" aria-expanded="false">{{ $menu_item->title }}</a>
          <div class="dropdown-menu">

            @foreach ($menu_item->children as $submenu)
              @if (!$submenu->children->isEmpty())

                <div class="dropdown">
                    <a class="dropdown-item dropdown-toggle" href="#" aria-expanded="false" data-toggle="dropdown-submenu">{{ $submenu->title }}</a>
                    <div class="dropdown-menu dropdown-submenu">

                      @foreach ($submenu->children as $subsubmenu)
                        <a class="dropdown-item" href="{{ $subsubmenu->link() }}" aria-expanded="false">{{ $subsubmenu->title }}</a>
                      @endforeach

                    </div>
                </div>

              @else
                <a class="dropdown-item" href="{{ $submenu->link() }}" aria-expanded="false">{{ $submenu->title }}</a>

              @endif

            @endforeach
          </div>
        </li>

        @else
          <li class="nav-item"><a class="nav-link link" href="{{ $menu_item->link() }}">{{ $menu_item->title }}</a></li>

      @endif
  @endforeach

    <li class="nav-item nav-btn"><a class="nav-link btn btn-white-outline btn-white" href="#" style="font-size:12px;">Pendaftaran</a></li>

</ul>

{{--
<ul class="nav-dropdown collapse pull-xs-right nav navbar-nav navbar-toggleable-sm" id="exCollapsingNavbar">
    <li class="nav-item"><a class="nav-link link" href="/">Home</a></li>
    <li class="nav-item dropdown"><a class="nav-link link dropdown-toggle" href="#" data-toggle="dropdown-submenu" aria-expanded="false">Profil</a>
        <div class="dropdown-menu">
          <a class="dropdown-item" href="visi-dan-misi.html">Visi Dan Misi</a>
          <div class="dropdown">
              <a class="dropdown-item dropdown-toggle" href="#" aria-expanded="false" data-toggle="dropdown-submenu">Sub Menu 1</a>
              <div class="dropdown-menu dropdown-submenu">
                <a class="dropdown-item" href="#" aria-expanded="false">Sub Sub Menu</a>
              </div>
          </div>
          <a class="dropdown-item" href="#" aria-expanded="false">Sub Menu 2</a>
        </div>
    </li>
    <li class="nav-item"><a class="nav-link link" href="#">Program</a></li>
    <li class="nav-item"><a class="nav-link link" href="#">Akreditasi</a></li>

    <li class="nav-item nav-btn"><a class="nav-link btn btn-white-outline btn-white" href="#" style="font-size:12px;">Pendaftaran</a></li>
</ul>
--}}
