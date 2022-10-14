package net.skhu.dto;

import lombok.Data;

import java.math.BigInteger;
import java.sql.Timestamp;
@Data
public class Studygroup {
    BigInteger studyGroup_id;
    String title;
    String content;
    int learningMaterial_id;
    String writer;
    int totalNum;
    int currentNum;
    private Timestamp regDate;

}
