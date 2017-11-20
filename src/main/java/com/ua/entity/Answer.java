package com.ua.entity;

import lombok.*;
import javax.persistence.*;
import java.io.Serializable;

@Data
@NoArgsConstructor
@RequiredArgsConstructor
@Entity
@Table(name = ("ANSWER"))
public class Answer implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = ("ID"))
    private Long id;

    @Column(name = ("ANSWER"))
    @NonNull
    private String answer;

}