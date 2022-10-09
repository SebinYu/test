package net.skhu.mapper;

import net.skhu.dto.Apply;
import org.apache.ibatis.annotations.*;

import java.math.BigInteger;
import java.util.List;

@Mapper
public interface ApplyMapper {

    @Select("SELECT * FROM applys")
    List<Apply> findAll();

    @Select("SELECT * FROM applys WHERE apply_id = #{apply_id}")
    Apply findOne(BigInteger apply_id);

    @Insert("INSERT applys (apply_id) VALUES (#{apply_id})")
    @Options(useGeneratedKeys=true, keyProperty="apply_id")
    void insert(Apply apply);

    @Update("UPDATE applys SET apply_id = #{apply_id} ")
    void update(Apply apply);

    @Delete("DELETE FROM applys WHERE apply_id = #{apply_id}")
    void delete(Apply apply);
}
