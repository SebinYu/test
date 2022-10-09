package net.skhu.model;

import lombok.Data;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

@Data
public class StudentsRegistration {


    @NotEmpty @NotBlank
    @Email
    String email;

    @NotEmpty
    @Size(min=6, max=12)
    String passwd1;

    String passwd2;

    @NotEmpty @NotBlank
    @Size(min=2, max=30)
    String nickName;

    @NotEmpty @NotBlank
    String address;

    Integer departmentId;
}