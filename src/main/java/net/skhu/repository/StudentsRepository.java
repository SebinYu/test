package net.skhu.repository;

import net.skhu.entity.Students;
import org.springframework.data.jpa.repository.JpaRepository;

import java.math.BigInteger;

public interface StudentsRepository extends JpaRepository<Students, BigInteger>  {

}
