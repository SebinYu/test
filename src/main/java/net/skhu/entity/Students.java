package net.skhu.entity;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.math.BigInteger;

@Data
@Entity
public class Students {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    BigInteger student_id;

    String email;
    String password;
    String nickName;
    String address;
}
