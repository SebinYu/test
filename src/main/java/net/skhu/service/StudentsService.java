package net.skhu.service;

import net.skhu.entity.Students;
import net.skhu.model.StudentsRegistration;
import net.skhu.repository.StudentsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentsService{


    public StudentsRepository studentsRepository;

    public List<Students> findAll() {
        return studentsRepository.findAll();
    }

    public Students createEntity(StudentsRegistration studentsRegistration) {
        Students students = new Students();
        students.setEmail(studentsRegistration.getEmail());
        students.setPassword(studentsRegistration.getPasswd1());
        students.setNickName(studentsRegistration.getNickName());
        students.setAddress(studentsRegistration.getAddress());
        return students;
    }

    public void save(StudentsRegistration studentsRegistration) {
        Students students = createEntity(studentsRegistration);
        studentsRepository.save(students);
    }

}
