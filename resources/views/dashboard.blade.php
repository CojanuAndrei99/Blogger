<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('What other people say...') }}
        </h2>
    </x-slot>
   
    <!-- Articolulllll -->


    @foreach($posts as $post)

        <article> 
            <div class="py-8 max-w-7xl mx-auto sm:px-6 lg:px-8">
                <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
                    <div class="p-6 sm:px-20 bg-white border-b border-gray-200">
                        <!--author-->
                        <div class="flex items-center border-2 p-2">
                            <img class="h-10 w-10 rounded-full" src="{{$post->user->profile_photo_url }}" alt="{{$post->user->name}}" />
                        
                            <div class=" ml-8 text-l">
                                <!-- {{Auth::user()->name}} -->
                                {{$post->user->name}}
                            </div>
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
                            <form action="{{ route('comment.create') }}" method="post" class="flex justify-between border-b-2">
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
                            
                            <div class="flex items-center justify-between">
                                <div class="order-1 ml-8 text-sm text-cool-gray-500">
                                   Created at: {{$post->user->created_at}}
                                </div>
                                <div class="order-2 ml-8 text-sm text-cool-gray-500">
                                    Updated at: {{$post->user->updated_at}}
                                </div>
                            </div>
                        </div>
                    </div>
                
                </div>
            </div>
        </article>

    @endforeach


    <article> 
        <div class="py-8 max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
                    <div class="flex justify-between  border-t-2">
                        <div class="order-1">
                            <h4 class="font-semibold text-m text-gray-800 leading-tight p-6 ">
                                Did you like it? Don't forget to share it!
                                
                            </h4>
                        </div>

                    <div class="order-2 flex items-center">

                        <div class="order-1 p-4">
                         <!-- Share it on Facebook -->
                        <iframe src="https://www.facebook.com/plugins/share_button.php?href=http%3A%2F%2F127.0.0.1%3A8000%2Fdashboard&layout=button&size=large&width=77&height=28&appId" 
                        width="90" height="28" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowfullscreen="true" 
                        allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share"></iframe>
                        </div>
                        <div class="order-2 p-4">
                        <!-- Share it on Twitter -->
                        <a class="twitter-share-button" href="http://127.0.0.1:8000/dashboard" data-size="large" class="">Tweet</a>
                        <blockquote class="twitter-tweet"><p lang="en" dir="ltr"><a href="http://127.0.0.1:8000/my_posts"></a></p></blockquote> 
                        <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
                        </div>

                    {{-- <a href="#Facebook" class="w-12 p-2">
                        <x-fab-facebook-square />
                    </a> 
                    <a href="#RSS" class="w-12 p-2">
                        <x-fas-rss-square />
                    </a> --}}
                </div>
                </div>
            
        </div>
    </article>
   
   
</x-app-layout>
