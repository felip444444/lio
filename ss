<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            margin: 0;
            padding: 0;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            background: black;
            overflow: hidden;
        }

        .stars {
            position: absolute;
            width: 3px;
            height: 3px;
            background: white;
            box-shadow: 
                100px 50px white,
                200px 80px white,
                300px 100px white,
                400px 150px white,
                500px 120px white,
                600px 80px white,
                700px 100px white,
                800px 150px white,
                900px 80px white,
                1000px 100px white,
                1100px 120px white,
                1200px 80px white,
                1300px 100px white,
                1400px 150px white,
                1500px 120px white,
                1600px 80px white,
                1700px 100px white,
                1800px 150px white,
                1900px 80px white,
                2000px 100px white,
                2100px 120px white,
                2200px 80px white,
                2300px 100px white,
                2400px 150px white,
                2500px 120px white,
                2600px 80px white,
                2700px 100px white,
                2800px 150px white,
                2900px 80px white,
                3000px 100px white,
                3100px 120px white,
                3200px 80px white,
                3300px 100px white,
                3400px 150px white,
                3500px 120px white,
                3600px 80px white,
                3700px 100px white,
                3800px 150px white,
                3900px 80px white,
                4000px 100px white,
                4100px 120px white,
                4200px 80px white,
                4300px 100px white,
                4400px 150px white,
                4500px 120px white,
                4600px 80px white,
                4700px 100px white,
                4800px 150px white,
                4900px 80px white,
                5000px 100px white,
                5100px 120px white,
                5200px 80px white,
                5300px 100px white,
                5400px 150px white,
                5500px 120px white,
                5600px 80px white,
                5700px 100px white,
                5800px 150px white,
                5900px 80px white,
                6000px 100px white,
                6100px 120px white,
                6200px 80px white,
                6300px 100px white,
                6400px 150px white,
                6500px 120px white,
                6600px 80px white,
                6700px 100px white,
                6800px 150px white,
                6900px 80px white,
                7000px 100px white;
            animation: starsAnimation 5s linear infinite;
        }

        @keyframes starsAnimation {
            0% {
                transform: translateY(0);
            }
            100% {
                transform: translateY(-100vh);
            }
        }

        .moon {
            width: 150px;
            height: 150px;
            background: linear-gradient(135deg, #e6e6e6, #ffffff, #e6e6e6);
            border-radius: 50%;
            position: absolute;
            top: 20%;
            left: 80%;
            transform: translateX(-50%);
            box-shadow: 0 0 20px rgba(255, 255, 255, 0.8);
            overflow: hidden;
        }

        .moon::before {
            content: "";
            width: 120px;
            height: 120px;
            background: linear-gradient(135deg, #b3b3b3, #ffffff, #b3b3b3);
            position: absolute;
            border-radius: 50%;
            left: 50px;
        }

        .moon::after {
            content: "";
            width: 80px;
            height: 150px;
            background: linear-gradient(180deg, #b3b3b3, #ffffff, #b3b3b3);
            position: absolute;
            border-radius: 50%;
            top: -30px;
            left: 20px;
        }

        .moon-crater {
            width: 20px;
            height: 20px;
            background: linear-gradient(135deg, #b3b3b3, #ffffff, #b3b3b3);
            border-radius: 50%;
            position: absolute;
            top: 20px;
            left: 40px;
            transform: rotate(45deg);
        }

        .moon-crater::before {
            content: "";
            width: 20px;
            height: 20px;
            background: linear-gradient(135deg, #b3b3b3, #ffffff, #b3b3b3);
            border-radius: 50%;
            position: absolute;
            top: -10px;
            left: 10px;
        }

        .heart {
            width: 100px;
            height: 100px;
            background: red;
            transform: rotate(-45deg);
            box-shadow: -10px 10px 120px red;
            animation: heart 0.6s linear infinite;
            position: relative;
            cursor: pointer;
            z-index: 1;
            margin-top: 20px;
        }

        @keyframes heart {
            0% {
                transform: rotate(-45deg) scale(1.07);
            }
            100% {
                transform: rotate(-45deg) scale(0.8);
            }
        }

        .heart::before,
        .heart::after {
            content: "";
            position: absolute;
            width: 100px;
            height: 100px;
            background: red;
            border-radius: 60px;
            box-shadow: -10px 10px 120px red;
        }

        .heart::before {
            top: -50%;
        }

        .heart::after {
            right: -50%;
        }
        .text {
    font-size: 24px;
    color: white;
    position: relative;
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
    z-index: 2;
    margin-top: 50px; /* Increase the margin-top value to move the text lower */
}


        .text span {
            display: inline-block;
            font-weight: bold;
            font-size: 28px;
            letter-spacing: 2px;
            color: #ffcc00;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.8);
        }

        .compliment-container {
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            padding: 20px;
            background-color: black;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            display: none;
            z-index: 3;
            text-align: center;
        }

        .compliment-text {
            font-size: 24px;
            color: #00f;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="stars"></div>
    <div class="moon">
        <div class="moon-crater"></div>
    </div>
    <div class="heart" id="heart"></div>
    <div class="text"><span>Y</span> + <span>L</span></div>

    <!-- New HTML for the compliment display -->
    <div class="compliment-container" id="complimentContainer">
        <p class="compliment-text" id="complimentText"></p>
    </div>

    <script>
        document.getElementById('heart').addEventListener('click', function() {
            generateCompliment();
        });

        function generateCompliment() {
            const compliments = [
                "Você é incrível e ilumina meu dia!",
                "Seu sorriso é a coisa mais linda que já vi!",
                "Com você, cada momento é especial.",
                "Você é a razão pela qual a vida é tão bonita.",
                "Meu dia fica melhor sempre que falo com você.",
                "Seu amor é a melhor parte da minha vida.",
                "Você é mais do que eu sonhei.",
                "Não sei o que seria da minha vida sem você.",
                "Sua presença torna tudo mais especial.",
                "Ao seu lado, a vida é mais colorida e feliz.",
                "Você é meu raio de sol em dias nublados.",
                "Cada dia ao seu lado é um presente.",
                "Seu abraço é o meu lugar favorito.",
                "Você é a melhor coisa que já me aconteceu.",
                "Com você, cada dia é Dia dos Namorados.",
                "Você é meu amor, minha vida, meu tudo.",
                "Ao seu lado, todos os problemas desaparecem.",
                "Você é a razão pela qual a felicidade habita em mim.",
                "Você é simplesmente extraordinária.",
                "Com você, a vida é uma eterna lua de mel.",
                "Você é uma tansa!",
                "Mais uma tansa muito perfeita 'medusa'!",
                "Você é a única pessoa que consegue me fazer rir e me deixar sem palavras ao mesmo tempo.",
                "Se todos tivessem metade da sua alegria de viver, a Terra seria um lugar bem mais feliz.",
                "Você faz o mundo um lugar melhor!",
                "Me deve foto do sorriso",
                "Voce e uma esquisita",
                "Fale o quao me gostar!",
                "Previsao pro nosso casamento?",
                "Quando estiver triste lembresse que eu existo",
                "i love",
                "Me sinto completo quando estou em sua companhia.",
                "me deve um pix",
                "Se voce chegou ate aki e porque provalmente tamo casado",
                "Me assumir logo fdp",
                "Por que será que quando me imagino feliz é o seu sorriso que me vem primeiro à cabeça?",
                "Você deve ser a razão principal do aquecimento global",
                "Voce foi a primeira a invadir o sistema desse Dev",
                "gata",
                "gostosaaa",
                "Medusa",
                "Você me faz querer ser uma pessoa melhor todos os dias",
                "Em uma escala de 1 a 10 qual chance de voce me dar o anel no dedo logo, oua",
                "Como foi seu dia?",
                "aki nao tem so elogio pra voce não, eu tambem sou um gostoso",
                "Eu e voce sempre?",
                "Sua voz me encanta, mesmo sendo mais grossa que a minha",
                "Me deve uma foto zuada",
                "lipe te ama",
                "Mesmo à distância, sua presença é o meu conforto.",
                "A distância só aumenta a saudade, mas também a certeza de que vale a pena esperar.",
                "Em cada quilômetro que nos separa, cresce o amor que nos une.",
                "A distância não é rival para o poder do nosso amor.",
                "Mesmo longe, sinto você perto do meu coração.",
            ];

            const randomIndex = Math.floor(Math.random() * compliments.length);
            const compliment = compliments[randomIndex];

            // Display compliment in a floating container
            showCompliment(compliment);
        }

        function showCompliment(compliment) {
            const complimentContainer = document.getElementById('complimentContainer');
            const complimentText = document.getElementById('complimentText');

            complimentText.textContent = compliment;
            complimentContainer.style.display = 'block';

            // Hide the compliment after 15 seconds
            setTimeout(function() {
                complimentContainer.style.display = 'none';
            }, 15000);
        }
    </script>
</body>
</html>
