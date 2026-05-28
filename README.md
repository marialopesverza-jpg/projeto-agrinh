# projeto-agrinh
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Projeto Agrinho: Campo e Cidade</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <div class="container">
            <h1>Conexões que Transformam</h1>
            <p>O impacto da união entre o Campo e a Cidade.</p>
        </div>
    </header>

    <main class="container">
        <section class="apresentacao">
            <h2>A Importância do Agronegócio</h2>
            <p>Descubra como a tecnologia e o campo trabalham juntos para levar alimento até a sua mesa na cidade, promovendo a sustentabilidade e a inovação.</p>
        </section>

        <section class="cards">
            <div class="card">
                <h3>Sustentabilidade</h3>
                <p>Práticas agrícolas que preservam o meio ambiente e garantem recursos para o futuro.</p>
            </div>
            <div class="card">
                <h3>Inovação no Campo</h3>
                <p>O uso de tecnologia, drones e internet das coisas para otimizar a produção de alimentos.</p>
            </div>
            <div class="card">
                <h3>Alimentação Saudável</h3>
                <p>A importância da agricultura familiar para a saúde e bem-estar da população urbana.</p>
            </div>
        </section>
    </main>

    <footer>
        <p>Projeto Agrinho - Conectando realidades.</p>
    </footer>
</body>
</html>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: Arial, sans-serif;
}

body {
    background-color: #f4f9f4;
    color: #333;
}

header {
    background-color: #2e7d32;
    color: white;
    padding: 40px 0;
    text-align: center;
}

.container {
    max-width: 1000px;
    margin: 0 auto;
    padding: 20px;
}

.apresentacao {
    background-color: white;
    padding: 30px;
    border-radius: 8px;
    margin: 20px 0;
    text-align: center;
    box-shadow: 0 4px 6px rgba(0,0,0,0.1);
}

.cards {
    display: flex;
    gap: 20px;
    margin-top: 30px;
}

.card {
    background-color: white;
    padding: 20px;
    border-radius: 8px;
    flex: 1;
    text-align: center;
    box-shadow: 0 4px 6px rgba(0,0,0,0.1);
}

footer {
    background-color: #1b5e20;
    color: white;
    text-align: center;
    padding: 20px 0;
    margin-top: 40px;
}
