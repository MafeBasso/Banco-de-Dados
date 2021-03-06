-- MySQL Script generated by MySQL Workbench
-- Sun Nov 29 13:14:53 2020
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Evento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Evento` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(60) NOT NULL,
  `edicao` INT NOT NULL,
  `tema` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Pessoa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Pessoa` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `cpf` VARCHAR(11) NOT NULL,
  `nome` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Palestrante`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Palestrante` (
  `Pessoa_id` INT NOT NULL,
  `minicurriculo` VARCHAR(200) NOT NULL,
  `afiliacao` VARCHAR(60) NOT NULL,
  `certificado` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`Pessoa_id`),
  CONSTRAINT `fk_Palestrante_Pessoa1`
    FOREIGN KEY (`Pessoa_id`)
    REFERENCES `mydb`.`Pessoa` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Local`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Local` (
  `id` INT NOT NULL,
  `endereco` VARCHAR(100) NOT NULL,
  `capacidade` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Palestra`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Palestra` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `Evento_id` INT NOT NULL,
  `Palestrante_Pessoa_id` INT NOT NULL,
  `Local_id` INT NOT NULL,
  `data` DATETIME NOT NULL,
  `nome_ palestra` VARCHAR(80) NOT NULL,
  `duracao` VARCHAR(45) NOT NULL,
  `publico-alvo` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`, `Evento_id`, `Palestrante_Pessoa_id`, `Local_id`),
  INDEX `fk_Palestra_Palestrante1_idx` (`Palestrante_Pessoa_id` ASC) VISIBLE,
  INDEX `fk_Palestra_Local1_idx` (`Local_id` ASC) VISIBLE,
  CONSTRAINT `fk_Palestra_Evento1`
    FOREIGN KEY (`Evento_id`)
    REFERENCES `mydb`.`Evento` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Palestra_Palestrante1`
    FOREIGN KEY (`Palestrante_Pessoa_id`)
    REFERENCES `mydb`.`Palestrante` (`Pessoa_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Palestra_Local1`
    FOREIGN KEY (`Local_id`)
    REFERENCES `mydb`.`Local` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Workshop`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Workshop` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `Evento_id` INT NOT NULL,
  `data` DATETIME NOT NULL,
  `Local_id` INT NOT NULL,
  `tema` VARCHAR(100) NOT NULL,
  `duracao` VARCHAR(45) NOT NULL,
  `publico-alvo` VARCHAR(100) NOT NULL,
  `valor_ inscricao` DECIMAL NOT NULL,
  PRIMARY KEY (`id`, `Evento_id`, `data`, `Local_id`),
  INDEX `fk_Workshop_Local1_idx` (`Local_id` ASC) VISIBLE,
  CONSTRAINT `fk_Workshop_Evento`
    FOREIGN KEY (`Evento_id`)
    REFERENCES `mydb`.`Evento` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Workshop_Local1`
    FOREIGN KEY (`Local_id`)
    REFERENCES `mydb`.`Local` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Tutorial`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Tutorial` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `Evento_id` INT NOT NULL,
  `data` DATETIME NOT NULL,
  `Local_id` INT NOT NULL,
  `tema` VARCHAR(100) NOT NULL,
  `duracao` VARCHAR(45) NOT NULL,
  `publico-alvo` VARCHAR(100) NOT NULL,
  `valor_ inscricao` DECIMAL NOT NULL,
  PRIMARY KEY (`id`, `Evento_id`, `data`, `Local_id`),
  INDEX `fk_Tutorial_Local1_idx` (`Local_id` ASC) VISIBLE,
  CONSTRAINT `fk_Tutorial_Evento1`
    FOREIGN KEY (`Evento_id`)
    REFERENCES `mydb`.`Evento` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Tutorial_Local1`
    FOREIGN KEY (`Local_id`)
    REFERENCES `mydb`.`Local` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Reuniao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Reuniao` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `Evento_id` INT NOT NULL,
  `Local_id` INT NOT NULL,
  `data` DATETIME NOT NULL,
  `objetivo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`, `Evento_id`, `Local_id`),
  INDEX `fk_Reuniao_Local1_idx` (`Local_id` ASC) VISIBLE,
  CONSTRAINT `fk_Reuniao_Evento1`
    FOREIGN KEY (`Evento_id`)
    REFERENCES `mydb`.`Evento` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Reuniao_Local1`
    FOREIGN KEY (`Local_id`)
    REFERENCES `mydb`.`Local` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Apresentacao_de_Artigos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Apresentacao_de_Artigos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `Evento_id` INT NOT NULL,
  `tipo_artigos` VARCHAR(100) NOT NULL,
  `numero_sessoes` INT NOT NULL,
  PRIMARY KEY (`id`, `Evento_id`),
  CONSTRAINT `fk_Apresentacao_de_Artigos_Evento1`
    FOREIGN KEY (`Evento_id`)
    REFERENCES `mydb`.`Evento` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Concurso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Concurso` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `Evento_id` INT NOT NULL,
  `Local_id` INT NOT NULL,
  `data` DATETIME NOT NULL,
  `tema` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`, `Evento_id`, `Local_id`),
  INDEX `fk_Concurso_Local1_idx` (`Local_id` ASC) VISIBLE,
  CONSTRAINT `fk_Concurso_Evento1`
    FOREIGN KEY (`Evento_id`)
    REFERENCES `mydb`.`Evento` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Concurso_Local1`
    FOREIGN KEY (`Local_id`)
    REFERENCES `mydb`.`Local` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Atividades_Sociais`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Atividades_Sociais` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `Evento_id` INT NOT NULL,
  `Local_id` INT NOT NULL,
  `data` DATETIME NOT NULL,
  `tipo` VARCHAR(100) NOT NULL,
  `valor_convite` DECIMAL NOT NULL,
  PRIMARY KEY (`id`, `Evento_id`, `Local_id`),
  INDEX `fk_Atividades_Sociais_Local1_idx` (`Local_id` ASC) VISIBLE,
  CONSTRAINT `fk_Atividades_Sociais_Evento1`
    FOREIGN KEY (`Evento_id`)
    REFERENCES `mydb`.`Evento` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Atividades_Sociais_Local1`
    FOREIGN KEY (`Local_id`)
    REFERENCES `mydb`.`Local` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Artigo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Artigo` (
  `id` INT NOT NULL,
  `Apresentacao_de_Artigos_id` INT NOT NULL,
  `nome` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`, `Apresentacao_de_Artigos_id`),
  INDEX `fk_Artigo_Apresentacao_de_Artigos1_idx` (`Apresentacao_de_Artigos_id` ASC) INVISIBLE,
  CONSTRAINT `fk_Artigo_Apresentacao_de_Artigos1`
    FOREIGN KEY (`Apresentacao_de_Artigos_id`)
    REFERENCES `mydb`.`Apresentacao_de_Artigos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Sessao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Sessao` (
  `num` INT NOT NULL,
  `Apresentacao_de_Artigos_id` INT NOT NULL,
  `data` DATETIME NOT NULL,
  `Local_id` INT NOT NULL,
  `nome` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`num`, `Apresentacao_de_Artigos_id`, `data`, `Local_id`),
  INDEX `fk_Sessao_Apresentacao_de_Artigos1_idx` (`Apresentacao_de_Artigos_id` ASC) VISIBLE,
  INDEX `fk_Sessao_Local1_idx` (`Local_id` ASC) VISIBLE,
  CONSTRAINT `fk_Sessao_Apresentacao_de_Artigos1`
    FOREIGN KEY (`Apresentacao_de_Artigos_id`)
    REFERENCES `mydb`.`Apresentacao_de_Artigos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Sessao_Local1`
    FOREIGN KEY (`Local_id`)
    REFERENCES `mydb`.`Local` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Juiz`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Juiz` (
  `Pessoa_id` INT NOT NULL,
  `Concurso_id` INT NOT NULL,
  `certificado_juiz` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`Pessoa_id`, `Concurso_id`),
  INDEX `fk_Ju??z_Concurso1_idx` (`Concurso_id` ASC) VISIBLE,
  CONSTRAINT `fk_juiz_Pessoa1`
    FOREIGN KEY (`Pessoa_id`)
    REFERENCES `mydb`.`Pessoa` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Juiz_Concurso1`
    FOREIGN KEY (`Concurso_id`)
    REFERENCES `mydb`.`Concurso` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Ingresso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Ingresso` (
  `num` INT NOT NULL,
  `Evento_id` INT NOT NULL,
  PRIMARY KEY (`num`, `Evento_id`),
  INDEX `fk_Ingresso_Evento1_idx` (`Evento_id` ASC) VISIBLE,
  CONSTRAINT `fk_Ingresso_Evento1`
    FOREIGN KEY (`Evento_id`)
    REFERENCES `mydb`.`Evento` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Participante`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Participante` (
  `Pessoa_id` INT NOT NULL,
  `Ingresso_num` INT NOT NULL,
  `certificado_participante` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`Pessoa_id`, `Ingresso_num`),
  INDEX `fk_Participante_Pessoa1_idx` (`Pessoa_id` ASC) VISIBLE,
  CONSTRAINT `fk_Participante_Ingresso1`
    FOREIGN KEY (`Ingresso_num`)
    REFERENCES `mydb`.`Ingresso` (`num`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Participante_Pessoa1`
    FOREIGN KEY (`Pessoa_id`)
    REFERENCES `mydb`.`Pessoa` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Autor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Autor` (
  `Pessoa_id` INT NOT NULL,
  `Artigo_Apresentacao_de_Artigos_id` INT NOT NULL,
  PRIMARY KEY (`Pessoa_id`, `Artigo_Apresentacao_de_Artigos_id`),
  INDEX `fk_Autor_Artigo1_idx` (`Artigo_Apresentacao_de_Artigos_id` ASC) VISIBLE,
  CONSTRAINT `fk_Autor_Pessoa1`
    FOREIGN KEY (`Pessoa_id`)
    REFERENCES `mydb`.`Pessoa` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Autor_Artigo1`
    FOREIGN KEY (`Artigo_Apresentacao_de_Artigos_id`)
    REFERENCES `mydb`.`Artigo` (`Apresentacao_de_Artigos_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Ministrante`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Ministrante` (
  `Tutorial_id` INT NOT NULL,
  `Pessoa_id` INT NOT NULL,
  `certificado_ministrante` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`Tutorial_id`, `Pessoa_id`),
  INDEX `fk_Ministrante_Tutorial1_idx` (`Tutorial_id` ASC) VISIBLE,
  CONSTRAINT `fk_Ministrante_Pessoa1`
    FOREIGN KEY (`Pessoa_id`)
    REFERENCES `mydb`.`Pessoa` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Ministrante_Tutorial1`
    FOREIGN KEY (`Tutorial_id`)
    REFERENCES `mydb`.`Tutorial` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Responsavel_pela_Sessao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Responsavel_pela_Sessao` (
  `Sessao_num` INT NOT NULL,
  `Pessoa_id` INT NOT NULL,
  `certificado_responsavel_sessao` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`Sessao_num`, `Pessoa_id`),
  INDEX `fk_Respons??vel pela sess??o_Pessoa1_idx` (`Pessoa_id` ASC) VISIBLE,
  INDEX `fk_Responsavel_pela_Sessao_Sessao1_idx` (`Sessao_num` ASC) VISIBLE,
  CONSTRAINT `fk_Responsavel_pela_Sessao_Pessoa1`
    FOREIGN KEY (`Pessoa_id`)
    REFERENCES `mydb`.`Pessoa` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Responsavel_pela_Sessao_Sessao1`
    FOREIGN KEY (`Sessao_num`)
    REFERENCES `mydb`.`Sessao` (`num`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Organizador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Organizador` (
  `Evento_id` INT NOT NULL,
  `Pessoa_id` INT NOT NULL,
  `certificado_organizador` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`Evento_id`, `Pessoa_id`),
  INDEX `fk_Organizador_Evento1_idx` (`Evento_id` ASC) VISIBLE,
  CONSTRAINT `fk_Organizador_Pessoa1`
    FOREIGN KEY (`Pessoa_id`)
    REFERENCES `mydb`.`Pessoa` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Organizador_Evento1`
    FOREIGN KEY (`Evento_id`)
    REFERENCES `mydb`.`Evento` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Staff`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Staff` (
  `Evento_id` INT NOT NULL,
  `Pessoa_id` INT NOT NULL,
  `certificado_staff` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`Evento_id`, `Pessoa_id`),
  INDEX `fk_Staff_Evento1_idx` (`Evento_id` ASC) VISIBLE,
  CONSTRAINT `fk_Staff_Pessoa1`
    FOREIGN KEY (`Pessoa_id`)
    REFERENCES `mydb`.`Pessoa` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Staff_Evento1`
    FOREIGN KEY (`Evento_id`)
    REFERENCES `mydb`.`Evento` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Comite_de_Programa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Comite_de_Programa` (
  `Evento_id` INT NOT NULL,
  PRIMARY KEY (`Evento_id`),
  INDEX `fk_Comite_de_Programa_Evento1_idx` (`Evento_id` ASC) VISIBLE,
  CONSTRAINT `fk_Comite_de_Programa_Evento1`
    FOREIGN KEY (`Evento_id`)
    REFERENCES `mydb`.`Evento` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Membro_do_Comite`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Membro_do_Comite` (
  `Comite_de_Programa_Evento_id` INT NOT NULL,
  `Pessoa_id` INT NOT NULL,
  `certificado_participante_comite` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`Comite_de_Programa_Evento_id`, `Pessoa_id`),
  INDEX `fk_Participante do comit??_Pessoa1_idx` (`Pessoa_id` ASC) VISIBLE,
  INDEX `fk_Membro_do_Comite_Comite_de_Programa1_idx` (`Comite_de_Programa_Evento_id` ASC) VISIBLE,
  CONSTRAINT `fk_Participante_do_Comite_Pessoa1`
    FOREIGN KEY (`Pessoa_id`)
    REFERENCES `mydb`.`Pessoa` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Membro_do_Comite_Comite_de_Programa1`
    FOREIGN KEY (`Comite_de_Programa_Evento_id`)
    REFERENCES `mydb`.`Comite_de_Programa` (`Evento_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Entidade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Entidade` (
  `cnpj` VARCHAR(14) NOT NULL,
  `Evento_id` INT NOT NULL,
  `nome` VARCHAR(60) NOT NULL,
  `endereco` VARCHAR(100) NULL,
  PRIMARY KEY (`cnpj`, `Evento_id`),
  INDEX `fk_Entidade_Evento1_idx` (`Evento_id` ASC) VISIBLE,
  CONSTRAINT `fk_Entidade_Evento1`
    FOREIGN KEY (`Evento_id`)
    REFERENCES `mydb`.`Evento` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Promotor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Promotor` (
  `Entidade_cnpj` VARCHAR(14) NOT NULL,
  `Entidade_Evento_id` INT NOT NULL,
  PRIMARY KEY (`Entidade_cnpj`, `Entidade_Evento_id`),
  CONSTRAINT `fk_Promotor_Entidade1`
    FOREIGN KEY (`Entidade_cnpj` , `Entidade_Evento_id`)
    REFERENCES `mydb`.`Entidade` (`cnpj` , `Evento_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Realizador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Realizador` (
  `Entidade_cnpj` VARCHAR(14) NOT NULL,
  `Entidade_Evento_id` INT NOT NULL,
  PRIMARY KEY (`Entidade_cnpj`, `Entidade_Evento_id`),
  CONSTRAINT `fk_Realizador_Entidade1`
    FOREIGN KEY (`Entidade_cnpj` , `Entidade_Evento_id`)
    REFERENCES `mydb`.`Entidade` (`cnpj` , `Evento_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Patrocinador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Patrocinador` (
  `Entidade_cnpj` VARCHAR(14) NOT NULL,
  `Entidade_Evento_id` INT NOT NULL,
  `categoria` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`Entidade_cnpj`, `Entidade_Evento_id`),
  CONSTRAINT `fk_Patrocinador_Entidade1`
    FOREIGN KEY (`Entidade_cnpj` , `Entidade_Evento_id`)
    REFERENCES `mydb`.`Entidade` (`cnpj` , `Evento_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Premio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Premio` (
  `Concurso_id` INT NOT NULL,
  `descricao` MEDIUMTEXT NOT NULL,
  `posicao` INT NOT NULL,
  PRIMARY KEY (`Concurso_id`),
  INDEX `fk_Pr??mio_Concurso1_idx` (`Concurso_id` ASC) VISIBLE,
  CONSTRAINT `fk_Premio_Concurso1`
    FOREIGN KEY (`Concurso_id`)
    REFERENCES `mydb`.`Concurso` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Pagamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Pagamento` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `valor` DECIMAL NOT NULL,
  `descricao` VARCHAR(100) NOT NULL,
  `recibo` VARCHAR(200) NOT NULL,
  `nota_fiscal` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Desconto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Desconto` (
  `Evento_id` INT NOT NULL,
  `desconto_estudante` DECIMAL NOT NULL,
  `desconto_idoso` DECIMAL NOT NULL,
  PRIMARY KEY (`Evento_id`),
  CONSTRAINT `fk_Desconto_Evento1`
    FOREIGN KEY (`Evento_id`)
    REFERENCES `mydb`.`Evento` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Equipamentos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Equipamentos` (
  `nome` VARCHAR(60) NOT NULL,
  `Local_id` INT NOT NULL,
  `quantidade` INT NOT NULL,
  PRIMARY KEY (`nome`, `Local_id`),
  INDEX `fk_Equipamentos_Local1_idx` (`Local_id` ASC) VISIBLE,
  CONSTRAINT `fk_Equipamentos_Local1`
    FOREIGN KEY (`Local_id`)
    REFERENCES `mydb`.`Local` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Lote`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Lote` (
  `num` INT NOT NULL,
  `Evento_id` INT NOT NULL,
  `preco` DECIMAL NOT NULL,
  `qtd_ingressos` INT NOT NULL,
  PRIMARY KEY (`num`, `Evento_id`),
  INDEX `fk_Lote_Evento1_idx` (`Evento_id` ASC) VISIBLE,
  CONSTRAINT `fk_Lote_Evento1`
    FOREIGN KEY (`Evento_id`)
    REFERENCES `mydb`.`Evento` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Preco`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Preco` (
  `Evento_id` INT NOT NULL,
  `taxa_bronze` DECIMAL NULL,
  `acrescimo_prata` DECIMAL NULL,
  `acrescimo_ouro` DECIMAL NULL,
  INDEX `fk_Preco_Evento1_idx` (`Evento_id` ASC) VISIBLE,
  PRIMARY KEY (`Evento_id`),
  CONSTRAINT `fk_Preco_Evento1`
    FOREIGN KEY (`Evento_id`)
    REFERENCES `mydb`.`Evento` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Responsavel`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Responsavel` (
  `Pessoa_id` INT NOT NULL,
  `Entidade_cnpj` VARCHAR(14) NOT NULL,
  PRIMARY KEY (`Pessoa_id`, `Entidade_cnpj`),
  INDEX `fk_Responsavel_Pessoa1_idx` (`Pessoa_id` ASC) VISIBLE,
  INDEX `fk_Responsavel_Entidade1_idx` (`Entidade_cnpj` ASC) VISIBLE,
  CONSTRAINT `fk_Responsavel_Pessoa1`
    FOREIGN KEY (`Pessoa_id`)
    REFERENCES `mydb`.`Pessoa` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Responsavel_Entidade1`
    FOREIGN KEY (`Entidade_cnpj`)
    REFERENCES `mydb`.`Entidade` (`cnpj`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Regra`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Regra` (
  `Concurso_id` INT NOT NULL,
  `numero` INT NOT NULL,
  `descricao` MEDIUMTEXT NOT NULL,
  PRIMARY KEY (`Concurso_id`, `numero`),
  INDEX `fk_Regra_Concurso1_idx` (`Concurso_id` ASC) VISIBLE,
  CONSTRAINT `fk_Regra_Concurso1`
    FOREIGN KEY (`Concurso_id`)
    REFERENCES `mydb`.`Concurso` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Competidor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Competidor` (
  `Concurso_id` INT NOT NULL,
  `Pessoa_id` INT NOT NULL,
  `posicao` INT NOT NULL,
  `certificado` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`Concurso_id`, `Pessoa_id`),
  INDEX `fk_Competidor_Concurso1_idx` (`Concurso_id` ASC) VISIBLE,
  CONSTRAINT `fk_Competidor_Pessoa1`
    FOREIGN KEY (`Pessoa_id`)
    REFERENCES `mydb`.`Pessoa` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Competidor_Concurso1`
    FOREIGN KEY (`Concurso_id`)
    REFERENCES `mydb`.`Concurso` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Recebedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Recebedor` (
  `cnpj/cpf` VARCHAR(14) NOT NULL,
  `Pagamento_id` INT NOT NULL,
  `nome` VARCHAR(60) NOT NULL,
  `descricao` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`cnpj/cpf`, `Pagamento_id`),
  INDEX `fk_Recebedor_Pagamento1_idx` (`Pagamento_id` ASC) VISIBLE,
  CONSTRAINT `fk_Recebedor_Pagamento1`
    FOREIGN KEY (`Pagamento_id`)
    REFERENCES `mydb`.`Pagamento` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Integrante`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Integrante` (
  `Reuniao_id` INT NOT NULL,
  `Pessoa_id` INT NOT NULL,
  `certificado` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`Reuniao_id`, `Pessoa_id`),
  INDEX `fk_Integrante_Reuniao1_idx` (`Reuniao_id` ASC) VISIBLE,
  CONSTRAINT `fk_Integrante_Pessoa1`
    FOREIGN KEY (`Pessoa_id`)
    REFERENCES `mydb`.`Pessoa` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Integrante_Reuniao1`
    FOREIGN KEY (`Reuniao_id`)
    REFERENCES `mydb`.`Reuniao` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Stand_de_Evento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Stand_de_Evento` (
  `id` INT NOT NULL,
  `Local_id` INT NOT NULL,
  PRIMARY KEY (`id`, `Local_id`),
  INDEX `fk_Stand_de_evento_Local1_idx` (`Local_id` ASC) VISIBLE,
  CONSTRAINT `fk_Stand_de_evento_Local1`
    FOREIGN KEY (`Local_id`)
    REFERENCES `mydb`.`Local` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Entidade_has_Stand_de_Evento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Entidade_has_Stand_de_Evento` (
  `Stand_de_evento_id` INT NOT NULL,
  `data` DATETIME NOT NULL,
  `Entidade_cnpj` VARCHAR(14) NOT NULL,
  `Entidade_Evento_id` INT NOT NULL,
  PRIMARY KEY (`Stand_de_evento_id`, `Entidade_cnpj`, `Entidade_Evento_id`, `data`),
  INDEX `fk_Entidade_has_Stand_de_evento_Stand_de_evento1_idx` (`Stand_de_evento_id` ASC) VISIBLE,
  INDEX `fk_Entidade_has_Stand_de_Evento_Entidade1_idx` (`Entidade_cnpj` ASC, `Entidade_Evento_id` ASC) VISIBLE,
  CONSTRAINT `fk_Entidade_has_Stand_de_evento_Stand_de_evento1`
    FOREIGN KEY (`Stand_de_evento_id`)
    REFERENCES `mydb`.`Stand_de_Evento` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Entidade_has_Stand_de_Evento_Entidade1`
    FOREIGN KEY (`Entidade_cnpj` , `Entidade_Evento_id`)
    REFERENCES `mydb`.`Entidade` (`cnpj` , `Evento_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Facebook`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Facebook` (
  `URL_pagina` VARCHAR(100) NOT NULL,
  `Entidade_cnpj` VARCHAR(14) NOT NULL,
  PRIMARY KEY (`URL_pagina`, `Entidade_cnpj`),
  INDEX `fk_Facebook_Entidade1_idx` (`Entidade_cnpj` ASC) VISIBLE,
  CONSTRAINT `fk_Facebook_Entidade1`
    FOREIGN KEY (`Entidade_cnpj`)
    REFERENCES `mydb`.`Entidade` (`cnpj`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Publicacao_Facebook`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Publicacao_Facebook` (
  `id` INT NOT NULL,
  `Facebook_URL_pagina` VARCHAR(100) NOT NULL,
  `num_curtida` INT NULL,
  `num_comentarios` INT NULL,
  `num_amei` INT NULL,
  `num_uau` INT NULL,
  `num_haha` INT NULL,
  `num_forca` INT NULL,
  `num_triste` INT NULL,
  `num_grr` INT NULL,
  PRIMARY KEY (`id`, `Facebook_URL_pagina`),
  INDEX `fk_Publicacao_Facebook_Facebook1_idx` (`Facebook_URL_pagina` ASC) VISIBLE,
  CONSTRAINT `fk_Publicacao_Facebook_Facebook1`
    FOREIGN KEY (`Facebook_URL_pagina`)
    REFERENCES `mydb`.`Facebook` (`URL_pagina`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Instagram`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Instagram` (
  `nome_usuario` VARCHAR(60) NOT NULL,
  `Entidade_cnpj` VARCHAR(14) NOT NULL,
  PRIMARY KEY (`nome_usuario`, `Entidade_cnpj`),
  INDEX `fk_Instagram_Entidade1_idx` (`Entidade_cnpj` ASC) VISIBLE,
  CONSTRAINT `fk_Instagram_Entidade1`
    FOREIGN KEY (`Entidade_cnpj`)
    REFERENCES `mydb`.`Entidade` (`cnpj`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Publicacao_Instagram`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Publicacao_Instagram` (
  `id` INT NOT NULL,
  `Instagram_nome_usuario` VARCHAR(60) NOT NULL,
  `num_curtida` INT NULL,
  `num_comentarios` INT NULL,
  PRIMARY KEY (`id`, `Instagram_nome_usuario`),
  INDEX `fk_Publicacao_Instagram_Instagram1_idx` (`Instagram_nome_usuario` ASC) VISIBLE,
  CONSTRAINT `fk_Publicacao_Instagram_Instagram1`
    FOREIGN KEY (`Instagram_nome_usuario`)
    REFERENCES `mydb`.`Instagram` (`nome_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Pagamento_Patrocinador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Pagamento_Patrocinador` (
  `Patrocinador_Entidade_cnpj` VARCHAR(14) NOT NULL,
  `Pagamento_id` INT NOT NULL,
  PRIMARY KEY (`Patrocinador_Entidade_cnpj`, `Pagamento_id`),
  INDEX `fk_Pagamento_Entidade_Pagamento1_idx` (`Pagamento_id` ASC) VISIBLE,
  INDEX `fk_Pagamento_Patrocinador_Patrocinador1_idx` (`Patrocinador_Entidade_cnpj` ASC) VISIBLE,
  CONSTRAINT `fk_Pagamento_Entidade_Pagamento1`
    FOREIGN KEY (`Pagamento_id`)
    REFERENCES `mydb`.`Pagamento` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pagamento_Patrocinador_Patrocinador1`
    FOREIGN KEY (`Patrocinador_Entidade_cnpj`)
    REFERENCES `mydb`.`Patrocinador` (`Entidade_cnpj`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Pagamento_Evento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Pagamento_Evento` (
  `Evento_id` INT NOT NULL,
  `Pagamento_id` INT NOT NULL,
  PRIMARY KEY (`Evento_id`, `Pagamento_id`),
  INDEX `fk_Pagamento_Evento_Pagamento1_idx` (`Pagamento_id` ASC) VISIBLE,
  CONSTRAINT `fk_Pagamento_Evento_Evento1`
    FOREIGN KEY (`Evento_id`)
    REFERENCES `mydb`.`Evento` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pagamento_Evento_Pagamento1`
    FOREIGN KEY (`Pagamento_id`)
    REFERENCES `mydb`.`Pagamento` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Pagamento_Participante`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Pagamento_Participante` (
  `Participante_Pessoa_id` INT NOT NULL,
  `Pagamento_id` INT NOT NULL,
  PRIMARY KEY (`Participante_Pessoa_id`, `Pagamento_id`),
  INDEX `fk_Pagamento_Participante_Pagamento1_idx` (`Pagamento_id` ASC) VISIBLE,
  CONSTRAINT `fk_Pagamento_Participante_Participante1`
    FOREIGN KEY (`Participante_Pessoa_id`)
    REFERENCES `mydb`.`Participante` (`Pessoa_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pagamento_Participante_Pagamento1`
    FOREIGN KEY (`Pagamento_id`)
    REFERENCES `mydb`.`Pagamento` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
