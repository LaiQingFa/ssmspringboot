package com.example.ssmspringboot.domain;

import com.example.ssmspringboot.dao.User;
import com.example.ssmspringboot.util.Page;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper     //声明是一个Mapper,与springbootApplication中的@MapperScan二选一写上即可
@Repository
public interface UserMapper {
    int deleteByPrimaryKey(Integer userid);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer userid);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    /**
     * 分页
     * @return
     */
    public List<User> list();

    public List<User> list(Page page);

    public int total();
}