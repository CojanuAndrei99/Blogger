<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('What I\'m editing...') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
                <div class="p-6 sm:px-20 bg-white border-b border-gray-200">
                    <div class="flex items-center ">
                        <img class="h-10 w-10 rounded-full" src="{{ Auth::user()->profile_photo_url }}" alt="{{ Auth::user()->name }}" />
                        
                        <div class=" ml-8 text-2xl">
                            {{Auth::user()->name}}
                        </div>
                    </div>
                    <div class="mt-6 text-gray-500">
                        <form action="{{ route('post.update', $post -> id) }}" method="post">
                            <div class="form-group">
                                <textarea class="form-control form-textarea" style="resize:none; width:100%;" name="title", id="new-post" rows="1"  >{{ $post -> title}}</textarea>
                            </div>
                            <div class="form-group">
                                <textarea class="form-control form-textarea" style="resize:none; width:100%;" name="body" id="new-post" rows="5" >{{ $post -> body}}</textarea>
                            </div>
                            <div class="flex items-center justify-end">
                                <x-jet-button>
                                    {{__('Edit Post')}}
                                </x-jet-button>
                                <input type = "hidden" value ="{{ Session:: token() }}" name="_token">
                            </div>
                            <input type = "hidden" value = "{{ Session::token() }}" name = "_token"> 
                        </form>
                        @include('includes.message-block')
                    </div>
                </div>
               
            </div>
        </div>
    </div>
</x-app-layout>
