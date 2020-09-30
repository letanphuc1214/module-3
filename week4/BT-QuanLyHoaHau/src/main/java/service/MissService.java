package service;

import model.MissManager;

import java.util.List;

public interface MissService {

    List<MissManager> findAll();
    void save(MissManager missManager);
    MissManager findById (int id);
    void update (int id, MissManager missManager);
    void remove (int id);
}
