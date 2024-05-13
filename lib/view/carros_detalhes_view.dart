import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CarrosDetalhesView extends StatefulWidget {
  const CarrosDetalhesView({Key? key}) : super(key: key);

  @override
  State<CarrosDetalhesView> createState() => _CarrosDetalhesViewState();
}

class _CarrosDetalhesViewState extends State<CarrosDetalhesView> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: DefaultTabController(
        initialIndex: 0,
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Detalhes do anúncio',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 16.0),
                child: Image.asset(
                  'lib/image/logo/marca.png', // Altere para o caminho da sua imagem
                  width: 40, // Ajuste o tamanho da imagem conforme necessário
                  height: 40,
                ),
              ),
            ],
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Text(
                    'Veículo',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Vendedor',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Fipe',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
              indicatorColor: Colors.white, // Cor do indicador da aba ativa
            ),
            backgroundColor: Colors.black87, // Cor de fundo da AppBar
          ),
          body: Column(
            children: [
              Expanded(
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    final currentWidth = constraints.maxWidth;
                    final currentHeight = constraints.maxHeight;

                    var horizontalPadding = currentWidth * 0.03;
                    var verticalPadding = currentHeight * 0.03;

                    return Container(
                      padding: EdgeInsets.fromLTRB(
                        horizontalPadding,
                        verticalPadding * 0.05,
                        horizontalPadding,
                        verticalPadding * 0.05,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: SizedBox(
                        // Definindo uma altura explícita para o TabBarView
                        height: currentHeight -
                            (verticalPadding *
                                0.05 *
                                2), // Ajuste conforme necessário
                        child: TabBarView(
                          children: [
                            SingleChildScrollView(
                                child: veiculoView(
                                    verticalPadding)), // Adicionando um SingleChildScrollView para o conteúdo
                            SingleChildScrollView(
                                child:
                                    vendedorView()), // Adicionando um SingleChildScrollView para o conteúdo
                            SingleChildScrollView(
                                child:
                                    fipeView()), // Adicionando um SingleChildScrollView para o conteúdo
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          floatingActionButton: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MouseRegion(
                cursor: SystemMouseCursors
                    .click, // Altera o cursor para uma mãozinha
                child: GestureDetector(
                  onTap: () {
                    // Ação do primeiro botão
                  },
                  child: Container(
                    height: 50, // Ajuste a altura conforme necessário
                    width: 120, // Largura do botão retangular
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius:
                          BorderRadius.circular(10), // Borda arredondada
                    ),
                    child: Center(
                      child: Text(
                        'Ver Parcelas',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 50, // Altura desejada

                child: FloatingActionButton(
                  backgroundColor: Colors.greenAccent,
                  onPressed: () {},
                  child: Icon(Icons.phone),
                ),
              ),
              MouseRegion(
                cursor: SystemMouseCursors
                    .click, // Altera o cursor para uma mãozinha
                child: GestureDetector(
                  onTap: () {
                    // Ação do primeiro botão
                  },
                  child: Container(
                    height: 50, // Ajuste a altura conforme necessário
                    width: 120, // Largura do botão retangular
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius:
                          BorderRadius.circular(10), // Borda arredondada
                    ),
                    child: Center(
                      child: Text(
                        '   Enviar\nmensagem',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
        ),
      ),
    );
  }

  Widget veiculoView(var bottom) {
    return Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: Column(children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    height: 300.0,
                    aspectRatio: 9 / 9,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) {
                      // Navegar para a página da imagem atual
                    },
                    scrollDirection: Axis.horizontal,
                  ),
                  items: [
                    'lib/image/carro1/carro1.jpg',
                    'lib/image/carro1/carro2.jpg',
                    'lib/image/carro1/carro3.jpg',
                    'lib/image/carro1/carro4.jpg',
                    'lib/image/carro1/carro5.jpg',
                    'lib/image/carro1/carro6.jpg',
                  ].map((image) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.network(
                              image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),

                SizedBox(height: 16.0),
                // Nome do carro em destaque
                Text(
                  'Trailblazer '.toUpperCase(),
                  style: GoogleFonts.roboto(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic,
                    shadows: [
                      Shadow(
                        blurRadius: 6,
                        color: Colors.grey.withOpacity(0.5),
                        offset: Offset(4, 4),
                      ),
                    ],
                  ),
                ),

// Breve descrição
                Text(
                  'LT 2.8 2016 Aut. Diesel.'.toUpperCase(),
                  style: TextStyle(
                    fontSize: 14.0,
                    fontFamily: 'Roboto',
                    shadows: [
                      Shadow(
                        blurRadius: 4,
                        color: Colors.grey.withOpacity(0.5),
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 4.0),
                // Preço com botão para ver parcelas
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'R\$ 80.000,00',
                      style: GoogleFonts.roboto(
                        fontSize: 36.0,
                        fontWeight: FontWeight.w800,
                        // Exemplo de nova fonte
                      ),
                    ),
                  ],
                ),

                ElevatedButton(
                  onPressed: () {
                    // Navegar para a tela de parcelas
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black87, // Cor de fundo do botão
                    padding: EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 16), // Espaçamento interno do botão
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(8.0), // Borda do botão
                    ),
                  ),
                  child: Text(
                    'Ver Parcelas',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white, // Cor do texto do botão
                      fontFamily: 'Roboto', // Exemplo de nova fonte
                    ),
                  ),
                ),

                SizedBox(height: 16.0),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: dadosVeiculo('Cidade', 'Ribeirão Preto - SP'),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: dadosVeiculo('Ano', '2023/2024'),
                        ),
                        //SizedBox(width: 2),
                        Expanded(
                          child: dadosVeiculo('KM', '55.000'),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: dadosVeiculo('Cor', 'Branco'),
                        ),
                        Expanded(
                          child: dadosVeiculo('Carroceria', 'Esportivo'),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: dadosVeiculo('Portas', '4'),
                        ),
                        Expanded(
                          child: dadosVeiculo('Câmbio', 'Automático'),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: dadosVeiculo('Final da Placa', '0'),
                        ),
                        Expanded(
                          child: dadosVeiculo('Combustível', 'Díesel'),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: dadosVeiculo('IPVA Pago', 'Sim'),
                        )
                      ],
                    ),
                    Divider(),
                    itensVeiculo('Itens do veículo', [
                      'Airbag',
                      'Alarme',
                      'Ar quente',
                      'Ar condicionado',
                      'Freio ABS',
                      'Limpador traseiro',
                      'Retrovisores elétricos',
                      'Rodas de liga leve',
                      'Sensor de estacionamento',
                      'Travas elétricas',
                      'Vidros elétricos',
                      'Volante com regulagem de altura',
                      'Bancos em couro',
                      'Tração 4x4',
                    ]),
                    SizedBox(height: 8),
                    Divider(),
                    SizedBox(height: 16),
                    Divider(),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(8, 8, 16, 8),
                          child: Stack(
                            children: [
                              Icon(
                                Icons.drive_eta,
                                size: 30,
                                color: Colors.greenAccent,
                              ),
                              Positioned(
                                top: 2, // Posição vertical da sombra
                                left: 2, // Posição horizontal da sombra
                                child: Icon(
                                  Icons.drive_eta,
                                  size: 30,
                                  color: Colors.black.withOpacity(
                                      0.05), // Cor e opacidade da sombra
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Test-Drive',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Agende um horário para fazer seu Test-Drive.',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                width: 140,
                                height: 40,
                                child: ElevatedButton(
                                  onPressed: () {
                                    // Navegar para a tela de parcelas
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Colors.black87, // Cor de fundo do botão
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 20,
                                      vertical: 16,
                                    ), // Espaçamento interno do botão
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          8.0), // Borda do botão
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.calendar_today,
                                          color: Colors
                                              .white), // Ícone de calendário
                                      SizedBox(
                                          width:
                                              10), // Espaço entre o ícone e o texto
                                      Text(
                                        'Agendar',
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors
                                              .white, // Cor do texto do botão
                                          fontFamily:
                                              'Roboto', // Exemplo de nova fonte
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 8),
                    Divider(),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Sobre esse veículo',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'O Chevrolet Trailblazer é um veículo que evoca aventura e versatilidade. Com seu design robusto e suas capacidades off-road, o Trailblazer é muito mais do que um simples meio de transporte - é um convite para explorar novos horizontes e abraçar a liberdade da estrada aberta.',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        )),
                      ],
                    ),
                  ],
                ),

                SizedBox(
                  height: 16,
                ),

                Column(
                  children: [
                    Container(
                      width: double
                          .infinity, // Define a largura do container para preencher toda a largura disponível
                      color: Colors.grey[200], // Cor de fundo cinza
                      padding: EdgeInsets.all(16.0), // Espaçamento interno
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.flag,
                                  color: Colors.red), // Ícone de bandeirinha
                              SizedBox(
                                  width: 8.0), // Espaço entre o ícone e o texto
                              InkWell(
                                // Widget de tinta sensível ao toque para tornar o texto clicável
                                onTap: () {
                                  // Lógica para denunciar o anúncio
                                },
                                child: Text(
                                  'Denunciar Anúncio',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.black,
                                    decoration: TextDecoration
                                        .underline, // Sublinhado para indicar clicabilidade
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 100,
                          )
                        ],
                      ),
                    ),

                    // Outros widgets no Column
                  ],
                ),
              ],
            ),
          ),
        ]));
  }

  Widget vendedorView() {
    // Implementação da visualização do vendedor...
    return Container();
  }

  Widget fipeView() {
    // Implementação da visualização da Fipe...
    return Container();
  }

  Widget dadosVeiculo(String titulo, String subtitulo) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titulo,
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey,
          ),
        ),
        Text(
          subtitulo,
          style: TextStyle(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
      ],
    );
  }

  Widget itensVeiculo(String titulo, List<String> subtitulos) {
    List<Widget> rows = [];

    int numSubtitulos = subtitulos.length;

    // Verifica se o número de subtitulos é ímpar
    bool isImpar = numSubtitulos % 2 != 0;

    // Se for ímpar, remove o último subtítulo da lista para tratá-lo separadamente
    String ultimoSubtitulo = '';
    if (isImpar) {
      ultimoSubtitulo = subtitulos.removeLast();
      numSubtitulos--;
    }

    for (int i = 0; i < numSubtitulos; i += 2) {
      List<String> rowSubtitulos = subtitulos.sublist(i, i + 2);
      if (i != 0) {
        rows.add(SizedBox(height: 8));
      }
      rows.add(Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: rowSubtitulos
            .map((subtitulo) => Expanded(
                  child: Text(
                    subtitulo,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ))
            .toList(),
      ));
    }

    // Se o número de subtitulos for ímpar, adiciona o último subtítulo em uma linha separada
    if (isImpar) {
      rows.add(Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              ultimoSubtitulo,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ));
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 8),
        Text(
          titulo,
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey,
          ),
        ),
        SizedBox(height: 8),
        ...rows,
      ],
    );
  }
}
