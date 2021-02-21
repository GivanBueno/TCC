<?php require_once 'config.php'; ?>
<?php require_once DBAPI; ?>
<?php include(HEADER_TEMPLATE); ?>

    <div class="slider-area2 section-bg2" data-background="assets/img/hero/hero5.png" style="background-image: url(&quot;assets/img/hero/hero5.png&quot;);">
        <div class="slider-height2 d-flex align-items-center">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap hero-cap2 text-center">
                            <h2>Fale Conosco</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


        <section class="contact-section">
            <div class="container">
                <div class="d-none d-sm-block mb-5 pb-4">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3659.9685588170173!2d-47.42432978502396!3d-23.461598584732492!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94cf5fc4d8f6e273%3A0xad4d55f84d20dc06!2sAve%20Independ%C3%AAncia%2C%20210%2C%20Sorocaba%20-%20SP!5e0!3m2!1spt-BR!2sbr!4v1597522141686!5m2!1spt-BR!2sbr" width="100%" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                </div>
                <div class="row">
                    <div class="col-12">
                        <h2 class="contact-title">Fale Conosco</h2>
                    </div>
                    <div class="col-lg-8">
                        <form class="form-contact contact_form" action="contact_process.php" method="post" id="contactForm" novalidate="novalidate">
                            <div class="row">
                            <div class="col-sm-6">
                                    <div class="form-group">
                                        <input class="form-control valid" name="name" id="name" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Nome'" placeholder="Nome">
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <input class="form-control valid" name="email" id="email" type="email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'E-mail'" placeholder="Email">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <input class="form-control" name="subject" id="subject" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Assunto'" placeholder="Assunto">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <textarea class="form-control w-100" name="message" id="message" cols="30" rows="9" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Sua Mensagem'" placeholder=" Sua Mensagem"></textarea>
                                    </div>
                                </div>
                                
                            </div>
                            <div class="form-group mt-3">
                                <button type="submit" class="button button-contactForm boxed-btn">Enviar</button>
                            </div>
                        </form>
                    </div>
                    <div class="col-lg-3 offset-lg-1">
                        <div class="media contact-info">
                            <span class="contact-info__icon"><i class="ti-home"></i></span>
                            <div class="media-body">
                                <h3>Av. Independência, 210 - Éden.</h3>
                                <p>Sorocaba - SP, 18087-101</p>
                            </div>
                        </div>
                        <div class="media contact-info">
                            <span class="contact-info__icon"><i class="ti-email"></i></span>
                            <div class="media-body">
                                <h3>observatoriobiodiversidadeurb@gmail.com</h3>
                                <p>Fale conosco a qualquer hora!</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


<?php include(FOOTER_TEMPLATE); ?>