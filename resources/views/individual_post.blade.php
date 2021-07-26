<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('What I want to share...') }}
        </h2>
    </x-slot>


     @foreach($posts as $post)
        @if($post->user_id==Auth::user()->id)
           @if($post->id==id_post)
            <article> 
                <div class="py-8 max-w-7xl mx-auto sm:px-6 lg:px-8">
                    <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
                        <div class="p-6 sm:px-20 bg-white border-b border-gray-200">
                            <!--author-->
                            <div class="flex justify-between border-2 p-2">
                                <div class="order-1 flex items-center">
                                    <img class="h-10 w-10 rounded-full" src="{{$post->user->profile_photo_url }}" alt="{{$post->user->name}}" />
                            
                                    <div class=" ml-8 text-l">
                                        <!-- {{Auth::user()->name}} -->
                                       {{$post->user->name}}
                                    </div>
                                </div>

                                {{-- <div class="order-2 flex items-center">
                                    <a href="#edit" class="w-6">
                                        <x-feathericon-edit />
                                    </a>
                                    <a href="{{ route('post.delete', ['post_id' => $post->id]) }}" class="w-6">
                                        <x-heroicon-s-x />
                                    </a>
                                </div> --}}

                            </div>
                            <div class="p-2">
                                <!--title-->
                                <h2 class="font-semibold text-xl text-gray-800 leading-tight border-b-2 p-6 text-center">
                                    {{$post->title}} 
                                </h2>
                                <!--content-->
                                <div class="p-4 border-b-2">
                                    <p> {{ $post->body }} </p>

                                
                                </div>
                            </div>
                            <!-- Comments -->

                        
                            <div class="">
                                <h4 class="font-semibold text-m text-gray-800 leading-tight p-6 ">
                                    Comments
                                </h4>
                                @foreach($comments as $comment)
                                    @if($post->id==$comment->id_post)
                                        <div class="p-6">
                                            <div class="border-l-2">
                                                <div class="flex items-center border-b-2 p-2">
                                                    <img class="h-6 w-6 rounded-full" src="{{ $comment->user->profile_photo_url }}" alt="{{ $comment->user->name }}" />
                                                
                                                    <div class=" ml-8 text-m">
                                                    {{$comment->user->name}}
                                                    </div>
                                                </div>
                                                <div class="p-6 bottom-b-2 text-sm">
                                                {{$comment->content}}
                                                </div>
                                            </div>
                                        </div>

                                    @endif
                                @endforeach
                                <!--Submit comment-->
                                <form action="{{ route('comment.create') }}" method="post" class="flex justify-between">
                                    <div class="order-1 form-group items-center flex-grow p-2">
                                        <textarea class="form-control form-textarea" style="resize:none; width:100%;" name="content" id="new-post" rows="1" placeholder="What do you think about it..." required></textarea>
                                        <input type = "hidden" value ="{{ $post->id }}" name="id_post">
                                    </div>
                                    <div class="order-2 flex items-center justify-end">
                                        <x-jet-button>
                                            {{__('Submit')}}
                                        </x-jet-button>
                                        <input type = "hidden" value ="{{ Session:: token() }}" name="_token">

                                    </div>
                                </form>
                                <!--Share-->
                                <div class="flex justify-between border-t-2">
                                    <div class="order-1">
                                        <h4 class="font-semibold text-m text-gray-800 leading-tight p-6 ">
                                            Share:
                                        </h4>
                                    </div>
                                    <div class="order-2 flex items-center">
                                        <a href="#facebook" class="w-12 p-2">
                                            <x-fab-facebook-square />
                                        </a>
                                        <a href="#RSS" class="w-12 p-2">
                                            <x-fas-rss-square />
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    
                    </div>
                </div>
            </article>
        @endif
        @endif
    @endforeach 
   


</x-app-layout>