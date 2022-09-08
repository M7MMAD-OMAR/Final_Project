<x-front-layout>
    <main class="max-w-6xl mx-auto mt-8">
        <div class="grid grid-cols-2 md:grid-cols-5 gap-4 mt-4">
            @foreach ($casts as $cast)
                <x-movie-card>
                    <x-slot name="image">
                        <a href="{{ route('casts.show', $cast->slug) }}">
                            @if($cast->tmdb_id === null)
                                <img src="{{ asset('image/'.$cast->poster_path) }}" alt="image"
                                     class="">
                            @else
                                <img class="" alt="image"
                                     src="https://www.themoviedb.org/t/p/w220_and_h330_face/{{ $cast->poster_path }}">
                            @endif
                        </a>
                    </x-slot>
                    <a href="{{ route('casts.show', $cast->id) }}">
                        <span class="text-white">{{ $cast->name }}</span>
                    </a>
                </x-movie-card>
            @endforeach
        </div>
        <div class="flex m-2 p-2">
            {{ $casts->links() }}
        </div>
    </main>
</x-front-layout>
