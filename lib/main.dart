import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool opacidade = true;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: Container(),
          title: Text('Tarefas'), backgroundColor: Colors.blue,
        ),
        body: AnimatedOpacity(
          opacity: opacidade ? 1 : 0,
          duration: Duration(microseconds: 800),
          child: ListView(
            children: [
              Task('Aprender Flutter', 'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large', 3),
              Task('Andar de Bike', 'https://images.pexels.com/photos/161172/cycling-bike-trail-sport-161172.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 2),
              Task('Meditar', 'https://manhattanmentalhealthcounseling.com/wp-content/uploads/2019/06/Top-5-Scientific-Findings-on-MeditationMindfulness-881x710.jpeg', 5),
              Task('Ler', 'https://thebogotapost.com/wp-content/uploads/2017/06/636052464065850579-137719760_flyer-image-1.jpg', 4),
              Task('Jogar', 'https://i.ibb.co/tB29PZB/kako-epifania-2022-2-c-pia.jpg', 1),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              opacidade = !opacidade; //o inverso do booleano
            });
          },
          child: Icon(Icons.remove_red_eye),
        ),
      )
    );
  }
}

class Task extends StatefulWidget {
  final String nome;
  final String foto;
  final int dificuldade;

  const Task(this.nome, this.foto, this.dificuldade, {super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.blue,
              ),
              height: 140,),
            Column(
              children: [
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.black26,
                        ),
                        width: 72,
                        height: 100,
                        child: ClipRRect(
                              borderRadius: BorderRadius.circular(4),
                              child: Image.network( widget.foto,
                                    fit: BoxFit.cover,),
                            ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width: 200,
                              child: Text(widget.nome, style: TextStyle(
                                  fontSize: 24,
                                  overflow: TextOverflow.ellipsis
                              ),)
                          ),
                          Row(
                            children: [
                              Icon(
                                  Icons.star,
                                  size: 15,
                                  color: (widget.dificuldade >= 1) ? Colors.blue : Colors.blue[100],
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color: (widget.dificuldade >= 2) ? Colors.blue : Colors.blue[100],
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color: (widget.dificuldade >= 3) ? Colors.blue : Colors.blue[100],
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color: (widget.dificuldade >= 4) ? Colors.blue : Colors.blue[100],
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color: (widget.dificuldade >= 5) ? Colors.blue : Colors.blue[100],
                              ),
                            ],
                          )
                        ],
                      ),
                      Container(
                        height: 52,
                        child: ElevatedButton(
                            onPressed: (){
                              setState(() {
                                nivel++;
                              });
                              print(nivel);
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Icon(Icons.arrow_drop_up),
                                Text('UP', style: TextStyle(fontSize: 12),)
                              ],
                            ),
                        ),
                      )],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        width: 200,
                        child: LinearProgressIndicator(
                          color: Colors.white,
                          value: (widget.dificuldade > 0) ? (nivel/widget.dificuldade)/10 : 1,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text('Nivel: $nivel', style: TextStyle(color: Colors.white, fontSize: 20),),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}



