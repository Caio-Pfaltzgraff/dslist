package com.projetos.dslist.services;

import com.projetos.dslist.dto.GameMinDTO;
import com.projetos.dslist.entities.Game;
import com.projetos.dslist.repository.GameRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GameService {

    @Autowired
    private GameRepository gameRepository;

    public List<GameMinDTO> findAll() {
        return gameRepository.findAll().stream().map(GameMinDTO::new).toList();
    }

}