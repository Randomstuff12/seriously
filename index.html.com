<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Random Stuff</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f5f5f5; /* Light gray background */
            color: #333; /* Dark gray text color */
            line-height: 1.6;
        }
        header {
            background-color: #4caf50; /* Green header background */
            color: white;
            padding: 20px 0;
            text-align: center;
            margin-bottom: 20px;
        }
        section {
            margin-bottom: 30px;
            padding: 20px;
            background-color: #fff; /* White background for sections */
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        h2 {
            color: #4caf50; /* Green heading color */
            border-bottom: 2px solid #4caf50; /* Green underline */
            padding-bottom: 5px;
            margin-bottom: 15px;
        }
        ul {
            list-style-type: disc;
            margin-left: 20px;
        }
        blockquote {
            margin: 20px 0;
            padding: 10px 20px;
            background-color: #f0f0f0; /* Light gray background */
            border-left: 5px solid #4caf50; /* Green border */
        }
        p {
            margin: 10px 0;
        }
        footer {
            text-align: center;
            margin-top: 20px;
            padding: 10px 0;
            background-color: #4caf50; /* Green footer background */
            color: white;
        }
        .animal-photo {
            text-align: center; /* Center the photo horizontally */
            float: right; /* Float to the right side */
            width: 30%;
            margin: 20px;
        }
        .animal-photo img {
            width: 100%;
            height: auto;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <header>
        <h1>Stay safe you all</h1>
    </header>
    
    <section>
        <h2>Interesting Quotes</h2>
        <div class="animal-photo">
            <img id="animalImage" src="" alt="Cute animal of the day">
        </div>
        <blockquote>"The only limit to our realization of tomorrow is our doubts of today." - Franklin D. Roosevelt</blockquote>
        <blockquote>"In the end, we will remember not the words of our enemies, but the silence of our friends." - Martin Luther King Jr.</blockquote>
        <blockquote>"To be yourself in a world that is constantly trying to make you something else is the greatest accomplishment." - Ralph Waldo Emerson</blockquote>
        <blockquote>"The best way to predict the future is to create it." - Peter Drucker</blockquote>
        <blockquote>"Life is what happens when you're busy making other plans." - John Lennon</blockquote>
    </section>
    
    <section>
        <h2>Random Facts</h2>
        <ul>
            <li>The honeybee is the only insect that produces food eaten by humans.</li>
            <li>An octopus has three hearts and nine brains.</li>
            <li>The Eiffel Tower can be 15 cm taller during the summer due to thermal expansion of the metal.</li>
            <li>Bananas are berries, but strawberries aren't.</li>
            <li>Wombat poop is cube-shaped.</li>
            <li>Sharks have been around longer than trees.</li>
            <li>Honey never spoils. Archaeologists have found pots of honey in ancient Egyptian tombs that are over 3,000 years old and still perfectly edible!</li>
            <li>Cows have best friends and can become stressed when they are separated.</li>
        </ul>
    </section>
    
    <section>
        <h2>Random Jokes</h2>
        <p>Why don't scientists trust atoms?</p>
        <p>Because they make up everything!</p>

        <p>Why did the scarecrow win an award?</p>
        <p>Because he was outstanding in his field!</p>

        <p>Why don't skeletons fight each other?</p>
        <p>They don't have the guts.</p>

        <p>What do you call fake spaghetti?</p>
        <p>An impasta!</p>

        <p>Why did the bicycle fall over?</p>
        <p>Because it was two-tired!</p>
        
        <p>Why did the tomato turn red?</p>
        <p>Because it saw the salad dressing!</p>
    </section>
    
    <section>
        <h2>Random Trivia</h2>
        <ul>
            <li>The shortest war in history was between Britain and Zanzibar on August 27, 1896. Zanzibar surrendered after 38 minutes.</li>
            <li>Polar bears have black skin under their white fur.</li>
            <li>Octopuses have three hearts.</li>
            <li>The sentence "The quick brown fox jumps over a lazy dog." uses every letter of the alphabet.</li>
            <li>Koalas sleep around 20 hours a day.</li>
            <li>Sea otters hold hands when they sleep to keep from drifting apart.</li>
            <li>Elephants can't jump.</li>
            <li>There are more stars in the universe than grains of sand on Earth.</li>
        </ul>
    </section>
    
    <footer>
        <p>&copy; 2024 Random Stuff</p>
    </footer>
    
    <script>
        async function fetchAnimalPhoto() {
            try {
                const response = await fetch('https://random.dog/woof.json');
                const data = await response.json();
                document.getElementById('animalImage').src = data.url;
            } catch (error) {
                console.error('Error fetching animal photo:', error);
            }
        }

        document.addEventListener('DOMContentLoaded', fetchAnimalPhoto);
    </script>
</body>
</html>
