package net.skhu.dto;

import lombok.Data;

import java.math.BigInteger;
@Data
public class Apply {
    BigInteger apply_id;
    String studentId;
    String studygroupId;
    String application;
}
