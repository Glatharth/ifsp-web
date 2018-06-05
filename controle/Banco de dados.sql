CREATE TABLE `users` (
  `id_users` INT NOT NULL AUTO_INCREMENT,
  `username` varchar(35) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nivel` int(1) NOT NULL,
  PRIMARY KEY (id_users)
);

CREATE TABLE `comodos` (
  `id_comodo` INT NOT NULL AUTO_INCREMENT,
  `nome` varchar(40) NOT NULL,
  `permissao` int(1) NOT NULL,
  `n_electro` varchar(5) NOT NULL,
  `estado` int(1) NOT NULL,
  PRIMARY KEY (id_comodo),
  PRIMARY KEY (permissao)
);

CREATE TABLE `equipamentos` (
  `id_equipamentos` INT NOT NULL AUTO_INCREMENT,
  `nome` varchar(40) NOT NULL,
  `id_comodo` integer NOT NULL,
  `permissao` integer NOT NULL,
  `estado` int(1) NOT NULL,
  PRIMARY KEY (id_equipamentos),
  FOREIGN KEY (id_comodo) references comodos (id_comodo)
  FOREIGN KEY (permissao) references comodos (permissao)
);

INSERT INTO `users` (`id_users`, `username`, `password`, `email`, `nivel`) VALUES (NULL, 'admin', MD5('123mudar'), 'admin@admin.com', 'adm');
INSERT INTO `users` (`id_users`, `username`, `password`, `email`, `nivel`) VALUES (NULL, 'root', MD5('root'), 'root@root.com', 'root');