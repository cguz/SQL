-- phpMyAdmin SQL Dump
-- version 2.11.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 25, 2008 at 05:42 AM
-- Server version: 4.1.22
-- PHP Version: 5.2.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `keopstd_norechazados`
--

-- --------------------------------------------------------

--
-- Table structure for table `adjuntosproyectos`
--

CREATE TABLE `adjuntosproyectos` (
  `IdAdjunto` bigint(255) unsigned NOT NULL auto_increment,
  `IdProyecto` bigint(100) unsigned NOT NULL default '0',
  `Archivo` text NOT NULL,
  `EstadoAdjunto` char(1) NOT NULL default '',
  PRIMARY KEY  (`IdAdjunto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `adjuntosproyectos`
--

INSERT INTO `adjuntosproyectos` VALUES(1, 1, './adj_proyectos/proyecto_1Punto.pdf', 'A');
INSERT INTO `adjuntosproyectos` VALUES(2, 1, './adj_proyectos/proyecto_1screenshot.gif', 'A');
INSERT INTO `adjuntosproyectos` VALUES(3, 2, './adj_proyectos/proyecto_2Imagen 3.png', 'A');
INSERT INTO `adjuntosproyectos` VALUES(4, 5, './adj_proyectos/proyecto_5Padre noster.doc', 'I');
INSERT INTO `adjuntosproyectos` VALUES(5, 16, './adj_proyectos/proyecto_16documento_xidntd-d.pdf', 'A');
INSERT INTO `adjuntosproyectos` VALUES(6, 17, './adj_proyectos/proyecto_17impaginato imperial.pdf', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `articulos`
--

CREATE TABLE `articulos` (
  `IdArticulo` bigint(50) unsigned NOT NULL auto_increment,
  `TituloArticulo` varchar(100) NOT NULL default '',
  `TextoArticulo` text NOT NULL,
  `FirmaAutorArticulo` varchar(100) NOT NULL default '',
  `ImagenArticulo` text NOT NULL,
  `EstadoArticulo` char(1) NOT NULL default '',
  `FechaIngresoArticulo` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`IdArticulo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `articulos`
--

INSERT INTO `articulos` VALUES(1, 'Articulo Prueba', '<p>Prueba</p>', 'Cesar Prueba', './img_articulos/imagen_articulo_1.JPG', 'A', '2008-02-23 11:23:41');
INSERT INTO `articulos` VALUES(2, 'Sobre los jurados artísticos: la conveniencia de publicitar', '<p style=\\"text-align: justify; line-height: 150%\\" class=\\"MsoNormal\\"><span>Interesante e interesado (por nuestra parte) debate sobre la funci&oacute;n del &ldquo;jurado&rdquo; en la concesi&oacute;n de premios, becas o programas de arte. Hace poco iniciamos un <a href=\\"http://www.hempreslaradio.net/2007/rock.php\\" target=\\"_blank\\">peque&ntilde;o programa de radio</a> que retransmite en directo jurados de artes pl&aacute;sticas. A raiz de su primera emisi&oacute;n, se han dicho cosas sugerentes sobre el papel de los jurados, un tema que, por una raz&oacute;n o por la misma, nunca est&aacute; en el candelero.</span></p> <p>Expresar tus opiniones profesionales en p&uacute;blico, como miembro de un jurado, no es cosa f&aacute;cil, es cierto. Se mezclan muchos factores para preferir mantener ocultas las deliberaciones de un jurado: por un lado, la esperanza de que no descubra nadie las paradojas naturales de uno mismo, o la posible timidez. Por el otro, el &ldquo;prestigio&rdquo;, t&eacute;rmino ilusionista de por s&iacute;, tiene la virtud de definir aquel merecido respeto de la persona que lo posee, por su experiencia, trayectoria o posici&oacute;n. No queremos menospreciar algunas de esas cosas, pero &iquest;a qu&eacute; se debe el prestigio, sino a la calidad y variedad de los argumentos expuestos y esgrimidos? &iquest;por qu&eacute;, entonces, habr&iacute;an de mantenerse ocultos?</p> <p style=\\"text-align: justify; line-height: 150%\\" class=\\"MsoNormal\\"><span>Efectivamente, la publicitaci&oacute;n de las deliberaciones tiene un problema. La &ldquo;validez social&rdquo; del jurado, cuando se hace p&uacute;blica su composici&oacute;n, y a&uacute;n m&aacute;s, cuando se publicitan sus argumentos, puede contaminar innecesariamente a los receptores de los premios. Emitir en abierto los argumentos del jurado puede adquirir un protagonismo del que la obra no tiene porqu&eacute; participar, al tiempo que puede hacer de la emisi&oacute;n, el espect&aacute;culo. S&iacute;, pero quedarnos ah&iacute; ser&iacute;a hacerlo a medio camino. </span></p> <p style=\\"text-align: justify; line-height: 150%\\" class=\\"MsoNormal\\"><span>Cuando el jurado es secreto, esto es, no se publicitan los nombres de sus miembros, el resultado es lo importante: el artista, la obra. Las personalidades y las decisiones de los miembros no intoxican, y la obra se lleva toda la atenci&oacute;n. Pero esto es claramente un ejercicio de ilusi&oacute;n: la decisi&oacute;n del jurado es la raz&oacute;n misma de todo el proceso, no la obra premiada. En esto, hay que apartar el humo. La mayor&iacute;a de las obras, proyectos, ya existen, se conocen, son visibles antes de llegar a las manos del jurado. No digamos de los artistas: dificilmente consigue alguien un premio siendo desconocido para el jurado. Es la decisi&oacute;n del jurado lo que se celebra y se pone en juego, tanto la eventual adhesi&oacute;n como el rechazo de los dem&aacute;s a sus decisiones. Que el jurado sea secreto no es m&aacute;s que una escenografia en la que interpretar el juego de los arcanos. Pero, ultimadamente, el proyecto u obra premiada acaba retratando al jurado, por lo que no se entiende el juego de ficciones: &iquest;por qu&eacute; he &ldquo;imaginar&rdquo; las razones del jurado, cuando puedo saberlas de viva voz? &iquest;por qu&eacute; las razones de un jurado se han de mantener ocultas? &iquest;por qu&eacute; tengo que interpretarlas en la obra ganadora? y &iquest;con qu&eacute; criterios debo interpretarlas si desconozco las razones del jurado? </span></p> <p style=\\"text-align: justify; line-height: 150%\\" class=\\"MsoNormal\\"><span>Todas estas posiciones no hacen sino retratar el profundo perfil que el formalismo moderno ha dejado en la pol&iacute;tica cultural: la obra de arte, como obra en s&iacute;, pero tambi&eacute;n como espejo de lo que le confiere valor, ha de interpretarse sin el conocimiento previo de las razones que la crearon. No es que &eacute;stas no existan, sino que quedan reducidas a la intimidad de un c&iacute;rculo reducido, que, en el caso que nos ocupa, es un jurado secreto. Por el mero hecho de retransmitir las deliberaciones de un jurado no se acaba con ese relato art&iacute;stico, ciertamente, pero s&iacute; ilustra otras posibilidades de hacer, que no se basan en la escenificaci&oacute;n del prestigio y de la profesionalidad mediante el recurso a la oscuridad. Oscuridad, que perjudica a la fortaleza del debate en el sistema pol&iacute;tico cultural, y oscuridad que lleva a malentendidos.</span></p> <p style=\\"text-align: justify; line-height: 150%\\" class=\\"MsoNormal\\"><span>Quien ha estado en un jurado, lo sabe: las sesiones de deliberaci&oacute;n son, sobre todo, un encuentro entre unos cuantos profesionales que hablan y opinan, se contradicen, escarnecen o alaban. Simplemente, saliendo a fumar fuera, tomando caf&eacute;. Habitualmente no hay contubernios, como algunos quieren ver en todas partes. En todo caso, cuando los hay, nada mejor que la transparencia para evitarlos. Tampoco hay grandes revelaciones de follet&iacute;n o sobre lo que se lleva hoy, como algunos desear&iacute;an. Hay opiniones, cotorreos, argumentos m&aacute;s o menos s&oacute;lidos, y, como en todo grupo elector, sumas y restas de votos, cambios de parecer, apuestas largas, etc.. Al fin y al cabo, uno quiere que salga lo que le gusta, o sobre lo que tiene inter&eacute;s (o intereses). Este tambi&eacute;n es un tema enjundioso: &iquest;debe un jurado votar lo que le gusta o guiarse por un criterio profesional apartado del gusto?; &iquest;cu&aacute;ntas veces un miembro de un jurado admite que no le gusta la obra de un artista, pero le da su confianza por la carrera en perspectiva del solicitante, por un sentimiento de justicia, o como apuesta a una obra de dif&iacute;cil salida o producci&oacute;n?</span></p> <p style=\\"text-align: justify; line-height: 150%\\" class=\\"MsoNormal\\"><span>Al tiempo, el argumento de que los miembros del jurado se sienten intolerantemente cohibidos, que cambian sus formas de expresarse, que suavizan su discurso, que, en pocas palabras, se convierten en unos hip&oacute;critas, es absurdo. Ni los miembros de los jurados son chiquillos que se azoran ante un micr&oacute;fono de ambiente, ni tampoco los que ya son hip&oacute;critas de por s&iacute; lo ser&aacute;n m&aacute;s por hacerlo p&uacute;blico.</span></p> <p style=\\"text-align: justify; line-height: 150%\\" class=\\"MsoNormal\\"><span>Los nombres de los miembros de los jurados, desde nuestro punto de vista, s&oacute;lo deber&iacute;an mantenerse en secreto, en todo caso, hasta que se cierre el plazo de entrega de solicitudes. La raz&oacute;n de ello es obvia: puede haber artistas que no se presentan a una convocatoria porque consideran que &ldquo;no tendr&aacute;n ninguna oportunidad&rdquo; debido a la presencia de tal o cual jurado, supuestamente contrario a su l&iacute;nea de trabajo. Al mismo tiempo, de esta forma, tampoco los jurados pueden recibir &ldquo;presiones&rdquo; externas previas a las deliberaciones, como, a veces ocurre, aunque ello no evitar&aacute; que determinados miembros puedan sugerir a amig&aelig;s artistas que se presenten porque &ldquo;tendr&aacute;n m&aacute;s oportunidad&rdquo;. Esa supuesta &ldquo;ventaja&rdquo;, en todo caso, quedar&iacute;a manifiesta si las deliberaciones fueran accesibles al p&uacute;blico.</span></p> <p style=\\"text-align: justify; line-height: 150%\\" class=\\"MsoNormal\\"><span>Otro argumento que se ha sumado a este debate es la aparente incomodidad de los artistas ante el hecho de que su obra sea discutida p&uacute;blicamente. En esta direcci&oacute;n, se ha sugerido que, por un lado, los solicitantes que no son seleccionados pueden sufrir el handicap de ver c&oacute;mo unos expertos desaconsejan p&uacute;blicamente su elecci&oacute;n, lo que puede repercutir negativamente en sus carreras. Por otro lado, se ha planteado tambi&eacute;n el hecho de que los artistas pueden acabar adaptando los proyectos en funci&oacute;n de los c&oacute;digos y planteamientos de los jurados, y dando pie a pr&aacute;cticas art&iacute;sticas m&aacute;s basadas en estrategias que en conceptos propios. </span></p> <p style=\\"text-align: justify; line-height: 150%\\" class=\\"MsoNormal\\"><span>Ambas tesis se basan en premisas contaminadas. En primer lugar, &iquest;por qu&eacute; raz&oacute;n habr&iacute;a de ser normal que se airearan las deliberaciones &ldquo;favorables&rdquo; a una obra o a un artista y, en cambio, no lo ser&iacute;a en el caso de que fueran negativas? &iquest;cu&aacute;l es el baremo que crea esta diferencia? &iquest;por qu&eacute; mantener esta mentalidad paternalista en la gesti&oacute;n cultural? Es m&aacute;s, lo que aparentemente se juzga en un jurado cuyas deliberaciones son secretas es el &ldquo;premio&rdquo;, el ganador o ganadora de la convocatoria, cuando, en realidad, tambi&eacute;n (o especialmente) deber&iacute;an juzgarse las razones aducidas por el jurado. Consecuentemente, los artistas no seleccionados no traducir&iacute;an el debate p&uacute;blico simplemente en t&eacute;rminos de &ldquo;cr&iacute;tica negativa&rdquo; a su obra, sino que se apoyar&iacute;an en una cr&iacute;tica a los propios argumentos del jurado, cosa que, por otra parte, ya ocurre de la manera m&aacute;s natural: &iquest;por qu&eacute;, entonces, seguir con este confuso ejercicio de prestidigitaci&oacute;n?</span></p> <p style=\\"text-align: justify; line-height: 150%\\" class=\\"MsoNormal\\"><span>La segunda de estas tesis, la del peligro que se corre de convocar &uacute;nicamente a artistas &ldquo;profesionales del premio&rdquo;, peca de ingenuidad, porque esa es ya la realidad actual. Cualquier artista o agente cultural que se presenta a una subvenci&oacute;n o premio sabe perfectamente que, sobre todo, debe cumplir unos ciertos requisitos de presentaci&oacute;n, sin los cuales lo tiene magro para conseguir algo. Desde la redacci&oacute;n de los conceptos y de los t&eacute;rminos de producci&oacute;n hasta los presupuestos, todas las solicitudes est&aacute;n de alguna manera &ldquo;vestidas&rdquo; para conseguir determinados efectos en el jurado. No saber esto es no conocer la realidad art&iacute;stica. Sino, &iquest;por qu&eacute; varios centros y entidades de producci&oacute;n y acad&eacute;micas ya dan en la actualidad cursos o seminarios acerca de c&oacute;mo presentar una beca?</span></p> <p style=\\"text-align: justify; line-height: 150%\\" class=\\"MsoNormal\\"><span>El temor de algun&aelig;s artistas a ver p&uacute;blicas las opiniones cr&iacute;ticas de unos determinados profesionales del arte sobre sus obras s&oacute;lo parece explicarse por un enquistado autismo, por una lastrada concepci&oacute;n de la pr&aacute;ctica art&iacute;stica segmentada en sectores profesionales &ldquo;estancos&rdquo; (artistas, gestores, comisarios, cr&iacute;ticos, prensa, p&uacute;blico). Paralelamente, esto no es de extra&ntilde;ar, pues much&aelig;s de ell&aelig;s todav&iacute;a son incapaces o indiferentes a expresar o comunicar los significados de sus obras, derivando a los cr&iacute;ticos el papel de definirlas. Este hermetismo cr&oacute;nico de muchos artistas tiene que ver con el modelo educativo que tenemos, sin ning&uacute;n lugar a dudas, pero tambi&eacute;n con una visi&oacute;n &ldquo;delegada&rdquo; de la responsabilidad p&uacute;blica de los creadores, que utilizan el supuesto modelo de &ldquo;estructuras estancas&rdquo; (un jurado) como justificaci&oacute;n de las arbitrariedades o como forma de engrasar estrategias de &eacute;xito: &ldquo;no me han dado la beca porque no me entienden&rdquo; versus &ldquo;me han dado la beca porque la obra tiene unas cualidades positivas <em>per se</em>&rdquo;. Si un hecho t&eacute;cnico define las convocatorias art&iacute;sticas (tal y c&oacute;mo est&aacute; planteadas hoy en d&iacute;a, que tambi&eacute;n podr&iacute;an modificarse, pero ese es ya otro tema) es que los artistas deben presentar sus proyectos bien estructurados, redactados y justificados. La publicidad de esos informes s&oacute;lo har&iacute;a que beneficiar al debate sobre las razones por las que una obra es seleccionada o no, diluyendo el pesado fardo que interesadamente se pone(n) sobre los hombros (de) los jurados.</span></p> <p style=\\"text-align: justify; line-height: 150%\\" class=\\"MsoNormal\\"><span>El debate sobre la publicitaci&oacute;n o no de las deliberaciones de un jurado se plantea muy interesante. Por un lado, nos habla de una serie de actitudes adquiridas o heredadas en el &aacute;mbito de la gesti&oacute;n p&uacute;blica que intentan responder a una supuesta normalizaci&oacute;n con respecto a otros &aacute;mbitos profesionales o t&eacute;cnicos. Y por el otro, nos encontramos con una pol&iacute;tica cultural que niega el acceso a las razones que la constituyen. </span></p> <p style=\\"text-align: justify; line-height: 150%\\" class=\\"MsoNormal\\"><span>La publicitaci&oacute;n de las razones de un jurado puede adquirir formas diversas: desde la elaboraci&oacute;n de documentos p&uacute;blicos razonados en los que se exponen los argumentos de un jurado tras el fallo hasta la directa transmisi&oacute;n de las deliberaciones. En toda discusi&oacute;n existen grados diferentes de lectura, matices, paletas de grises. Pero, de lo que no tenemos duda, es que la exposici&oacute;n p&uacute;blica de los razonamientos de un jurado facilita que, al menos, la gente pueda juzgar las razones y motivos que gu&iacute;an la distribuci&oacute;n de recursos econ&oacute;micos para el fomento de la creaci&oacute;n art&iacute;stica, y valorar los beneficios y las inconveniencias del sistema.</span></p>', 'Por Jorge Luis Marzo y Mery Cuesta', './img_articulos/imagen_articulo_2.jpg', 'A', '2008-02-27 08:50:02');
INSERT INTO `articulos` VALUES(3, 'articulo prueva', 'orem ipsum dolor sit amet, consectetuer adipiscing elit. Pellentesque et massa eget leo iaculis hendrerit. Aenean nibh. Integer volutpat egestas orci. Nullam sodales congue mauris. Vivamus in erat. Duis ipsum massa, dignissim ac, varius vel, porttitor non, augue. Quisque metus dui, venenatis at, pulvinar a, tempus sed, justo. Proin eu sem quis mi faucibus dignissim. Duis purus dolor, convallis vitae, venenatis quis, dignissim ut, massa. Phasellus urna. Integer placerat interdum metus. Ut viverra ante sit amet ligula. Nulla facilisi. Suspendisse quam urna, lobortis nec, pellentesque sagittis, viverra mollis, nisl. Praesent facilisis.  <p>Maecenas lobortis urna in est. Nunc et diam. Etiam dolor. Suspendisse porta venenatis mi. Vivamus sed eros. Mauris metus urna, mattis sit amet, lobortis in, feugiat sit amet, nulla. Nam accumsan, augue eget tempor gravida, ipsum ipsum dapibus sem, nec gravida eros felis quis diam. Donec euismod est eu ipsum. Proin eget felis. Etiam lobortis, nisi non sodales cursus, erat tellus laoreet nisl, ut consequat lacus nunc vitae purus. Donec nunc. Suspendisse euismod, nulla et bibendum tincidunt, nisi purus feugiat velit, ac suscipit enim enim nec arcu. Nam ac est. Donec a pede. Nulla a erat hendrerit elit tempus fringilla. Ut non nunc eu justo ultricies egestas. </p> <p>Proin luctus eleifend dui. Mauris sodales. Donec auctor tempor diam. Integer magna. Ut dictum. Cras risus sapien, tempus in, eleifend quis, consectetuer non, sem. Morbi arcu nisi, tincidunt et, ullamcorper id, dictum sed, neque. Praesent eu tortor. Nulla nec orci eget ipsum posuere iaculis. Integer at diam in ipsum dapibus ultricies. Suspendisse nibh ligula, nonummy ac, egestas non, sodales ac, nisi. Praesent est. Pellentesque interdum. Suspendisse dui justo, molestie non, tempor non, elementum ac, risus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; </p> <p>Curabitur eget sapien id ligula fermentum nonummy. Sed id lorem. Phasellus dapibus varius velit. Praesent consequat orci id nisl. Mauris justo tellus, sodales eu, eleifend eget, iaculis vel, erat. In lacus nisl, placerat eu, luctus id, ornare et, orci. Nam mollis consectetuer felis. Proin porttitor justo sed dui. Praesent non orci in justo nonummy semper. Aliquam consequat gravida urna. Nam consequat gravida lectus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vestibulum ac justo. Nam ornare suscipit mauris. Nullam eget odio. Curabitur urna sapien, vehicula tincidunt, pretium eget, consequat nec, mi. Quisque metus. </p> <p>Sed arcu lectus, elementum ut, tempus vitae, rhoncus vitae, erat. Sed ac orci id dui ultricies pulvinar. Mauris interdum libero ac elit. Aliquam nunc. Donec vel sapien et sem euismod suscipit. Vivamus ultricies porttitor tellus. Suspendisse tincidunt justo quis purus. Etiam vel urna. Etiam id risus quis metus accumsan bibendum. Suspendisse potenti. Vivamus ac lectus ac metus egestas lacinia. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Aliquam erat volutpat. </p> <p>Donec ac sem ac lacus venenatis dictum. Aenean porta fermentum odio. Praesent urna purus, convallis ac, commodo et, porttitor at, leo. Aliquam at lorem et mi facilisis accumsan. Aliquam euismod, dolor facilisis lobortis eleifend, libero nisl euismod neque, id adipiscing ante tortor sit amet leo. Ut vulputate, nisi et pellentesque imperdiet, felis nisl mollis neque, in pretium enim felis porttitor eros. Aenean in mauris. Sed elit ligula, tempus ornare, suscipit sit amet, eleifend tempor, erat. Suspendisse potenti. Nam fermentum augue ut nibh. Donec mattis scelerisque nisl. Cras in velit elementum nibh iaculis tempor. Fusce lobortis ligula vitae sapien cursus dignissim. Proin dignissim, enim at fermentum condimentum, sapien lorem faucibus nunc, vitae dapibus tellus enim nec lectus. In dictum semper massa. Curabitur vitae dui ac leo placerat iaculis. Vestibulum non augue ut est porttitor venenatis. Aliquam pharetra placerat nibh. Ut consequat, dui eget faucibus ultrices, est metus consectetuer purus, sit amet ultrices augue nulla ut metus. Vestibulum ac quam. </p> <p>Nulla quam elit, adipiscing vel, tempus in, consectetuer vulputate, augue. Sed sapien felis, blandit quis, molestie et, interdum eget, ante. Aliquam vel nulla. Vivamus suscipit diam id ligula. Sed facilisis blandit odio. Quisque erat urna, dictum semper, viverra quis, interdum eu, erat. Maecenas egestas. Curabitur vel nisi ac ligula dictum congue. Curabitur neque lorem, scelerisque rutrum, dapibus eu, nonummy id, erat. Nulla id risus ac dui suscipit rhoncus. Cras hendrerit elementum elit. </p> <p>Sed rutrum, diam vel auctor rhoncus, nulla dolor vestibulum nibh, nec accumsan sem est consequat lectus. Morbi enim lacus, pretium ut, feugiat in, consectetuer eget, purus. Morbi fringilla mi. Proin sit amet leo eu mi bibendum dapibus. Sed lorem. Sed feugiat, libero a aliquam interdum, neque dui condimentum dolor, at rhoncus lacus ante id ante. Sed bibendum. Aliquam dignissim rhoncus nunc. Nam interdum, purus vel elementum pretium, dui eros cursus nisi, sed consectetuer ligula lectus ac dolor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris non augue vitae magna tristique fermentum. Nam et mauris. Sed nonummy nisl. Morbi vestibulum tincidunt ligula. Nam semper pede. Donec et sem. </p> <p>Vestibulum dictum tincidunt leo. Vivamus sem. Fusce nisi arcu, ornare sit amet, tristique quis, molestie luctus, leo. Etiam a tortor. Integer suscipit tempor mauris. Ut nec velit. Pellentesque augue. Sed metus lorem, varius non, consequat sed, dignissim id, turpis. Vestibulum scelerisque, erat sed hendrerit venenatis, eros tellus luctus dolor, blandit tincidunt ligula nisi a est. Pellentesque euismod. Suspendisse tempus, dolor sed hendrerit pharetra, justo justo tempus nulla, eu rutrum purus ligula et ligula. Phasellus velit sem, blandit sit amet, suscipit et, volutpat sit amet, justo. Quisque accumsan risus non massa. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Nullam convallis sapien ac pede. Fusce rhoncus tristique neque. </p> <p>Quisque ipsum neque, feugiat at, tempor varius, tincidunt ac, eros. Integer turpis. Morbi semper, lacus et bibendum facilisis, nunc augue fringilla arcu, eget molestie diam nunc vitae ante. Vivamus fermentum purus in turpis. Duis odio lectus, tristique a, fermentum in, lacinia quis, odio. Aenean fermentum. Suspendisse tempor dolor a pede placerat egestas. Sed interdum venenatis orci. Ut lorem mauris, adipiscing non, lacinia vel, laoreet sed, augue. Proin pellentesque mauris et quam. Aenean in odio eget tortor eleifend consequat. Donec pharetra sollicitudin massa. </p> <p>In adipiscing malesuada lorem. Vestibulum sagittis. Praesent malesuada varius metus. Sed vestibulum molestie turpis. Donec accumsan sapien at quam. Cras venenatis nunc ac nunc. Suspendisse potenti. Ut consequat rhoncus erat. Proin eu dolor eu augue lacinia tincidunt. Quisque libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus dapibus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Etiam faucibus. Praesent auctor. </p> <p>Suspendisse tempor velit nec erat. Nunc mauris nisi, convallis id, vestibulum at, aliquam at, mauris. Proin ac nisi. Sed purus massa, consequat vel, tincidunt quis, posuere sit amet, dui. Praesent non magna. Maecenas sit amet metus ac tortor aliquet commodo. Sed nec dui sit amet neque auctor pulvinar. Aenean hendrerit hendrerit mi. Duis ut nibh rutrum nisl fermentum tempus. Curabitur porta. Nullam est. Proin et orci. Ut nunc nunc, posuere sed, aliquam ac, scelerisque bibendum, odio. </p> <p>Donec libero sapien, lacinia in, tincidunt a, accumsan quis, leo. Phasellus iaculis tristique arcu. Integer fringilla. Vestibulum lorem sem, commodo et, imperdiet in, egestas et, enim. Vestibulum volutpat consectetuer ante. Donec pede velit, pulvinar non, congue ut, sollicitudin in, turpis. Phasellus id neque. Fusce aliquam tortor nec mauris. Duis laoreet velit vitae tellus. Vestibulum eget velit sollicitudin turpis fermentum blandit. Suspendisse nisl eros, bibendum ac, posuere id, vulputate a, augue. </p>', 'david vinagre', './img_articulos/imagen_articulo_3.png', 'I', '2008-03-02 16:42:10');
INSERT INTO `articulos` VALUES(4, 'articulo de prueva par agiorgio', '&nbsp;giorigio via a cagaregiorigio via a cagaregiorigio via a cagaregiorigio via a cagaregiorigio via a cagaregiorigio via a cagaregiorigio via a cagaregiorigio via a cagaregiorigio via a cagaregiorigio via a cagaregiorigio via a cagaregiorigio via a cagaregiorigio via a cagaregiorigio via a cagaregiorigio via a cagaregiorigio via a cagaregiorigio via a cagaregiorigio via a cagare<span style=\\"white-space: pre\\" class=\\"Apple-tab-span\\">	</span>', 'david', './img_articulos/imagen_articulo_4.jpg', 'A', '2008-03-25 12:24:46');
INSERT INTO `articulos` VALUES(5, 'articulo de prueva par agiorgio', '&nbsp;giorigio via a cagaregiorigio via a cagaregiorigio via a cagaregiorigio via a cagaregiorigio via a cagaregiorigio via a cagaregiorigio via a cagaregiorigio via a cagaregiorigio via a cagaregiorigio via a cagaregiorigio via a cagaregiorigio via a cagaregiorigio via a cagaregiorigio via a cagaregiorigio via a cagaregiorigio via a cagaregiorigio via a cagaregiorigio via a cagare<span style=\\"white-space: pre\\" class=\\"Apple-tab-span\\">	</span>', 'david', './img_articulos/imagen_articulo_5.jpg', 'I', '2008-03-25 12:24:49');
INSERT INTO `articulos` VALUES(6, 'lorem ipsum', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nam sed leo. Duis eget metus. Vivamus non sapien nec ante placerat ullamcorper. Phasellus consectetuer nisl id est. Proin ante sapien, mattis ut, tempor dictum, gravida a, eros. <a href=\\"http:\\\\\\\\www.acidofolclorico.net\\">Fusce</a> ligula nulla, commodo eu, semper ut, fringilla eget, leo. Vivamus accumsan pede vel nunc. Nullam vitae ipsum in quam ornare eleifend. Vestibulum molestie lectus non diam. Pellentesque vestibulum diam ac arcu. Donec non magna a justo porttitor gravida.</p><p>Sed facilisis euismod libero. Nam libero sapien, dapibus et, dignissim eu, eleifend non, nunc. Donec gravida viverra arcu. Morbi pulvinar urna sed elit. Duis sit amet nunc. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nam non orci id tortor dapibus fermentum. Praesent lobortis purus et ligula varius sodales. Aliquam euismod magna in justo. Sed vestibulum fermentum dolor. Nam lacus metus, condimentum sit amet, sodales sed, consequat sed, odio. Etiam molestie. Nullam diam velit, facilisis nec, posuere sed, iaculis sit amet, nisl. Pellentesque vulputate. Nulla odio libero, hendrerit in, posuere a, volutpat sit amet, nunc. Cras a purus a felis lobortis ultrices. Aliquam interdum mattis felis. Suspendisse potenti.</p>', 'david', './img_articulos/imagen_articulo_6.jpg', 'A', '2008-04-10 05:53:03');
INSERT INTO `articulos` VALUES(7, 'lalala', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nam sed leo. Duis eget metus. Vivamus non sapien nec ante placerat ullamcorper. Phasellus consectetuer nisl id est. Proin ante sapien, mattis ut, tempor dictum, gravida a, eros. Fusce ligula nulla, commodo eu, semper ut, fringilla eget, leo. Vivamus accumsan pede vel nunc. Nullam vitae ipsum in quam ornare eleifend. Vestibulum molestie lectus non diam. Pellentesque vestibulum diam ac arcu. Donec non magna a justo porttitor gravida.</p> <p>Sed facilisis euismod libero. Nam libero sapien, dapibus et, dignissim eu, eleifend non, nunc. Donec gravida viverra arcu. Morbi pulvinar urna sed elit. Duis sit amet nunc. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nam non orci id tortor dapibus fermentum. Praesent lobortis purus et ligula varius sodales. Aliquam euismod magna in justo. Sed vestibulum fermentum dolor. Nam lacus metus, condimentum sit amet, sodales sed, consequat sed, odio. Etiam molestie. Nullam diam velit, facilisis nec, posuere sed, iaculis sit amet, nisl. Pellentesque vulputate. Nulla odio libero, hendrerit in, posuere a, volutpat sit amet, nunc. Cras a purus a felis lobortis ultrices. Aliquam interdum mattis felis. Suspendisse potenti.</p> <ul> <li>hola</li> <li>hola</li> <li>hola</li> <li>hola</li> </ul>', 'david', './img_articulos/imagen_articulo_7.jpg', 'A', '2008-04-10 05:56:49');
INSERT INTO `articulos` VALUES(8, 'lelelele', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nam sed leo. Duis eget metus. Vivamus non sapien nec ante placerat ullamcorper. Phasellus consectetuer nisl id est. Proin ante sapien, mattis ut, tempor dictum, gravida a, eros. Fusce ligula nulla, commodo eu, semper ut, fringilla eget, leo. Vivamus accumsan pede vel nunc. Nullam vitae ipsum in quam ornare eleifend. Vestibulum molestie lectus non diam. Pellentesque vestibulum diam ac arcu. Donec non magna a justo porttitor gravida.</p><p>Sed facilisis euismod libero. Nam libero sapien, dapibus et, dignissim eu, eleifend non, nunc. Donec gravida viverra arcu. Morbi pulvinar urna sed elit. Duis sit amet nunc. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nam non orci id tortor dapibus fermentum. Praesent lobortis purus et ligula varius sodales. Aliquam euismod magna in justo. Sed vestibulum fermentum dolor. Nam lacus metus, condimentum sit amet, sodales sed, consequat sed, odio. Etiam molestie. Nullam diam velit, facilisis nec, posuere sed, iaculis sit amet, nisl. Pellentesque vulputate. Nulla odio libero, hendrerit in, posuere a, volutpat sit amet, nunc. Cras a purus a felis lobortis ultrices. Aliquam interdum mattis felis. Suspendisse potenti.</p>', 'aaaaa', '', 'A', '2008-04-10 05:57:28');
INSERT INTO `articulos` VALUES(9, 'aaaaaaaaaaaa', '<span style=\\"font-family: Arial; font-size: 11px\\" class=\\"Apple-style-span\\">Sed facilisis euismod libero. Nam libero sapien, dapibus et, dignissim eu, eleifend non, nunc. Donec gravida viverra arcu. Morbi pulvinar urna sed elit. Duis sit amet nunc. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nam non orci id tortor dapibus fermentum. Praesent lobortis purus et ligula varius sodales. Aliquam euismod magna in justo. Sed vestibulum fermentum dolor. Nam lacus metus, condimentum sit amet, sodales sed, consequat sed, odio. Etiam molestie. Nullam diam velit, facilisis nec, posuere sed, iaculis sit amet, nisl. Pellentesque vulputate. Nulla odio libero, hendrerit in, posuere a, volutpat sit amet, nunc. Cras a purus a felis lobortis ultrices. Aliquam interdum mattis felis. Suspendisse potenti.</span>', 'aaaaa', '', 'A', '2008-04-10 07:26:37');
INSERT INTO `articulos` VALUES(10, 'bbbbbbbbbbbbbbbbbbb', '<span style=\\"font-family: Arial; font-size: 11px\\" class=\\"Apple-style-span\\">Sed facilisis euismod libero. Nam libero sapien, dapibus et, dignissim eu, eleifend non, nunc. Donec gravida viverra arcu. Morbi pulvinar urna sed elit. Duis sit amet nunc. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nam non orci id tortor dapibus fermentum. Praesent lobortis purus et ligula varius sodales. Aliquam euismod magna in justo. Sed vestibulum fermentum dolor. Nam lacus metus, condimentum sit amet, sodales sed, consequat sed, odio. Etiam molestie. Nullam diam velit, facilisis nec, posuere sed, iaculis sit amet, nisl. Pellentesque vulputate. Nulla odio libero, hendrerit in, posuere a, volutpat sit amet, nunc. Cras a purus a felis lobortis ultrices. Aliquam interdum mattis felis. Suspendisse potenti.</span>', 'aaaaa', '', 'A', '2008-04-10 07:26:48');
INSERT INTO `articulos` VALUES(11, 'ccccccccccc', 'c<span style=\\"font-family: Arial; font-size: 11px\\" class=\\"Apple-style-span\\">Sed facilisis euismod libero. Nam libero sapien, dapibus et, dignissim eu, eleifend non, nunc. Donec gravida viverra arcu. Morbi pulvinar urna sed elit. Duis sit amet nunc. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nam non orci id tortor dapibus fermentum. Praesent lobortis purus et ligula varius sodales. Aliquam euismod magna in justo. Sed vestibulum fermentum dolor. Nam lacus metus, condimentum sit amet, sodales sed, consequat sed, odio. Etiam molestie. Nullam diam velit, facilisis nec, posuere sed, iaculis sit amet, nisl. Pellentesque vulputate. Nulla odio libero, hendrerit in, posuere a, volutpat sit amet, nunc. Cras a purus a felis lobortis ultrices. Aliquam interdum mattis felis. Suspendisse potenti.</span>', 'aaaaa', '', 'A', '2008-04-10 07:27:00');
INSERT INTO `articulos` VALUES(12, 'dddddddddddddd', '<span style=\\"font-family: Arial; font-size: 11px\\" class=\\"Apple-style-span\\">Sed facilisis euismod libero. Nam libero sapien, dapibus et, dignissim eu, eleifend non, nunc. Donec gravida viverra arcu. Morbi pulvinar urna sed elit. Duis sit amet nunc. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nam non orci id tortor dapibus fermentum. Praesent lobortis purus et ligula varius sodales. Aliquam euismod magna in justo. Sed vestibulum fermentum dolor. Nam lacus metus, condimentum sit amet, sodales sed, consequat sed, odio. Etiam molestie. Nullam diam velit, facilisis nec, posuere sed, iaculis sit amet, nisl. Pellentesque vulputate. Nulla odio libero, hendrerit in, posuere a, volutpat sit amet, nunc. Cras a purus a felis lobortis ultrices. Aliquam interdum mattis felis. Suspendisse potenti.</span>', 'bbbbb', '', 'A', '2008-04-10 07:27:11');
INSERT INTO `articulos` VALUES(13, 'eeeeeeeeeeeeeee', '<span style=\\"font-family: Arial; font-size: 11px\\" class=\\"Apple-style-span\\">Sed facilisis euismod libero. Nam libero sapien, dapibus et, dignissim eu, eleifend non, nunc. Donec gravida viverra arcu. Morbi pulvinar urna sed elit. Duis sit amet nunc. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nam non orci id tortor dapibus fermentum. Praesent lobortis purus et ligula varius sodales. Aliquam euismod magna in justo. Sed vestibulum fermentum dolor. Nam lacus metus, condimentum sit amet, sodales sed, consequat sed, odio. Etiam molestie. Nullam diam velit, facilisis nec, posuere sed, iaculis sit amet, nisl. Pellentesque vulputate. Nulla odio libero, hendrerit in, posuere a, volutpat sit amet, nunc. Cras a purus a felis lobortis ultrices. Aliquam interdum mattis felis. Suspendisse potenti.</span>', 'eeeeeeeeee', '', 'A', '2008-04-10 07:27:23');
INSERT INTO `articulos` VALUES(14, 'fffffffffffffffffff', '<span style=\\"font-family: Arial; font-size: 11px\\" class=\\"Apple-style-span\\">Sed facilisis euismod libero. Nam libero sapien, dapibus et, dignissim eu, eleifend non, nunc. Donec gravida viverra arcu. Morbi pulvinar urna sed elit. Duis sit amet nunc. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nam non orci id tortor dapibus fermentum. Praesent lobortis purus et ligula varius sodales. Aliquam euismod magna in justo. Sed vestibulum fermentum dolor. Nam lacus metus, condimentum sit amet, sodales sed, consequat sed, odio. Etiam molestie. Nullam diam velit, facilisis nec, posuere sed, iaculis sit amet, nisl. Pellentesque vulputate. Nulla odio libero, hendrerit in, posuere a, volutpat sit amet, nunc. Cras a purus a felis lobortis ultrices. Aliquam interdum mattis felis. Suspendisse potenti.</span>', 'ffffffffffffff', '', 'A', '2008-04-10 07:27:32');
INSERT INTO `articulos` VALUES(15, 'ggggggggggggggg', '<span style=\\"font-family: Arial; font-size: 11px\\" class=\\"Apple-style-span\\">Sed facilisis euismod libero. Nam libero sapien, dapibus et, dignissim eu, eleifend non, nunc. Donec gravida viverra arcu. Morbi pulvinar urna sed elit. Duis sit amet nunc. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nam non orci id tortor dapibus fermentum. Praesent lobortis purus et ligula varius sodales. Aliquam euismod magna in justo. Sed vestibulum fermentum dolor. Nam lacus metus, condimentum sit amet, sodales sed, consequat sed, odio. Etiam molestie. Nullam diam velit, facilisis nec, posuere sed, iaculis sit amet, nisl. Pellentesque vulputate. Nulla odio libero, hendrerit in, posuere a, volutpat sit amet, nunc. Cras a purus a felis lobortis ultrices. Aliquam interdum mattis felis. Suspendisse potenti.</span>', 'gggggggggggggggg', '', 'A', '2008-04-10 07:27:43');
INSERT INTO `articulos` VALUES(16, 'hhhhhhhhhhhhhh', '<span style=\\"font-family: Arial; font-size: 11px\\" class=\\"Apple-style-span\\">Sed facilisis euismod libero. Nam libero sapien, dapibus et, dignissim eu, eleifend non, nunc. Donec gravida viverra arcu. Morbi pulvinar urna sed elit. Duis sit amet nunc. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nam non orci id tortor dapibus fermentum. Praesent lobortis purus et ligula varius sodales. Aliquam euismod magna in justo. Sed vestibulum fermentum dolor. Nam lacus metus, condimentum sit amet, sodales sed, consequat sed, odio. Etiam molestie. Nullam diam velit, facilisis nec, posuere sed, iaculis sit amet, nisl. Pellentesque vulputate. Nulla odio libero, hendrerit in, posuere a, volutpat sit amet, nunc. Cras a purus a felis lobortis ultrices. Aliquam interdum mattis felis. Suspendisse potenti.</span>', 'hhhhhhhhhhhhhh', '', 'I', '2008-04-10 07:27:53');
INSERT INTO `articulos` VALUES(17, 'iiiiiiiiiii', '<span style=\\"font-family: Arial; font-size: 11px\\" class=\\"Apple-style-span\\">Sed facilisis euismod libero. Nam libero sapien, dapibus et, dignissim eu, eleifend non, nunc. Donec gravida viverra arcu. Morbi pulvinar urna sed elit. Duis sit amet nunc. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nam non orci id tortor dapibus fermentum. Praesent lobortis purus et ligula varius sodales. Aliquam euismod magna in justo. Sed vestibulum fermentum dolor. Nam lacus metus, condimentum sit amet, sodales sed, consequat sed, odio. Etiam molestie. Nullam diam velit, facilisis nec, posuere sed, iaculis sit amet, nisl. Pellentesque vulputate. Nulla odio libero, hendrerit in, posuere a, volutpat sit amet, nunc. Cras a purus a felis lobortis ultrices. Aliquam interdum mattis felis. Suspendisse potenti.</span>', 'iiiiiiiiiiiiiiii', './img_articulos/imagen_articulo_17.JPG', 'A', '2008-04-10 07:28:03');
INSERT INTO `articulos` VALUES(18, 'Bueno esto es una prueva de articulo', '<span style=\\"font-family: Arial; font-size: 11px\\" class=\\"Apple-style-span\\"><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nullam a tortor adipiscing lectus convallis ultricies. Aenean sagittis vestibulum eros. Cras vel urna. Donec ullamcorper. Ut tristique. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. In hac habitasse platea dictumst. Fusce ullamcorper. Quisque sem enim, aliquet ut, ultrices non, accumsan sit amet, justo. Morbi condimentum suscipit leo. Duis et purus eget massa dignissim egestas. Aenean tincidunt nisl a felis. Maecenas enim. Nunc ipsum leo, mattis at, scelerisque a, placerat in, tellus.</p><p>Suspendisse potenti. Nulla sollicitudin. Vestibulum ac justo in lacus lobortis posuere. Fusce sed ligula. Curabitur a pede quis ante consectetuer ultrices. Suspendisse consequat semper nisi. Quisque ut libero. Vivamus nunc. Pellentesque porta varius orci. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p><p>Cras sagittis nisi at sem. Mauris gravida, felis vel rutrum fermentum, ante augue vestibulum lacus, ut congue ante arcu nec mi. Donec adipiscing urna in ligula. Pellentesque purus lorem, fermentum id, rutrum a, lobortis eget, diam. Cras odio arcu, gravida quis, porttitor a, volutpat non, risus. Etiam dolor. Nunc a lacus. Fusce lorem diam, viverra at, euismod et, fermentum at, nunc. Morbi pretium tincidunt tortor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lobortis metus quis justo. In sem turpis, accumsan at, aliquet eu, consectetuer id, leo. Cras ligula pede, malesuada et, ornare et, commodo sit amet, enim. Morbi rhoncus purus sit amet ante rutrum consectetuer. Maecenas ligula ipsum, iaculis ac, porta eget, pulvinar at, odio.</p><p>Aenean enim neque, malesuada et, fermentum eu, congue eget, arcu. Etiam egestas, nibh at consequat elementum, enim diam facilisis urna, ut accumsan velit turpis ut ligula. Nam sollicitudin dolor. Morbi diam. Cras sit amet nibh. Nulla sem. Aenean iaculis magna ut mauris. Praesent vel nibh. Ut condimentum. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</p><p>Nulla tincidunt placerat mauris. Ut sed ligula sed dolor condimentum dignissim. Donec ultrices tellus eu justo. Vivamus quam. Nam turpis eros, varius nec, auctor sed, sodales sit amet, lectus. Pellentesque rutrum, nisl sit amet interdum faucibus, turpis urna vehicula ante, non bibendum odio leo ut leo. Nullam rhoncus fermentum neque. Integer sit amet metus at neque tincidunt tincidunt. Duis dictum gravida lorem. Curabitur vitae lectus non nulla cursus dignissim. Nullam in lorem eget quam semper fermentum. Proin rhoncus. Mauris placerat massa a dui. Integer vel lacus.</p><p>&nbsp;<img src=\\"http://www.lipsum.com/images/lorem.gif\\" alt=\\"\\" width=\\"317\\" height=\\"75\\" />&nbsp;</p></span>', 'por mi ole!', './img_articulos/imagen_articulo_18.jpg', 'A', '2008-04-15 17:49:23');
INSERT INTO `articulos` VALUES(19, 'dassssssss', 'assaddddddddddd', 'dassssssssssss', './img_articulos/imagen_articulo_19.jpg', 'A', '2008-04-15 18:13:05');
INSERT INTO `articulos` VALUES(20, 'La francesca e bella, la bella francesca', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Quisque egestas auctor elit. In lacinia, ligula sed elementum dapibus, justo ligula vestibulum ante, et porttitor ligula elit eget enim. Donec adipiscing, ante tempus molestie sodales, purus sem tempor sapien, vel consequat neque augue in erat. Morbi magna odio, hendrerit eu, sollicitudin ut, adipiscing sit amet, libero. Integer consequat orci sit amet lacus. Pellentesque quis mauris. Sed consectetuer, magna non ultricies hendrerit, tellus leo fringilla lorem, vel interdum felis nisl eget leo. Suspendisse dolor. Sed iaculis. Praesent diam orci, blandit at, congue at, sollicitudin eget, tellus. Ut magna quam, vehicula eget, varius sit amet, suscipit id, elit. Donec ullamcorper. Mauris a quam quis leo blandit accumsan. Nunc malesuada. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam massa orci, volutpat at, iaculis id, tempus a, nunc. Etiam a nunc at nulla semper ultrices. In rutrum justo nec dui. Curabitur non ipsum. \r\n\r\nQuisque non nunc ac erat lobortis vulputate. Vivamus at mi. Sed sagittis eros ac tellus condimentum lobortis. Integer sed eros. Sed est. Phasellus ut massa non leo pretium volutpat. Donec ac felis. Curabitur ut diam nec nisi scelerisque fermentum. Integer tincidunt quam at quam. Fusce enim velit, porta vel, malesuada id, viverra sed, felis. Donec gravida. Nam eget elit eu eros suscipit blandit. Morbi nibh massa, pharetra non, ultricies a, cursus eget, enim. Suspendisse adipiscing, risus id tincidunt luctus, eros neque fermentum leo, eu scelerisque lectus felis laoreet lectus. Donec laoreet imperdiet sapien. Mauris turpis tortor, rhoncus nec, vulputate sed, mollis et, sem. Maecenas fringilla turpis id diam. \r\n\r\nSed eros massa, luctus ac, sodales nec, eleifend vitae, odio. Sed sed ipsum. Donec sed elit. Curabitur bibendum augue et mauris. In felis augue, mattis a, pellentesque in, suscipit eget, neque. Suspendisse ac odio. Vestibulum diam lectus, eleifend in, volutpat a, placerat sit amet, urna. Fusce volutpat elit a sapien. Fusce pharetra est eget diam. Donec diam enim, condimentum in, pretium congue, faucibus eu, ipsum. Vestibulum posuere pellentesque ipsum. Aliquam justo. Vivamus ullamcorper mi nec metus. Cras magna. Vivamus eros. Vivamus rutrum, tellus nec mollis vehicula, leo eros aliquam erat, nec aliquet elit velit vel ipsum. Vivamus in nulla eu nisl viverra hendrerit. \r\n\r\nPhasellus ipsum quam, sagittis at, volutpat eu, porttitor in, nisl. Praesent ligula libero, varius ut, venenatis non, dapibus in, sapien. Maecenas euismod varius odio. In sodales. Fusce hendrerit accumsan eros. Pellentesque at nibh condimentum mauris venenatis laoreet. Aliquam non tellus vitae leo lacinia dignissim. Integer ut metus. Nunc sapien. Sed et tellus eget eros varius dictum. \r\n\r\nVestibulum eget leo id diam tristique auctor. Nulla facilisi. In interdum, sapien quis eleifend venenatis, mauris mi gravida risus, et accumsan ante quam imperdiet purus. Cras vehicula. Vivamus pellentesque dolor. Etiam hendrerit arcu non diam. Vivamus posuere odio sit amet felis. Sed ut metus. Nunc accumsan augue at sem. Quisque faucibus. Nulla facilisi. Fusce condimentum cursus diam. Nulla nulla tortor, fermentum ac, imperdiet sed, rhoncus id, lorem. Cras mauris sem, lacinia vel, faucibus id, malesuada ac, sapien. Proin suscipit.', 'David', './img_articulos/imagen_articulo_20.jpg', 'A', '2008-04-17 14:25:34');

-- --------------------------------------------------------

--
-- Table structure for table `comentarios`
--

CREATE TABLE `comentarios` (
  `IdComentario` bigint(255) unsigned NOT NULL auto_increment,
  `NombreComentario` varchar(100) NOT NULL default '',
  `Comentario` text NOT NULL,
  `IdForaneo` bigint(100) unsigned NOT NULL default '0',
  `TipoForaneo` char(1) NOT NULL default '',
  `FechaIngresoComentario` datetime NOT NULL default '0000-00-00 00:00:00',
  `EstadoComentario` char(1) NOT NULL default '',
  PRIMARY KEY  (`IdComentario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `comentarios`
--

INSERT INTO `comentarios` VALUES(1, 'hola', 'hola', 3, 'C', '2008-03-02 11:05:51', 'I');
INSERT INTO `comentarios` VALUES(2, 'hola3', 'hola', 3, 'C', '2008-03-02 11:06:08', 'I');
INSERT INTO `comentarios` VALUES(3, 'Esto es la prueba del comentario1', 'bueno como lo hacemos, este proyecto es una mierda. Pero deberia cambiar.', 2, 'P', '2008-03-02 14:44:06', 'A');
INSERT INTO `comentarios` VALUES(4, 'Que pasa ...?', 'Bueno, esta bueno el trabajo.', 3, 'P', '2008-03-02 18:33:16', 'A');
INSERT INTO `comentarios` VALUES(5, 'Este proproyecto es cojonudo', 'Se debe mantener todos los derechos', 4, 'C', '2008-03-02 19:07:41', 'A');
INSERT INTO `comentarios` VALUES(6, 'Esto es un comentario', 'Y ahora se pueden editar.', 4, 'C', '2008-03-02 19:36:03', 'A');
INSERT INTO `comentarios` VALUES(7, 'david', 'Que feo es esto', 4, 'C', '2008-03-02 20:20:24', 'A');
INSERT INTO `comentarios` VALUES(8, 'lalal', 'lalal', 5, 'C', '2008-03-04 22:18:22', 'A');
INSERT INTO `comentarios` VALUES(9, 'carlosads', 'sadfsdfdsaf', 6, 'P', '2008-03-07 11:35:31', 'A');
INSERT INTO `comentarios` VALUES(10, 'david', 'esto es una mierda', 7, 'P', '2008-03-26 16:21:31', 'A');
INSERT INTO `comentarios` VALUES(11, 'funciona', 'funciona', 11, 'P', '2008-03-30 20:46:41', 'A');
INSERT INTO `comentarios` VALUES(12, 'dfsgdfgdsf', 'gdsfgsdfg', 11, 'P', '2008-03-30 20:48:25', 'A');
INSERT INTO `comentarios` VALUES(13, 'xcvgb', 'funciona', 11, 'P', '2008-03-30 20:49:55', 'A');
INSERT INTO `comentarios` VALUES(14, 'Administrador General', '<a href=\\"http://www.google.es/intl/es/about.html\\">Todo acerca de Google</a>', 19, 'C', '2008-04-01 17:43:40', 'I');
INSERT INTO `comentarios` VALUES(15, 'Administrador General', 'que bueno me parece esto una mierda!!!', 8, 'P', '2008-04-08 16:26:55', 'A');
INSERT INTO `comentarios` VALUES(16, 'Administrador General', 'aaaaaa', 20, 'C', '2008-04-08 17:30:07', 'A');
INSERT INTO `comentarios` VALUES(17, 'Administrador General', 'aaaaaaaaaaa', 17, 'P', '2008-04-10 05:47:24', 'A');
INSERT INTO `comentarios` VALUES(18, 'Administrador General', 'aaaaa', 17, 'P', '2008-04-10 07:37:37', 'A');
INSERT INTO `comentarios` VALUES(19, 'Administrador General', 'bueno si esto es muy bonito, me parece una autentica porqueria', 21, 'P', '2008-04-10 18:34:41', 'A');
INSERT INTO `comentarios` VALUES(20, 'Administrador General', 'Y ami tambien', 21, 'P', '2008-04-10 18:35:18', 'A');
INSERT INTO `comentarios` VALUES(21, 'Administrador General', 'si si si', 21, 'P', '2008-04-10 18:35:39', 'A');
INSERT INTO `comentarios` VALUES(22, 'Administrador General', 'lalalal', 16, 'P', '2008-04-10 18:43:05', 'A');
INSERT INTO `comentarios` VALUES(23, 'Administrador General', 'jjjejejejej', 16, 'P', '2008-04-10 19:45:48', 'A');
INSERT INTO `comentarios` VALUES(24, 'eooooooo', 'hola hola', 23, 'C', '2008-04-11 04:23:52', 'A');
INSERT INTO `comentarios` VALUES(25, 'hola', 'hola', 23, 'C', '2008-04-11 04:24:13', 'A');
INSERT INTO `comentarios` VALUES(26, 'Administrador General', 'lalalala', 20, 'P', '2008-04-11 11:57:32', 'A');
INSERT INTO `comentarios` VALUES(27, 'david', 'que figate', 21, 'P', '2008-04-11 15:09:47', 'A');
INSERT INTO `comentarios` VALUES(28, 'Administrador General', 'prueba', 17, 'A', '2008-04-13 14:57:13', 'A');
INSERT INTO `comentarios` VALUES(29, 'Administrador General', 'hol', 10, 'A', '2008-04-13 14:58:54', 'A');
INSERT INTO `comentarios` VALUES(30, 'Administrador General', 'hpa', 17, 'A', '2008-04-13 14:59:29', 'A');
INSERT INTO `comentarios` VALUES(31, 'Administrador General', 'hola', 17, 'A', '2008-04-13 15:03:03', 'A');
INSERT INTO `comentarios` VALUES(32, 'DAvid', 'Si que bueno', 31, 'C', '2008-04-17 05:21:14', 'A');
INSERT INTO `comentarios` VALUES(33, 'lalala', 'questo è un bel sito, è un sito bello', 17, 'A', '2008-04-17 14:17:45', 'A');
INSERT INTO `comentarios` VALUES(34, 'Admin', 'ssasasa', 22, 'P', '2008-04-17 17:08:32', 'A');
INSERT INTO `comentarios` VALUES(35, 'Admin', 'sasasasa', 24, 'P', '2008-04-17 17:09:11', 'A');
INSERT INTO `comentarios` VALUES(36, 'sara', 'ecco!!!', 24, 'P', '2008-04-18 04:04:35', 'A');
INSERT INTO `comentarios` VALUES(37, 'sara', 'dei begli stivali, degli stivali belli\r\ndei bei stivali', 27, 'P', '2008-04-18 04:16:14', 'A');
INSERT INTO `comentarios` VALUES(38, 'Admin', 'sdsdd', 9, 'A', '2008-04-18 04:32:37', 'A');
INSERT INTO `comentarios` VALUES(39, 'Admin', 'qwe', 9, 'A', '2008-04-18 04:32:48', 'A');
INSERT INTO `comentarios` VALUES(40, 'Admin', 'qwert', 33, 'C', '2008-04-18 04:33:11', 'A');
INSERT INTO `comentarios` VALUES(41, 'Admin', 'qwe', 23, 'C', '2008-04-18 04:34:05', 'A');
INSERT INTO `comentarios` VALUES(42, 'Admin', 'q2wer', 29, 'P', '2008-04-18 04:34:59', 'A');
INSERT INTO `comentarios` VALUES(43, 'giorgio', 'lalallalala', 32, 'P', '2008-04-22 04:29:40', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `concursos`
--

CREATE TABLE `concursos` (
  `IdConcurso` bigint(100) unsigned NOT NULL auto_increment,
  `NombreConcurso` varchar(80) NOT NULL default '',
  `Convocante` varchar(80) NOT NULL default '',
  `IdDiciplina` bigint(20) unsigned NOT NULL default '0',
  `IdModalidad` bigint(20) unsigned NOT NULL default '0',
  `FechaEntrega` date NOT NULL default '0000-00-00',
  `Descripcion` text NOT NULL,
  `Enlace` varchar(80) NOT NULL default '',
  `IdUsuario` bigint(20) NOT NULL default '0',
  `FechaIngreso` datetime NOT NULL default '0000-00-00 00:00:00',
  `EstadoConcurso` char(1) NOT NULL default '',
  PRIMARY KEY  (`IdConcurso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `concursos`
--

INSERT INTO `concursos` VALUES(1, 'Concurso de Arte', 'Universidad Politecnica de Valencia', 1, 1, '2008-02-20', 'Todo el arte y belleza para los niños', 'www.upv.es', 1, '2008-02-20 11:14:57', 'I');
INSERT INTO `concursos` VALUES(2, 'Guash Coranty', 'Guash Coranty', 1, 1, '2008-04-16', 'Nuevo concurso muy interesante', 'www.guaschcoranty.com', 7, '2008-02-25 10:39:27', 'I');
INSERT INTO `concursos` VALUES(3, 'aaaaaaaa', 'aaaaaaa', 7, 6, '2006-03-13', 'aaaaaaaa', '', 1, '2008-03-01 10:09:22', 'I');
INSERT INTO `concursos` VALUES(4, 'bbbbbbb', 'bbbbbbb', 7, 2, '2008-03-02', 'bbbbbbb', 'bbbbb', 1, '2008-03-02 15:41:35', 'I');
INSERT INTO `concursos` VALUES(5, 'cccccc', 'ccccccc', 4, 2, '2008-03-12', 'ccccccccc', 'cccccccc', 1, '2008-03-02 15:41:55', 'I');
INSERT INTO `concursos` VALUES(6, 'dddddd1', 'ddddddd', 6, 1, '2008-03-02', 'ddddddd', 'ddddddddd', 1, '2008-03-02 15:42:28', 'A');
INSERT INTO `concursos` VALUES(7, 'eeeeeee', 'eeeeee', 6, 1, '2008-03-02', 'eeeeeee', '', 1, '2008-03-02 15:42:40', 'A');
INSERT INTO `concursos` VALUES(8, 'ffffff', 'ffffff', 6, 1, '2008-03-02', 'ffffffff', 'f', 1, '2008-03-02 15:42:53', 'A');
INSERT INTO `concursos` VALUES(9, 'fffffffffff', 'eeeeeee', 6, 1, '2008-03-02', 'iiiiiiiiiiiiii', 'iiiiiiiiiii', 1, '2008-03-02 15:50:06', 'I');
INSERT INTO `concursos` VALUES(10, 'jjjjj', 'jjj', 6, 1, '2008-03-02', 'jjjj', 'jjjjjj', 1, '2008-03-02 15:50:39', 'A');
INSERT INTO `concursos` VALUES(11, 'mmmmmm', 'mmmmmm', 6, 1, '2007-03-06', 'mmmmmmm', 'mmmmmm', 1, '2008-03-02 15:52:45', 'I');
INSERT INTO `concursos` VALUES(12, 'lallalalallal', 'allalalalalla', 6, 1, '2008-03-02', 'aalalaaaaaaaaa', 'alallalalallala', 1, '2008-03-02 16:37:03', 'I');
INSERT INTO `concursos` VALUES(13, 'lallalalallal', 'allalalalalla', 6, 1, '2008-03-02', 'aalalaaaaaaaaa', 'alallalalallala', 1, '2008-03-02 16:37:43', 'A');
INSERT INTO `concursos` VALUES(14, '222222222222222', 'dddddddddd', 6, 1, '2008-03-28', 'dfsddsfgfg', 'www.google.com', 1, '2008-03-30 16:28:59', 'A');
INSERT INTO `concursos` VALUES(15, '6666666', '666666666', 9, 1, '2008-03-30', '66666666', '666666666', 1, '2008-03-30 16:29:20', 'A');
INSERT INTO `concursos` VALUES(16, 'dsafasdfsdf', 'fdsafsdafsadf', 9, 1, '2008-03-30', 'sdafsdafasdfasdf', '', 1, '2008-03-30 17:30:56', 'I');
INSERT INTO `concursos` VALUES(17, 'sdafsdaf', 'afdsafasfsdf', 9, 1, '2008-03-30', 'safsdfsadf', 'fasdfsdaf', 1, '2008-03-30 17:31:03', 'A');
INSERT INTO `concursos` VALUES(18, 'asdfdsf', 'asdfasd', 9, 1, '2008-03-31', 'sadfsadfasd', '', 1, '2008-03-30 17:31:57', 'A');
INSERT INTO `concursos` VALUES(19, 'dsfsdaf', 'sadfasdfsad', 9, 1, '2008-03-30', 'fasdfsadfsda', 'www.google.com', 1, '2008-03-30 17:33:12', 'A');
INSERT INTO `concursos` VALUES(20, 'Nueva', 'Prueba', 9, 1, '2008-04-08', 'Aqui esta la descripcion', 'www.priueba.com', 1, '2008-04-08 17:08:59', 'A');
INSERT INTO `concursos` VALUES(21, 'aaaaaaaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaaaaa', 9, 1, '2008-04-07', 'aaaadsasadasd aff a af afa a fafaf affaa af a fa f aaaadsasadasd aff a af afa a fafaf affaa af a fa f aaaadsasadasd aff a af afa a fafaf affaa af a fa faaaadsasadasd aff a af afa a fafaf affaa af a fa f', '', 1, '2008-04-09 10:35:08', 'A');
INSERT INTO `concursos` VALUES(22, 'esta es buena', 'aaaaa', 9, 1, '2008-04-08', 'aaaa', '', 1, '2008-04-09 10:56:53', 'A');
INSERT INTO `concursos` VALUES(23, 'aaaaaaaaaa', 'aaaaaaaaaaaaaaaaa', 9, 1, '2008-04-30', 'aaaaaaaa', 'aaaaaaaaaaaa', 1, '2008-04-10 05:04:21', 'A');
INSERT INTO `concursos` VALUES(24, 'Premi Guash 2007', 'Maria', 9, 1, '2008-04-08', 'Esto es un premio de pintura al que me presente', '', 1, '2008-04-10 05:15:19', 'A');
INSERT INTO `concursos` VALUES(25, 'aaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaaa', 5, 6, '2008-04-10', 'lallalallalal', '', 1, '2008-04-10 07:45:11', 'A');
INSERT INTO `concursos` VALUES(26, 'aaaa', 'aaaaaaaaaaaaaaaaa', 9, 1, '2008-04-10', 'aaaaa', 'aaaaaaaaaaaa', 1, '2008-04-10 08:04:31', 'A');
INSERT INTO `concursos` VALUES(27, 'aaaaaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaaa', 9, 1, '2008-04-10', 'aaaa', 'aaaaaaaaaaaa', 1, '2008-04-10 08:04:57', 'A');
INSERT INTO `concursos` VALUES(28, 'aaaaaaaaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaa', 9, 1, '2008-04-10', 'aaaaaaaaaa', 'aaaaaaaaaaaa', 1, '2008-04-10 08:05:39', 'A');
INSERT INTO `concursos` VALUES(29, 'bbbbbbbb', 'bbbbbbbbbbbb', 9, 1, '2008-04-10', 'bbbbbbbbbb', 'aaaaaaaaaaaa', 1, '2008-04-10 08:05:52', 'A');
INSERT INTO `concursos` VALUES(30, 'aaaaaaaaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaa', 9, 1, '2008-04-10', 'hola hola', 'aaaaaaaaaaaa', 20, '2008-04-10 08:54:47', 'A');
INSERT INTO `concursos` VALUES(31, 'jjjj', 'jjjjjjjjjjj', 9, 1, '2008-04-15', 'lalalall', 'jjjjj.com', 1, '2008-04-15 17:56:09', 'A');
INSERT INTO `concursos` VALUES(32, 'Premio de fotografia', 'fundacion foto', 7, 1, '2008-04-14', '6000 € de premio!!!! La temática es la adolescencia.', '', 23, '2008-04-17 05:32:19', 'A');
INSERT INTO `concursos` VALUES(33, 'PRUEBA', 'PRUEBA', 9, 1, '2008-04-17', 'PRUEBA', '', 9, '2008-04-17 15:56:21', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `diciplinas`
--

CREATE TABLE `diciplinas` (
  `IdDiciplina` bigint(20) unsigned NOT NULL auto_increment,
  `NombreDiciplina` varchar(50) NOT NULL default '',
  `EstadoDiciplina` char(1) NOT NULL default '',
  PRIMARY KEY  (`IdDiciplina`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `diciplinas`
--

INSERT INTO `diciplinas` VALUES(1, 'Pintura', 'A');
INSERT INTO `diciplinas` VALUES(2, 'Disciplinas 2', 'I');
INSERT INTO `diciplinas` VALUES(3, 'Disciplinas 3', 'I');
INSERT INTO `diciplinas` VALUES(4, 'Escultura', 'A');
INSERT INTO `diciplinas` VALUES(5, 'Video', 'A');
INSERT INTO `diciplinas` VALUES(6, 'Dibujo', 'A');
INSERT INTO `diciplinas` VALUES(7, 'Fotografía', 'A');
INSERT INTO `diciplinas` VALUES(8, 'nueva', 'I');
INSERT INTO `diciplinas` VALUES(9, 'Artes visuales', 'A');
INSERT INTO `diciplinas` VALUES(10, 'lalala', 'I');

-- --------------------------------------------------------

--
-- Table structure for table `enlaces`
--

CREATE TABLE `enlaces` (
  `IdEnlace` bigint(50) unsigned NOT NULL auto_increment,
  `Enlace` varchar(200) NOT NULL default '',
  `IdTipo` bigint(20) unsigned NOT NULL default '0',
  `EstadoEnlace` char(1) NOT NULL default '',
  `DescripcionEnlace` text,
  PRIMARY KEY  (`IdEnlace`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `enlaces`
--

INSERT INTO `enlaces` VALUES(1, 'www.putfile.com', 14, 'A', NULL);
INSERT INTO `enlaces` VALUES(2, 'www.yahoo.es', 2, 'A', NULL);
INSERT INTO `enlaces` VALUES(3, 'www.clarencia.com', 1, 'A', '');
INSERT INTO `enlaces` VALUES(4, 'www.putfile.com', 1, 'A', NULL);
INSERT INTO `enlaces` VALUES(5, 'www.putfile.com', 4, 'I', NULL);
INSERT INTO `enlaces` VALUES(6, 'www.putfile.com', 5, 'I', NULL);
INSERT INTO `enlaces` VALUES(7, 'www.facebook.com', 3, 'A', NULL);
INSERT INTO `enlaces` VALUES(8, 'aaa', 1, 'I', NULL);
INSERT INTO `enlaces` VALUES(9, 'aaa', 1, 'I', NULL);
INSERT INTO `enlaces` VALUES(10, 'bbbbbbb', 1, 'I', NULL);
INSERT INTO `enlaces` VALUES(11, 'cccccccccccc', 1, 'I', NULL);
INSERT INTO `enlaces` VALUES(12, 'www.keopstd.com', 1, 'I', NULL);
INSERT INTO `enlaces` VALUES(13, 'eeeeeeeeee', 1, 'A', NULL);
INSERT INTO `enlaces` VALUES(14, 'sdsdsdsd', 1, 'A', NULL);
INSERT INTO `enlaces` VALUES(15, 'hoolaljkls.com', 1, 'A', NULL);
INSERT INTO `enlaces` VALUES(16, 'hhhhhhhhhhhh', 1, 'I', NULL);
INSERT INTO `enlaces` VALUES(17, 'iiiiiiiiiiiii', 1, 'I', NULL);
INSERT INTO `enlaces` VALUES(18, 'jjjjjjjjjjjjjjjjj', 1, 'I', NULL);
INSERT INTO `enlaces` VALUES(19, 'kkkkkkkk', 1, 'I', NULL);
INSERT INTO `enlaces` VALUES(20, 'llllllllllllll', 1, 'I', NULL);
INSERT INTO `enlaces` VALUES(21, 'mmmmmmmmm', 1, 'I', NULL);
INSERT INTO `enlaces` VALUES(22, 'nnnnnnnnnnnn', 1, 'I', NULL);
INSERT INTO `enlaces` VALUES(23, 'oooooooooooo', 1, 'I', NULL);
INSERT INTO `enlaces` VALUES(24, 'pppppppppp', 15, 'I', NULL);
INSERT INTO `enlaces` VALUES(25, 'lalalal', 13, 'I', NULL);
INSERT INTO `enlaces` VALUES(26, 'aaaa', 13, 'A', NULL);
INSERT INTO `enlaces` VALUES(27, 'www.clarencia.com', 13, 'A', NULL);
INSERT INTO `enlaces` VALUES(28, 'www.keopstd.com', 13, 'A', NULL);
INSERT INTO `enlaces` VALUES(29, 'www.keopstd.com', 1, 'I', NULL);
INSERT INTO `enlaces` VALUES(30, 'sdsdsdds', 13, 'I', '');
INSERT INTO `enlaces` VALUES(31, 'ewewewew', 13, 'I', 'ewewe');
INSERT INTO `enlaces` VALUES(32, 'www.clarencia.com', 13, 'A', 'dsd');
INSERT INTO `enlaces` VALUES(33, 'weewewew', 13, 'I', '');
INSERT INTO `enlaces` VALUES(34, 'weewewew', 13, 'I', '');
INSERT INTO `enlaces` VALUES(35, 'holjlklsldsd', 13, 'I', '');

-- --------------------------------------------------------

--
-- Table structure for table `modalidades`
--

CREATE TABLE `modalidades` (
  `IdModalidad` bigint(20) unsigned NOT NULL auto_increment,
  `NombreModalidad` varchar(50) NOT NULL default '',
  `EstadoModalidad` char(1) NOT NULL default '',
  PRIMARY KEY  (`IdModalidad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `modalidades`
--

INSERT INTO `modalidades` VALUES(1, 'beca', 'A');
INSERT INTO `modalidades` VALUES(2, 'residencia', 'I');
INSERT INTO `modalidades` VALUES(3, 'Modalidad 3', 'I');
INSERT INTO `modalidades` VALUES(4, 'Modalidad 4', 'I');
INSERT INTO `modalidades` VALUES(5, 'beca', 'I');
INSERT INTO `modalidades` VALUES(6, 'residencia', 'A');
INSERT INTO `modalidades` VALUES(7, 'concurso', 'I');
INSERT INTO `modalidades` VALUES(8, 'beca 2', 'I');
INSERT INTO `modalidades` VALUES(9, 'nueva', 'I');
INSERT INTO `modalidades` VALUES(10, 'nueva', 'I');
INSERT INTO `modalidades` VALUES(11, 'nue', 'I');
INSERT INTO `modalidades` VALUES(12, 'nuea', 'I');
INSERT INTO `modalidades` VALUES(13, 'nue', 'I');
INSERT INTO `modalidades` VALUES(14, 'aaaa', 'I');

-- --------------------------------------------------------

--
-- Table structure for table `proyectos`
--

CREATE TABLE `proyectos` (
  `IdProyecto` bigint(100) unsigned NOT NULL auto_increment,
  `NombreProyecto` varchar(80) NOT NULL default '',
  `IdConcurso` bigint(100) unsigned NOT NULL default '0',
  `Texto` text NOT NULL,
  `Enlace` varchar(100) NOT NULL default '',
  `Imagen` text NOT NULL,
  `Imagen2` text NOT NULL,
  `Imagen3` text NOT NULL,
  `FechaIngreso` datetime NOT NULL default '0000-00-00 00:00:00',
  `IdUsuario` bigint(20) unsigned NOT NULL default '0',
  `EstadoProyecto` char(1) NOT NULL default '',
  `ComentarioImagen` text,
  `ComentarioImagen2` text,
  `ComentarioImagen3` text,
  PRIMARY KEY  (`IdProyecto`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `proyectos`
--

INSERT INTO `proyectos` VALUES(1, 'Bombilla', 1, 'bueno Esto es el texto del concurso. Si primero, segundo tercero...', 'www.acidofolclorico.com', './img_proyectos/imagen_proyecto_1.jpg', '', '', '2008-02-25 10:46:22', 7, 'I', NULL, NULL, NULL);
INSERT INTO `proyectos` VALUES(2, 'lalalallal', 3, '<p>allallallall</p><p>akaaka&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>', 'www.acidofolclorico.com', './img_proyectos/imagen_proyecto_2.png', '', '', '2008-03-02 14:17:58', 1, 'I', NULL, NULL, NULL);
INSERT INTO `proyectos` VALUES(3, 'bbbbbbb', 3, 'bbbbbbbb', 'bbbbbbbbb', './img_proyectos/imagen_proyecto_3.png', './img_proyectos/imagen2_proyecto_3.jpg', '', '2008-03-02 16:39:27', 1, 'I', NULL, NULL, NULL);
INSERT INTO `proyectos` VALUES(4, 'aaaaaaaaaaa', 11, '<p>aaaaaaaaaaaaaaaa<br />aaaaaaaaaaaaaa<br />aaaaaaaaaaaaaaaaa</p>', 'aaaaaaa', '', '', '', '2008-03-02 19:12:58', 1, 'I', NULL, NULL, NULL);
INSERT INTO `proyectos` VALUES(5, '2323', 8, '2323', '232323', './img_proyectos/imagen_proyecto_5.jpg', '', '', '2008-03-07 10:11:42', 1, 'I', NULL, NULL, NULL);
INSERT INTO `proyectos` VALUES(6, 'fsdfsdf', 6, 'sdfsdf', 'sfsdf', './img_proyectos/imagen_proyecto_6.JPG', './img_proyectos/imagen2_proyecto_6.jpg', '', '2008-03-07 10:13:39', 1, 'I', NULL, NULL, NULL);
INSERT INTO `proyectos` VALUES(7, 'fdg', 7, 'sadf.0.sadf', 'www.asdad.com', './img_proyectos/imagen_proyecto_7.jpg', '', '', '2008-03-07 11:45:52', 1, 'I', NULL, NULL, NULL);
INSERT INTO `proyectos` VALUES(8, 'dddddddd', 6, 'ddddddddd', 'a', './img_proyectos/imagen_proyecto_8.png', '', '', '2008-03-30 05:24:38', 1, 'I', NULL, NULL, NULL);
INSERT INTO `proyectos` VALUES(9, 'ssssssss', 15, 'sssssssss', 'qqqqqqqqqqq', '', '', '', '2008-03-30 16:34:23', 1, 'I', NULL, NULL, NULL);
INSERT INTO `proyectos` VALUES(10, '23423423', 10, '234234234', 'sdfsdfdf', '', '', '', '2008-03-30 20:22:17', 18, 'I', NULL, NULL, NULL);
INSERT INTO `proyectos` VALUES(11, 'gfhgf', 4, 'dhdffgh', 'fgdghfdh', '', '', '', '2008-03-30 20:22:41', 18, 'I', NULL, NULL, NULL);
INSERT INTO `proyectos` VALUES(12, 'sssss', 8, 'ssss', '', '', '', '', '2008-03-30 20:32:52', 18, 'I', NULL, NULL, NULL);
INSERT INTO `proyectos` VALUES(13, 'sdfgdfgsdfg', 6, 'dfsgdsg', 'dfgdfg', '', '', '', '2008-03-30 20:33:19', 18, 'I', NULL, NULL, NULL);
INSERT INTO `proyectos` VALUES(14, 'ghghf', 8, 'hfghfghfghfgh', 'www.google.com', '', '', '', '2008-03-30 20:34:18', 18, 'I', NULL, NULL, NULL);
INSERT INTO `proyectos` VALUES(15, 'dfsgdf', 11, 'gsdfgs', 'www.google.com', '', '', '', '2008-03-30 20:34:35', 18, 'I', NULL, NULL, NULL);
INSERT INTO `proyectos` VALUES(16, 'Proyecto nuevo', 20, 'Texto con la descripcionTexto con la descripcionTexto con la descripcionTexto con la descripcionTexto con la descripcion', 'www.pruyeba.com', './img_proyectos/imagen_proyecto_16.jpg', '', '', '2008-04-08 17:09:42', 1, 'A', NULL, NULL, NULL);
INSERT INTO `proyectos` VALUES(17, 'Pinturas negras', 24, 'Estas son las pinturas que realize en mi periodo de estudiante en Oxford.', 'www.acido.com', './img_proyectos/imagen_proyecto_17.jpg', './img_proyectos/imagen2_proyecto_17.JPG', '', '2008-04-10 05:28:11', 1, 'A', NULL, NULL, NULL);
INSERT INTO `proyectos` VALUES(18, 'aaaaaaaaaaaaabbb', 14, '<p style=\\"font: normal normal normal 12px/normal \\''Lucida Grande\\''; margin: 0px\\">1_nuevo_proyecto_1_php1_nuevo_proyecto_1_php1_nuevo_proyecto_1_php1_nuevo_proyecto_1_php1_nuevo_proyecto_1_php1_nuevo_proyecto_1_php1_nuevo_proyecto_1_php1_nuevo_proyecto_1_php1_nuevo_proyecto_1_php1_nuevo_proyecto_1_php1_nuevo_proyecto_1_php1_nuevo_proyecto_1_php1_nuevo_proyecto_1_php</p>', 'aaaaaa.cok', '', '', '', '2008-04-10 08:14:28', 1, 'I', NULL, NULL, NULL);
INSERT INTO `proyectos` VALUES(19, 'aaaaaaaaaaaaabbb', 14, '<p style=\\"font: normal normal normal 12px/normal \\''Lucida Grande\\''; margin: 0px\\">1_nuevo_proyecto_1_php1_nuevo_proyecto_1_php1_nuevo_proyecto_1_php1_nuevo_proyecto_1_php1_nuevo_proyecto_1_php1_nuevo_proyecto_1_php1_nuevo_proyecto_1_php1_nuevo_proyecto_1_php1_nuevo_proyecto_1_php1_nuevo_proyecto_1_php1_nuevo_proyecto_1_php1_nuevo_proyecto_1_php1_nuevo_proyecto_1_php</p>', 'aaaaaa.cok', '', '', '', '2008-04-10 08:14:29', 1, 'I', NULL, NULL, NULL);
INSERT INTO `proyectos` VALUES(20, 'aaaaaaaaaaaaaaaaaaa bbbbbbbbb', 14, '<p><span style=\\"font-family: Arial; font-size: 11px\\" class=\\"Apple-style-span\\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nam sed leo. Duis eget metus. Vivamus non sapien nec ante placerat ullamcorper. Phasellus consectetuer nisl id est. Proin ante sapien, mattis ut, tempor dictum, gravida a, eros. Fusce ligula nulla, commodo eu, semper ut, fringilla eget, leo. Vivamus accumsan pede vel nunc. Nullam vitae ipsum in quam ornare eleifend. Vestibulum molestie lectus non diam. Pellentesque vestibulum diam ac arcu. Donec non magna a justo porttitor gravida.</span></p><p><span style=\\"font-family: Arial; font-size: 11px\\" class=\\"Apple-style-span\\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nam sed leo. Duis eget metus. Vivamus non sapien nec ante placerat ullamcorper. Phasellus consectetuer nisl id est. Proin ante sapien, mattis ut, tempor dictum, gravida a, eros. Fusce ligula nulla, commodo eu, semper ut, fringilla eget, leo. Vivamus accumsan pede vel nunc. Nullam vitae ipsum in quam ornare eleifend. Vestibulum molestie lectus non diam. Pellentesque vestibulum diam ac arcu. Donec non magna a justo porttitor gravida.</span>&nbsp;</p>', '', '', '', '', '2008-04-10 08:19:45', 1, 'I', NULL, NULL, NULL);
INSERT INTO `proyectos` VALUES(21, 'aaaaaaaaaaaaaaaaaaa bbbbbbbbb', 18, '<span style=\\"font-family: Arial; font-size: 11px\\" class=\\"Apple-style-span\\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nam sed leo. Duis eget metus. Vivamus non sapien nec ante placerat ullamcorper. Phasellus consectetuer nisl id est. Proin ante sapien, mattis ut, tempor dictum, gravida a, eros. Fusce ligula nulla, commodo eu, semper ut, fringilla eget, leo. Vivamus accumsan pede vel nunc. Nullam vitae ipsum in quam ornare eleifend. Vestibulum molestie lectus non diam. Pellentesque vestibulum diam ac arcu. Donec non magna a justo porttitor gravida.</span>', '', '', '', '', '2008-04-10 08:53:25', 20, 'I', NULL, NULL, NULL);
INSERT INTO `proyectos` VALUES(22, 'nueva_imagen', 15, 'imagen', 'www.acido.com', './img_proyectos/imagen_proyecto_22.JPG', '', '', '2008-04-13 13:52:11', 1, 'A', NULL, NULL, NULL);
INSERT INTO `proyectos` VALUES(23, 'hols', 18, 'hol', '', '', '', '', '2008-04-17 15:31:25', 1, 'I', NULL, NULL, NULL);
INSERT INTO `proyectos` VALUES(24, 'PRUEBA', 7, 'PRUEBA', 'www.asdad.com', './img_proyectos/imagen_proyecto_24.jpg', '', '', '2008-04-17 15:51:53', 9, 'A', NULL, NULL, NULL);
INSERT INTO `proyectos` VALUES(25, 'asffd', 13, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Sed volutpat odio ut enim. Sed lacus orci, tristique id, egestas vel, convallis eu, eros. Sed luctus feugiat sapien. Sed laoreet. Maecenas vel sem. Vivamus hendrerit. Suspendisse vel elit. Mauris nunc elit, lacinia sed, feugiat vitae, pretium sed, ante. Ut consectetuer metus non tortor. Praesent volutpat. Sed fermentum nisi vel metus. Nulla facilisi. Sed diam justo, placerat vitae, bibendum quis, ultricies eget, mi. Cras id neque. Aenean placerat, odio non cursus malesuada, ligula sapien pellentesque enim, vel aliquet augue quam a augue. Ut massa. Duis purus. Suspendisse potenti.\r\n\r\nFusce dignissim, dui et tempor interdum, sem sapien sodales orci, et ultricies elit dui non neque. Vivamus pede tellus, laoreet eget, lacinia in, consectetuer ac, tellus. Etiam ultrices tortor et lorem. Nam ac neque non urna placerat dapibus. Nulla odio. In malesuada lectus ac dui. Integer mi. Donec quam. Aenean vitae elit at pede varius posuere. Nullam hendrerit dapibus tortor. Sed pharetra. Sed iaculis est in lacus. Praesent at dui. Donec dignissim tempus pede. Integer egestas lacus. Nulla ligula elit, bibendum sed, bibendum vel, scelerisque in, sapien. Nunc posuere. Ut sapien lectus, mattis vitae, dapibus vitae, tempus ut, dolor.\r\n\r\nProin faucibus lacus ac turpis. Nunc id dolor nec dui blandit viverra. Cras fermentum consequat nisl. Aliquam erat volutpat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent pulvinar, massa a fringilla fringilla, lorem nisi iaculis arcu, facilisis luctus ipsum dui eu sapien. Phasellus leo arcu, facilisis eget, pellentesque vehicula, tincidunt nec, nibh. Donec diam nibh, blandit non, lobortis vitae, consequat eu, magna. Donec dolor felis, malesuada ut, ornare vel, ultrices quis, dui. Aliquam mollis dapibus justo. Etiam sit amet lacus nec nulla ullamcorper dignissim. Proin dictum, sapien vel lobortis facilisis, dui enim consectetuer purus, at lobortis urna ligula non turpis. Quisque tellus. Proin eget dolor in elit pharetra mattis. Maecenas accumsan massa sed enim. Nam at eros sit amet mi egestas vulputate. Nullam at pede.\r\n\r\nVestibulum eu magna. Vestibulum tincidunt, sem a condimentum euismod, elit sem semper nunc, at egestas tellus quam in purus. Aenean rutrum, ante non sodales faucibus, quam lorem convallis orci, sed ullamcorper sapien leo ac tellus. Curabitur vel mi a mauris adipiscing lacinia. Curabitur egestas blandit nisi. In tincidunt eros quis lorem. Vivamus imperdiet, arcu porttitor ultrices semper, est nunc varius leo, in pharetra libero ipsum quis dui. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Maecenas condimentum erat sit amet enim. Praesent eu enim vel sapien aliquet molestie. Aenean sed mi. Praesent aliquet sem nec metus. Nunc convallis, massa sed rutrum vulputate, tortor arcu tincidunt odio, sit amet auctor purus purus a ipsum. Cras nisl. Phasellus massa neque, fringilla eget, dictum id, condimentum eget, nulla. Aenean venenatis nisi vel diam. Sed a purus quis magna placerat rutrum. Proin quis est sit amet elit lacinia pharetra. Sed ante erat, tempor a, porttitor vel, tristique non, diam.\r\n\r\nMaecenas blandit, diam ac vestibulum semper, neque ipsum facilisis lorem, vel placerat magna leo at neque. Pellentesque erat sapien, mattis in, pellentesque et, tempor a, dui. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus eu dui. Nulla congue. Aliquam vel augue. Aliquam viverra, ligula sed aliquet adipiscing, massa odio iaculis augue, vel bibendum nibh ligula eget augue. Cras sit amet arcu. Aenean lectus urna, feugiat egestas, luctus id, tincidunt non, nisi. Donec felis. Ut congue porttitor mi. Proin pellentesque metus ac pede. Ut sit amet ipsum. Morbi nibh magna, ultricies sed, bibendum a, fermentum ultrices, mauris. Morbi pellentesque, augue et ornare auctor, nibh lorem imperdiet purus, ut porta diam erat in sem. Fusce nec est. Nullam dignissim dui. Vivamus volutpat ante non ipsum. Vivamus sed urna. Aenean malesuada congue elit.\r\n', 'www.acidofolclorico.com', '', '', '', '2008-04-17 18:44:28', 1, 'A', NULL, NULL, NULL);
INSERT INTO `proyectos` VALUES(26, 'asffd', 13, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Sed volutpat odio ut enim. Sed lacus orci, tristique id, egestas vel, convallis eu, eros. Sed luctus feugiat sapien. Sed laoreet. Maecenas vel sem. Vivamus hendrerit. Suspendisse vel elit. Mauris nunc elit, lacinia sed, feugiat vitae, pretium sed, ante. Ut consectetuer metus non tortor. Praesent volutpat. Sed fermentum nisi vel metus. Nulla facilisi. Sed diam justo, placerat vitae, bibendum quis, ultricies eget, mi. Cras id neque. Aenean placerat, odio non cursus malesuada, ligula sapien pellentesque enim, vel aliquet augue quam a augue. Ut massa. Duis purus. Suspendisse potenti.\r\n\r\nFusce dignissim, dui et tempor interdum, sem sapien sodales orci, et ultricies elit dui non neque. Vivamus pede tellus, laoreet eget, lacinia in, consectetuer ac, tellus. Etiam ultrices tortor et lorem. Nam ac neque non urna placerat dapibus. Nulla odio. In malesuada lectus ac dui. Integer mi. Donec quam. Aenean vitae elit at pede varius posuere. Nullam hendrerit dapibus tortor. Sed pharetra. Sed iaculis est in lacus. Praesent at dui. Donec dignissim tempus pede. Integer egestas lacus. Nulla ligula elit, bibendum sed, bibendum vel, scelerisque in, sapien. Nunc posuere. Ut sapien lectus, mattis vitae, dapibus vitae, tempus ut, dolor.\r\n\r\nProin faucibus lacus ac turpis. Nunc id dolor nec dui blandit viverra. Cras fermentum consequat nisl. Aliquam erat volutpat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent pulvinar, massa a fringilla fringilla, lorem nisi iaculis arcu, facilisis luctus ipsum dui eu sapien. Phasellus leo arcu, facilisis eget, pellentesque vehicula, tincidunt nec, nibh. Donec diam nibh, blandit non, lobortis vitae, consequat eu, magna. Donec dolor felis, malesuada ut, ornare vel, ultrices quis, dui. Aliquam mollis dapibus justo. Etiam sit amet lacus nec nulla ullamcorper dignissim. Proin dictum, sapien vel lobortis facilisis, dui enim consectetuer purus, at lobortis urna ligula non turpis. Quisque tellus. Proin eget dolor in elit pharetra mattis. Maecenas accumsan massa sed enim. Nam at eros sit amet mi egestas vulputate. Nullam at pede.\r\n\r\nVestibulum eu magna. Vestibulum tincidunt, sem a condimentum euismod, elit sem semper nunc, at egestas tellus quam in purus. Aenean rutrum, ante non sodales faucibus, quam lorem convallis orci, sed ullamcorper sapien leo ac tellus. Curabitur vel mi a mauris adipiscing lacinia. Curabitur egestas blandit nisi. In tincidunt eros quis lorem. Vivamus imperdiet, arcu porttitor ultrices semper, est nunc varius leo, in pharetra libero ipsum quis dui. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Maecenas condimentum erat sit amet enim. Praesent eu enim vel sapien aliquet molestie. Aenean sed mi. Praesent aliquet sem nec metus. Nunc convallis, massa sed rutrum vulputate, tortor arcu tincidunt odio, sit amet auctor purus purus a ipsum. Cras nisl. Phasellus massa neque, fringilla eget, dictum id, condimentum eget, nulla. Aenean venenatis nisi vel diam. Sed a purus quis magna placerat rutrum. Proin quis est sit amet elit lacinia pharetra. Sed ante erat, tempor a, porttitor vel, tristique non, diam.\r\n\r\nMaecenas blandit, diam ac vestibulum semper, neque ipsum facilisis lorem, vel placerat magna leo at neque. Pellentesque erat sapien, mattis in, pellentesque et, tempor a, dui. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus eu dui. Nulla congue. Aliquam vel augue. Aliquam viverra, ligula sed aliquet adipiscing, massa odio iaculis augue, vel bibendum nibh ligula eget augue. Cras sit amet arcu. Aenean lectus urna, feugiat egestas, luctus id, tincidunt non, nisi. Donec felis. Ut congue porttitor mi. Proin pellentesque metus ac pede. Ut sit amet ipsum. Morbi nibh magna, ultricies sed, bibendum a, fermentum ultrices, mauris. Morbi pellentesque, augue et ornare auctor, nibh lorem imperdiet purus, ut porta diam erat in sem. Fusce nec est. Nullam dignissim dui. Vivamus volutpat ante non ipsum. Vivamus sed urna. Aenean malesuada congue elit.\r\n', 'www.acidofolclorico.com', '', '', '', '2008-04-17 18:56:57', 1, 'A', NULL, NULL, NULL);
INSERT INTO `proyectos` VALUES(27, 'sara', 13, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nam porta. Phasellus ullamcorper consequat justo. Fusce adipiscing, urna pharetra bibendum ultricies, sem ligula rutrum felis, eu vulputate nulla orci vitae nunc. Quisque nec neque. Sed tellus enim, condimentum ac, iaculis eu, feugiat vel, odio. Maecenas sodales arcu at nisi. Integer suscipit ante ac quam. Aenean gravida turpis quis lectus. Integer lectus mauris, tincidunt et, cursus at, volutpat sed, dolor. Integer eu nisi nec lacus dignissim sollicitudin. Nulla et eros quis nunc tempor tempus. Mauris sed dolor. Nullam sit amet urna non turpis vulputate imperdiet. Donec ac dolor. Maecenas metus.\r\n\r\nFusce bibendum consectetuer arcu. Vestibulum vehicula nulla at nisl. Vestibulum sollicitudin turpis at nisl. Integer faucibus dolor sit amet risus. Suspendisse pretium congue justo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Morbi vestibulum erat in erat. Sed neque sapien, feugiat vitae, dignissim ut, ullamcorper ac, elit. Duis neque nisi, placerat at, sodales at, varius quis, odio. Sed et ipsum. Nulla congue. Integer velit ipsum, pellentesque vitae, faucibus in, lacinia non, mauris.\r\n\r\nAliquam cursus massa ac metus. Nullam in felis ut risus venenatis aliquam. Vivamus dapibus egestas urna. Proin imperdiet. Nam lacus massa, ullamcorper sed, dictum non, condimentum sit amet, lorem. Cras est purus, laoreet ac, suscipit at, suscipit eleifend, libero. Suspendisse sodales scelerisque mi. Fusce quis massa. In aliquet accumsan quam. Mauris vulputate rhoncus ligula. Nullam fringilla, metus sit amet mattis hendrerit, arcu lorem viverra nunc, in iaculis massa eros eget enim.', 'www.sara.com', './img_proyectos/imagen_proyecto_27.jpg', './img_proyectos/imagen2_proyecto_27.jpg', '', '2008-04-18 04:13:54', 24, 'A', NULL, NULL, NULL);
INSERT INTO `proyectos` VALUES(28, 'sara', 13, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nam porta. Phasellus ullamcorper consequat justo. Fusce adipiscing, urna pharetra bibendum ultricies, sem ligula rutrum felis, eu vulputate nulla orci vitae nunc. Quisque nec neque. Sed tellus enim, condimentum ac, iaculis eu, feugiat vel, odio. Maecenas sodales arcu at nisi. Integer suscipit ante ac quam. Aenean gravida turpis quis lectus. Integer lectus mauris, tincidunt et, cursus at, volutpat sed, dolor. Integer eu nisi nec lacus dignissim sollicitudin. Nulla et eros quis nunc tempor tempus. Mauris sed dolor. Nullam sit amet urna non turpis vulputate imperdiet. Donec ac dolor. Maecenas metus.\r\n\r\nFusce bibendum consectetuer arcu. Vestibulum vehicula nulla at nisl. Vestibulum sollicitudin turpis at nisl. Integer faucibus dolor sit amet risus. Suspendisse pretium congue justo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Morbi vestibulum erat in erat. Sed neque sapien, feugiat vitae, dignissim ut, ullamcorper ac, elit. Duis neque nisi, placerat at, sodales at, varius quis, odio. Sed et ipsum. Nulla congue. Integer velit ipsum, pellentesque vitae, faucibus in, lacinia non, mauris.\r\n\r\nAliquam cursus massa ac metus. Nullam in felis ut risus venenatis aliquam. Vivamus dapibus egestas urna. Proin imperdiet. Nam lacus massa, ullamcorper sed, dictum non, condimentum sit amet, lorem. Cras est purus, laoreet ac, suscipit at, suscipit eleifend, libero. Suspendisse sodales scelerisque mi. Fusce quis massa. In aliquet accumsan quam. Mauris vulputate rhoncus ligula. Nullam fringilla, metus sit amet mattis hendrerit, arcu lorem viverra nunc, in iaculis massa eros eget enim.', 'www.sara.com', './img_proyectos/imagen_proyecto_28.jpg', '', '', '2008-04-18 04:14:09', 24, 'A', NULL, NULL, NULL);
INSERT INTO `proyectos` VALUES(29, 'sras', 22, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nam porta. Phasellus ullamcorper consequat justo. Fusce adipiscing, urna pharetra bibendum ultricies, sem ligula rutrum felis, eu vulputate nulla orci vitae nunc. Quisque nec neque. Sed tellus enim, condimentum ac, iaculis eu, feugiat vel, odio. Maecenas sodales arcu at nisi. Integer suscipit ante ac quam. Aenean gravida turpis quis lectus. Integer lectus mauris, tincidunt et, cursus at, volutpat sed, dolor. Integer eu nisi nec lacus dignissim sollicitudin. Nulla et eros quis nunc tempor tempus. Mauris sed dolor. Nullam sit amet urna non turpis vulputate imperdiet. Donec ac dolor. Maecenas metus.\r\n\r\nFusce bibendum consectetuer arcu. Vestibulum vehicula nulla at nisl. Vestibulum sollicitudin turpis at nisl. Integer faucibus dolor sit amet risus. Suspendisse pretium congue justo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Morbi vestibulum erat in erat. Sed neque sapien, feugiat vitae, dignissim ut, ullamcorper ac, elit. Duis neque nisi, placerat at, sodales at, varius quis, odio. Sed et ipsum. Nulla congue. Integer velit ipsum, pellentesque vitae, faucibus in, lacinia non, mauris.\r\n\r\nAliquam cursus massa ac metus. Nullam in felis ut risus venenatis aliquam. Vivamus dapibus egestas urna. Proin imperdiet. Nam lacus massa, ullamcorper sed, dictum non, condimentum sit amet, lorem. Cras est purus, laoreet ac, suscipit at, suscipit eleifend, libero. Suspendisse sodales scelerisque mi. Fusce quis massa. In aliquet accumsan quam. Mauris vulputate rhoncus ligula. Nullam fringilla, metus sit amet mattis hendrerit, arcu lorem viverra nunc, in iaculis massa eros eget enim.', 'www.sara.com', './img_proyectos/imagen_proyecto_29.jpg', '', '', '2008-04-18 04:15:29', 24, 'A', '', '', '');
INSERT INTO `proyectos` VALUES(30, 'qwqw', 7, 'qwqw', '', './img_proyectos/imagen_proyecto_30.jpg', '', '', '2008-04-18 09:17:40', 1, 'A', 'niueva323', '', '');
INSERT INTO `proyectos` VALUES(31, 'lalalal', 10, 'lalalla', 'lalala.com', '', '', '', '2008-04-18 09:42:14', 1, 'A', '', '', '');
INSERT INTO `proyectos` VALUES(32, 'lalalal', 10, 'lalalla', 'lalala.com', './img_proyectos/imagen_proyecto_32.JPG', '', '', '2008-04-18 09:50:56', 1, 'A', 'mi cocina', '', '');
INSERT INTO `proyectos` VALUES(33, 'AQUI LA PRUEBA', 14, '<p>PRUEBA</p>', '', '', '', '', '2008-04-23 16:57:32', 1, 'A', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tiposdeenlaces`
--

CREATE TABLE `tiposdeenlaces` (
  `IdTipo` bigint(20) unsigned NOT NULL auto_increment,
  `EstadoTipo` char(1) NOT NULL default '',
  `TipoEnlace` varchar(200) NOT NULL default '',
  PRIMARY KEY  (`IdTipo`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `tiposdeenlaces`
--

INSERT INTO `tiposdeenlaces` VALUES(1, 'A', 'Instituciones');
INSERT INTO `tiposdeenlaces` VALUES(2, 'A', 'Otras paginas');
INSERT INTO `tiposdeenlaces` VALUES(3, 'A', 'Recursos');
INSERT INTO `tiposdeenlaces` VALUES(4, 'I', 'Recursos: hosting vi');
INSERT INTO `tiposdeenlaces` VALUES(5, 'I', 'Recursos: hosting video');
INSERT INTO `tiposdeenlaces` VALUES(6, '', 'nuevita');
INSERT INTO `tiposdeenlaces` VALUES(7, '', 'nuevita');
INSERT INTO `tiposdeenlaces` VALUES(8, '', 'nuevita');
INSERT INTO `tiposdeenlaces` VALUES(9, 'I', 'nuevita');
INSERT INTO `tiposdeenlaces` VALUES(10, 'I', 'hola');
INSERT INTO `tiposdeenlaces` VALUES(11, 'I', 'hola hola');
INSERT INTO `tiposdeenlaces` VALUES(12, 'I', 'lalala');
INSERT INTO `tiposdeenlaces` VALUES(13, 'A', 'concursos');
INSERT INTO `tiposdeenlaces` VALUES(14, 'A', 'concursos');
INSERT INTO `tiposdeenlaces` VALUES(15, 'A', 'residencias');
INSERT INTO `tiposdeenlaces` VALUES(16, 'A', 'escuelas');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `IdUsuario` bigint(20) unsigned NOT NULL auto_increment,
  `CuentaUsuario` varchar(25) NOT NULL default '',
  `ClaveUsuario` varchar(50) NOT NULL default '',
  `NombresUsuario` varchar(80) NOT NULL default '',
  `ApellidosUsuario` varchar(80) NOT NULL default '',
  `TelefonoUsuario` varchar(25) NOT NULL default '',
  `DireccionUsuario` varchar(80) NOT NULL default '',
  `TipoUsuario` char(1) NOT NULL default '',
  `EmailUsuario` varchar(80) NOT NULL default '',
  `FechaIngreso` datetime NOT NULL default '0000-00-00 00:00:00',
  `EstadoUsuario` char(1) NOT NULL default '',
  PRIMARY KEY  (`IdUsuario`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` VALUES(1, 'Admin', 'fcea920f7412b5da7be0cf42b8c93759', 'Administrador', 'General', '', '', 'A', 'proyectosrechazados@gmail.com', '0000-00-00 00:00:00', 'A');
INSERT INTO `usuarios` VALUES(2, 'Carlos', 'af1b5754061ebbd4412adfb34c8d3534', 'Carlos', 'Bueno', '', '', 'N', 'as@hotmail.com', '0000-00-00 00:00:00', 'A');
INSERT INTO `usuarios` VALUES(3, 'Cesar', '827ccb0eea8a706c4c34a16891f84e7b', 'Cesar', 'Gusman', '', '', 'N', 'cesar@gmail.com', '0000-00-00 00:00:00', 'A');
INSERT INTO `usuarios` VALUES(4, 'pedro', '827ccb0eea8a706c4c34a16891f84e7b', 'Pedro', 'Paramo', '', '', 'N', 'pedro@hotmail.com', '2008-02-14 13:28:10', 'A');
INSERT INTO `usuarios` VALUES(5, 'prueba', '827ccb0eea8a706c4c34a16891f84e7b', 'caRlos', 'bueno', '', '', 'N', 'cesar@gmail.com', '2008-02-17 11:30:44', 'A');
INSERT INTO `usuarios` VALUES(9, 'hola', 'c6f00988430dbc8e83a7bc7ab5256346', 'hola', 'hola', '', '', 'N', 'coyotegriz@hotmail.com', '2008-03-02 08:32:09', 'A');
INSERT INTO `usuarios` VALUES(7, 'davidvina', 'e10adc3949ba59abbe56e057f20f883e', 'vinagre', 'cerezo', '', '', 'N', 'davidvina@gmail.com', '2008-02-25 10:28:32', 'I');
INSERT INTO `usuarios` VALUES(8, 'carletes', '18a673d7ca67ba723ae063074031d691', 'carlosbueno', 'carasdas', '', '', 'N', 'kroactor@hotmail.com', '2008-02-26 21:25:52', 'A');
INSERT INTO `usuarios` VALUES(10, 'hola1', 'e10adc3949ba59abbe56e057f20f883e', 'hola', 'hola', '', '', 'N', 'coyotegriz@hotmail.com', '2008-03-02 08:36:33', 'I');
INSERT INTO `usuarios` VALUES(11, 'hola12', 'e10adc3949ba59abbe56e057f20f883e', 'hola', 'hola', '', '', 'N', 'coyotegriz@hotmail.com', '2008-03-02 08:37:19', 'I');
INSERT INTO `usuarios` VALUES(12, 'hola122', 'e10adc3949ba59abbe56e057f20f883e', 'hola', 'hola', '', '', 'N', 'coyotegriz@hotmail.com', '2008-03-02 08:39:13', 'A');
INSERT INTO `usuarios` VALUES(13, 'hola1222', 'e10adc3949ba59abbe56e057f20f883e', 'hola', 'hola', '', '', 'N', 'coyotegriz@hotmail.com', '2008-03-02 08:41:13', 'A');
INSERT INTO `usuarios` VALUES(14, 'lalala', '76671038b977a194e7a4babe19a353bb', 'lalala', 'lalala', '', '', 'N', 'davidvina@gmail.com', '2008-03-02 08:46:42', 'I');
INSERT INTO `usuarios` VALUES(15, 'davidvina2', 'e10adc3949ba59abbe56e057f20f883e', 'david', 'vinagre', '', '', 'N', '97369754a0eca699d570a00debd218f6', '2008-03-05 06:24:32', 'A');
INSERT INTO `usuarios` VALUES(16, 'maria', 'e10adc3949ba59abbe56e057f20f883e', 'maria2', 'vinagre2', '', '', 'N', 'davidvina@gmail.com', '2008-03-07 09:57:19', 'I');
INSERT INTO `usuarios` VALUES(17, 'caliman', 'e10adc3949ba59abbe56e057f20f883e', 'caliman', 'calimenio33', '', '', 'N', 'carl@sad.co', '2008-03-11 19:24:48', 'A');
INSERT INTO `usuarios` VALUES(18, 'tanga', '1a8b23b243a345d614244799c1acd873', 'Tanga', 'Tanga', '', '', 'N', 'carlos@keopstd.com', '2008-03-30 19:48:57', 'A');
INSERT INTO `usuarios` VALUES(19, 'enrico', '5b1b4dee9103f759fdb57197a78780a6', 'enrico', 'vinagre', '', '', 'N', '4ae17909cc1401fe1fdff48a79498973', '2008-04-10 08:45:52', 'A');
INSERT INTO `usuarios` VALUES(20, 'e', 'd3f8a05c465714e2c09d214af0e88897', 'edmund', 'vinagre', '', '', 'N', 'davidvina@gmail.com', '2008-04-10 08:51:57', 'A');
INSERT INTO `usuarios` VALUES(21, 'pepe', 'ccc13534d127ed9357824da53023c5f9', 'pepe', 'villuela', '', '', 'N', 'davidvina@gmail.com', '2008-04-11 10:03:18', 'A');
INSERT INTO `usuarios` VALUES(22, 'pepito', '32164702f8ffd2b418d780ff02371e4c', 'pepito', 'vili', '', '', 'N', 'davidvina@gmail.com', '2008-04-11 10:09:03', 'A');
INSERT INTO `usuarios` VALUES(23, 'p', '83878c91171338902e0fe0fb97a8c47a', 'david', 'vinagre', '', '', 'N', 'davidvina@gmail.com', '2008-04-17 05:29:27', 'A');
INSERT INTO `usuarios` VALUES(24, 'sara', 'b7c67e868633b049822cd93fd4790265', 'sara', 'tortelli', '', '', 'N', 'davidvina@gmail.com', '2008-04-18 04:05:49', 'A');
