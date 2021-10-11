<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="empleado.aspx.cs" Inherits="Test_Tak.views.empleado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!-- Header -->
    <div id="header">

        <div class="top">

            <!-- Logo -->
            <div id="logo">
                <span class="image avatar48">
                    <img src="/images/avatar.jpg" alt="" /></span>
                <h1 id="title">Victor Gomez</h1>
                <p>Software Developer</p>
            </div>

            <!-- Nav -->
            <nav id="nav">
                <ul>
                    <li><a href="#top" id="top-link"><span class="icon solid fa-home">Intro</span></a></li>
                    <li><a href="#portfolio" id="portfolio-link"><span class="icon solid fa-th">Crear Empleado</span></a></li>
                    <li><a href="#about" id="about-link"><span class="icon solid fa-user">Editar Empleado</span></a></li>
                    <li><a href="#contact" id="contact-link"><span class="icon solid fa-envelope">Contactenos</span></a></li>
                </ul>
            </nav>

        </div>

        <div class="bottom">

            <!-- Social Icons -->
            <ul class="icons">
                <li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
                <li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
                <li><a href="#" class="icon brands fa-github"><span class="label">Github</span></a></li>
                <li><a href="#" class="icon brands fa-dribbble"><span class="label">Dribbble</span></a></li>
                <li><a href="#" class="icon solid fa-envelope"><span class="label">Email</span></a></li>
            </ul>

        </div>

    </div>

    <!-- Main -->
    <div id="main">

        <!-- Intro -->
        <section id="top" class="one dark cover">
            <div class="container">

                <header>
                    <h2 class="alt">Prueba Tecnica
									<br />
                        Corporacion <a href="http://tak.gt">TAK</a>.</h2>
                </header>

                <footer>
                    <a href="#portfolio" class="button scrolly">Crear Empleado</a>
                </footer>

            </div>
        </section>

        <!-- Portfolio -->
        <section id="portfolio" class="two">
            <div class="container">

                <header>
                    <h2>Crear Empleado</h2>
                </header>


                <div class="row">
                    <div class="col-4 col-12-mobile">
                        <asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label>
                        <asp:TextBox ID="name" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-4 col-12-mobile">
                        <asp:Label ID="Label2" runat="server" Text="Direccion"></asp:Label>
                        <asp:TextBox ID="addre" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-4 col-12-mobile">

                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:Label ID="Label3" runat="server" Text="Fecha Nacimiento"></asp:Label>
                                <asp:Calendar ID="datenac"
                                    runat="server" >
                                </asp:Calendar>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                    </div>
                 <div class="row">
                    <div class="col-4 col-12-mobile">
                        <asp:Label ID="Label4" runat="server" Text="Estado Civil"></asp:Label>
                        <asp:TextBox ID="estadocivil" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-4 col-12-mobile">
                        <asp:Label ID="Label5" runat="server" Text="Grado Academico"></asp:Label>
                        <asp:TextBox ID="gradoacademico" runat="server"></asp:TextBox>
                    </div>
                </div>
                </div>
            <asp:Button ID="Button1" runat="server" Text="Guardar" OnClick="Button1_Click" />

        </section>

        <!-- About Me -->
        <section id="about" class="three">
            <div class="container">

                <header>
                    <h2>Empleados</h2>
                </header>

                <asp:GridView ID="empe" runat="server"></asp:GridView>

                 <header>
                    <h2>Actualizar Empleado</h2>
                </header>


                <div class="row">
                    <div class="col-4 col-12-mobile">
                        <asp:Label ID="Label11" runat="server" Text="ID Empleado"></asp:Label>
                        <asp:TextBox ID="idemp" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-4 col-12-mobile">
                        <asp:Label ID="Label6" runat="server" Text="Nombre"></asp:Label>
                        <asp:TextBox ID="unombre" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-4 col-12-mobile">
                        <asp:Label ID="Label7" runat="server" Text="Direccion"></asp:Label>
                        <asp:TextBox ID="uad" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-4 col-12-mobile">

                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <ContentTemplate>
                                <asp:Label ID="Label8" runat="server" Text="Fecha Nacimiento"></asp:Label>
                                <asp:Calendar ID="udatenac"
                                    runat="server" >
                                </asp:Calendar>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                    </div>
                 <div class="row">
                    <div class="col-4 col-12-mobile">
                        <asp:Label ID="Label9" runat="server" Text="Estado Civil"></asp:Label>
                        <asp:TextBox ID="uec" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-4 col-12-mobile">
                        <asp:Label ID="Label10" runat="server" Text="Grado Academico"></asp:Label>
                        <asp:TextBox ID="ugac" runat="server"></asp:TextBox>
                    </div>
                </div>
                </div>
            <asp:Button ID="Button2" runat="server" Text="Actualizar" OnClick="Button2_Click" />
            
            <div class="row">
                    <div class="col-4 col-12-mobile">
                        <asp:Label ID="Label12" runat="server" Text="ID Empleado"></asp:Label>
                        <asp:TextBox ID="dnombre" runat="server"></asp:TextBox>
                    </div>
                   
                </div>
          <asp:Button ID="Button3" runat="server" Text="Eliminar" OnClick="Button3_Click" />
        </section>

        <!-- Contact -->
        <section id="contact" class="four">
            <div class="container">

                <header>
                    <h2>Contactenos</h2>
                </header>

                <p>
                    Escribanos para mayor informacion.
                </p>

                    <div class="row">
                        <div class="col-6 col-12-mobile">
                            <input type="text" name="name" placeholder="Nombre" /></div>
                        <div class="col-6 col-12-mobile">
                            <input type="text" name="email" placeholder="Email" /></div>
                        <div class="col-12">
                            <textarea name="message" placeholder="Mensaje"></textarea>
                        </div>
                        <div class="col-12">
                            <input type="submit" value="Enviar" />
                        </div>
                    </div>
               
            </div>
        </section>

    </div>

    <!-- Footer -->
    <div id="footer">

        <!-- Copyright -->
        <ul class="copyright">
            <li>&copy; Untitled. All rights reserved.</li>
            <li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
        </ul>

    </div>

    <!-- Scripts -->
    <script src="/assets/js/jquery.min.js"></script>
    <script src="/assets/js/jquery.scrolly.min.js"></script>
    <script src="/assets/js/jquery.scrollex.min.js"></script>
    <script src="/assets/js/browser.min.js"></script>
    <script src="/assets/js/breakpoints.min.js"></script>
    <script src="/assets/js/util.js"></script>
    <script src="/assets/js/main.js"></script>

</asp:Content>
