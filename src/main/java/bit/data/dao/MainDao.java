package bit.data.dao;

import bit.data.dto.ComTourDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MainDao implements MainDaoInter {
    @Autowired
    SqlSession session;
    String ns="bit.data.dao.MainDao.";

    @Override
    public List<ComTourDto> selectTr3List() {
        return session.selectList(ns+"selectTr3List");
    }
}
