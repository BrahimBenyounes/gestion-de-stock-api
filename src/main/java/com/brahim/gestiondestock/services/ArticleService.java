package com.brahim.gestiondestock.services;

import com.brahim.gestiondestock.dto.ArticleDto;
import com.brahim.gestiondestock.dto.LigneCommandeClientDto;
import com.brahim.gestiondestock.dto.LigneCommandeFournisseurDto;
import com.brahim.gestiondestock.dto.LigneVenteDto;
import java.util.List;

public interface ArticleService {

  ArticleDto save(ArticleDto dto);

  ArticleDto findById(Integer id);

  ArticleDto findByCodeArticle(String codeArticle);

  List<ArticleDto> findAll();

  List<LigneVenteDto> findHistoriqueVentes(Integer idArticle);

  List<LigneCommandeClientDto> findHistoriaueCommandeClient(Integer idArticle);

  List<LigneCommandeFournisseurDto> findHistoriqueCommandeFournisseur(Integer idArticle);

  List<ArticleDto> findAllArticleByIdCategory(Integer idCategory);

  void delete(Integer id);

}
