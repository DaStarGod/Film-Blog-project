<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Movie Review Page</title>
    <!-- Tailwind CSS link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.19/tailwind.min.css" integrity="sha512-lfYp1W8tn53xMEEz2oBdD0CDQ43UOv6U5g6I5XO9YbW8RvPOyyAJJ6eENPz+Z39ndR/1bS+10CKkkJyXVh2Qag==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100">
    <!-- Navbar -->
    <nav class="bg-white shadow">
        <div class="container mx-auto px-6 py-4">
            <div class="flex justify-between items-center">
                <div>
                    <a class="text-gray-800 font-bold text-xl" href="#">Movie Reviews</a>
                </div>
                <div class="flex items-center">
                    <a class="text-gray-800 mr-4 hover:text-gray-600" href="#">Home</a>
                    <a class="text-gray-800 mr-4 hover:text-gray-600" href="#">Movies</a>
                    <a class="text-gray-800 mr-4 hover:text-gray-600" href="#">Reviews</a>
                    <a class="text-gray-800 mr-4 hover:text-gray-600" href="#">Contact</a>
                    <a class="text-gray-800 font-bold hover:text-gray-600" href="#">Admin</a>
                </div>
            </div>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="container mx-auto px-6 py-10">
        <div class="flex flex-wrap justify-center">
            <!-- Movie Card -->
            <div class="w-full md:w-1/2 lg:w-1/3 p-6 flex flex-col">
                <div class="flex-1 bg-white rounded-t rounded-b-none overflow-hidden shadow">
                    <a href="#" class="flex flex-wrap no-underline hover:no-underline">
                        <img src="https://picsum.photos/seed/picsum/200/300" alt="movie poster" class="h-full w-full rounded">
                        <div class="w-full font-bold text-xl text-gray-800 px-6 mt-4">Movie Title</div>
                        <p class="text-gray-800 text-base px-6 mb-5">
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam at ipsum eu nunc commodo posuere et sit amet ligula.
                        </p>
                    </a>
                </div>
                <div class="flex-none mt-auto bg-white rounded-b rounded-t-none overflow-hidden shadow p-6">
                    <div class="flex items-center justify-between">
                        <p class="text-gray-600 text-xs md:text-sm">Release Date: 2022-01-01</p>
                        <p class="text-gray-600 text-xs md:text-sm">Rating: 8.5/10</p>
                    </div>
                </div>
            </div>

            <!-- Repeat Movie Card for more movies -->

        </div>
    </div>

    <!-- Footer -->
    <footer class="bg-white">
        <div class="container mx-auto