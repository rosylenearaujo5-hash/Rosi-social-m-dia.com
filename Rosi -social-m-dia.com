<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Rosylene Araujo | Portfólio Profissional</title>
  <link rel="stylesheet" href="style.css" />
</head>
<body>

  <header class="header">
    <nav class="navbar">
      <a href="#inicio" class="logo">Rosylene Araujo</a>

      <ul class="menu" id="menu">
        <li><a href="#inicio">Início</a></li>
        <li><a href="#sobre">Sobre</a></li>
        <li><a href="#servicos">Serviços</a></li>
        <li><a href="#portfolio">Portfólio</a></li>
        <li><a href="#contato">Contato</a></li>
      </ul>

      <button class="menu-toggle" id="menuToggle">☰</button>
    </nav>
  </header>

  <main>
    <section id="inicio" class="hero">
      <div class="hero-content fade-in">
        <span class="tag">Portfólio Profissional</span>
        <h1>Rosylene Araujo</h1>
        <h2>Social Media • Assistente Virtual • Secretária Remota</h2>
        <p>"Organização, estratégia e presença digital para impulsionar seu negócio."</p>

        <div class="hero-buttons">
          <a href="https://wa.me/5531982782189" target="_blank" class="btn btn-primary">WhatsApp</a>
          <a href="https://instagram.com/rosy.socialmedia" target="_blank" class="btn btn-secondary">Instagram</a>
        </div>
      </div>

      <div class="hero-image fade-in">
        <img src="foto-rosylene.jpg" alt="Foto profissional de Rosylene Araujo">
      </div>
    </section>

    <section id="sobre" class="section">
      <div class="container fade-in">
        <h2>Sobre Mim</h2>
        <p>
          Sou Rosylene Araujo, profissional dedicada a ajudar empreendedores,
          empresas e profissionais autônomos a organizarem sua rotina, melhorarem
          sua comunicação e fortalecerem sua presença digital.
        </p>
        <p>
          Atuo com serviços de Social Media, Assistência Virtual e Secretaria Remota,
          oferecendo suporte estratégico, administrativo e digital para que meus
          clientes tenham mais tempo, organização e tranquilidade para focar no
          crescimento do seu negócio.
        </p>
      </div>
    </section>

    <section id="servicos" class="section section-light">
      <div class="container fade-in">
        <h2>Serviços</h2>

        <div class="grid">
          <div class="card">Gestão de Redes Sociais</div>
          <div class="card">Criação de Artes para Instagram</div>
          <div class="card">Assistência Virtual</div>
          <div class="card">Secretaria Remota</div>
          <div class="card">Atendimento ao Cliente</div>
          <div class="card">Gestão de Agenda</div>
          <div class="card">Organização Administrativa</div>
          <div class="card">Suporte Digital</div>
        </div>
      </div>
    </section>

    <section id="portfolio" class="section">
      <div class="container fade-in">
        <h2>Portfólio</h2>
        <p class="section-text">
          Espaço reservado para apresentar trabalhos, artes, projetos e resultados.
        </p>

        <div class="portfolio-grid">
          <div class="portfolio-item">Adicionar imagem</div>
          <div class="portfolio-item">Adicionar imagem</div>
          <div class="portfolio-item">Adicionar imagem</div>
          <div class="portfolio-item">Adicionar imagem</div>
        </div>
      </div>
    </section>

    <section id="diferenciais" class="section section-light">
      <div class="container fade-in">
        <h2>Diferenciais</h2>

        <div class="grid">
          <div class="card">Atendimento personalizado</div>
          <div class="card">Organização profissional</div>
          <div class="card">Comunicação eficiente</div>
          <div class="card">Comprometimento</div>
          <div class="card">Suporte remoto</div>
        </div>
      </div>
    </section>

    <section id="contato" class="section contato">
      <div class="container fade-in">
        <h2>Contato</h2>
        <p>Entre em contato para solicitar uma proposta personalizada.</p>

        <div class="contact-box">
          <p><strong>WhatsApp:</strong> <a href="https://wa.me/5531982782189" target="_blank">31 98278-2189</a></p>
          <p><strong>Instagram:</strong> <a href="https://instagram.com/rosy.socialmedia" target="_blank">@rosy.socialmedia</a></p>
          <p><strong>E-mail:</strong> <a href="mailto:rosylenearaujo5@gmail.com">rosylenearaujo5@gmail.com</a></p>
        </div>
      </div>
    </section>
  </main>

  <a href="https://wa.me/5531982782189" class="whatsapp-float" target="_blank">💬</a>

  <footer>
    <p>© Rosylene Araujo – Todos os direitos reservados.</p>
  </footer>

  <script src="script.js"></script>
</body>
</html>:root {
  --branco: #ffffff;
  --bege: #f7f1e8;
  --dourado: #c8a96a;
  --cinza: #f1f1f1;
  --texto: #3f3f3f;
  --escuro: #222222;
}

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

html {
  scroll-behavior: smooth;
}

body {
  font-family: Arial, sans-serif;
  background: var(--branco);
  color: var(--texto);
  line-height: 1.6;
}

.header {
  position: fixed;
  top: 0;
  width: 100%;
  background: rgba(255, 255, 255, 0.95);
  box-shadow: 0 2px 15px rgba(0,0,0,0.06);
  z-index: 1000;
}

.navbar {
  max-width: 1200px;
  margin: auto;
  padding: 18px 8%;
  display: flex;
  align-items: center;
  justify-content: space-between;
}

.logo {
  color: var(--dourado);
  text-decoration: none;
  font-size: 1.4rem;
  font-weight: bold;
}

.menu {
  display: flex;
  list-style: none;
  gap: 28px;
}

.menu a {
  text-decoration: none;
  color: var(--texto);
  font-weight: 500;
  transition: 0.3s;
}

.menu a:hover {
  color: var(--dourado);
}

.menu-toggle {
  display: none;
  border: none;
  background: none;
  font-size: 1.8rem;
  cursor: pointer;
}

.hero {
  min-height: 100vh;
  padding: 130px 8% 70px;
  display: flex;
  align-items: center;
  justify-content: space-between;
  gap: 50px;
  background: linear-gradient(135deg, var(--branco), var(--bege));
}

.hero-content {
  max-width: 600px;
}

.tag {
  color: var(--dourado);
  font-weight: bold;
  text-transform: uppercase;
  letter-spacing: 2px;
}

.hero h1 {
  font-size: 3.5rem;
  color: var(--escuro);
  margin: 15px 0;
}

.hero h2 {
  font-size: 1.3rem;
  color: var(--dourado);
  margin-bottom: 20px;
}

.hero p {
  font-size: 1.1rem;
  margin-bottom: 30px;
}

.hero-buttons {
  display: flex;
  gap: 15px;
  flex-wrap: wrap;
}

.btn {
  padding: 13px 28px;
  border-radius: 30px;
  text-decoration: none;
  font-weight: bold;
  transition: 0.3s;
}

.btn-primary {
  background: var(--dourado);
  color: var(--branco);
}

.btn-secondary {
  border: 1px solid var(--dourado);
  color: var(--dourado);
}

.btn:hover {
  transform: translateY(-3px);
  box-shadow: 0 8px 20px rgba(0,0,0,0.12);
}

.hero-image img {
  width: 360px;
  height: 460px;
  object-fit: cover;
  border-radius: 180px 180px 20px 20px;
  border: 8px solid var(--branco);
  box-shadow: 0 20px 50px rgba(0,0,0,0.12);
}

.section {
  padding: 90px 8%;
}

.section-light {
  background: var(--bege);
}

.container {
  max-width: 1100px;
  margin: auto;
  text-align: center;
}

.section h2 {
  font-size: 2.4rem;
  color: var(--escuro);
  margin-bottom: 25px;
}

.section h2::after {
  content: "";
  display: block;
  width: 70px;
  height: 3px;
  background: var(--dourado);
  margin: 12px auto 0;
}

.container p {
  max-width: 850px;
  margin: 0 auto 18px;
}

.grid {
  margin-top: 35px;
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: 22px;
}

.card {
  background: var(--branco);
  padding: 28px 20px;
  border-radius: 18px;
  box-shadow: 0 10px 25px rgba(0,0,0,0.06);
  border: 1px solid #eee;
  transition: 0.3s;
}

.card:hover {
  transform: translateY(-6px);
  border-color: var(--dourado);
}

.portfolio-grid {
  margin-top: 35px;
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: 20px;
}

.portfolio-item {
  height: 230px;
  background: var(--cinza);
  border: 2px dashed var(--dourado);
  border-radius: 18px;
  display: flex;
  align-items: center;
  justify-content: center;
  color: #777;
  font-weight: bold;
}

.contato {
  background: var(--branco);
}

.contact-box {
  margin: 30px auto 0;
  max-width: 560px;
  background: var(--bege);
  padding: 30px;
  border-radius: 20px;
  text-align: left;
}

.contact-box a {
  color: var(--dourado);
  text-decoration: none;
  font-weight: bold;
}

.whatsapp-float {
  position: fixed;
  right: 22px;
  bottom: 22px;
  width: 58px;
  height: 58px;
  background: #25d366;
  color: white;
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  text-decoration: none;
  font-size: 1.7rem;
  box-shadow: 0 10px 25px rgba(0,0,0,0.25);
  z-index: 999;
}

footer {
  background: var(--escuro);
  color: var(--branco);
  text-align: center;
  padding: 22px;
}

.fade-in {
  opacity: 0;
  transform: translateY(30px);
  transition: 0.8s ease;
}

.fade-in.show {
  opacity: 1;
  transform: translateY(0);
}

@media (max-width: 900px) {
  .hero {
    flex-direction: column;
    text-align: center;
  }

  .hero h1 {
    font-size: 2.5rem;
  }

  .hero-buttons {
    justify-content: center;
  }

  .grid,
  .portfolio-grid {
    grid-template-columns: repeat(2, 1fr);
  }

  .menu {
    position: absolute;
    top: 70px;
    right: 8%;
    background: var(--branco);
    flex-direction: column;
    width: 220px;
    padding: 20px;
    display: none;
    box-shadow: 0 10px 25px rgba(0,0,0,0.12);
    border-radius: 16px;
  }

  .menu.active {
    display: flex;
  }

  .menu-toggle {
    display: block;
  }
}

@media (max-width: 600px) {
  .hero h1 {
    font-size: 2.1rem;
  }

  .hero-image img {
    width: 280px;
    height: 360px;
  }

  .grid,
  .portfolio-grid {
    grid-template-columns: 1fr;
  }

  .section {
    padding: 70px 6%;
  }
}const menuToggle = document.getElementById("menuToggle");
const menu = document.getElementById("menu");

menuToggle.addEventListener("click", () => {
  menu.classList.toggle("active");
});

document.querySelectorAll(".menu a").forEach(link => {
  link.addEventListener("click", () => {
    menu.classList.remove("active");
  });
});

const fadeElements = document.querySelectorAll(".fade-in");

function showOnScroll() {
  fadeElements.forEach(element => {
    const position = element.getBoundingClientRect().top;
    const screenHeight = window.innerHeight;

    if (position < screenHeight - 100) {
      element.classList.add("show");
    }
  });
}

window.addEventListener("scroll", showOnScroll);
window.addEventListener("load", showOnScroll);
