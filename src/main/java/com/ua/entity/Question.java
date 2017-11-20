package com.ua.entity;

import lombok.*;
import org.hibernate.annotations.GenericGenerator;
import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

@Data
@NoArgsConstructor
@RequiredArgsConstructor
@Entity
@Table(name = ("QUESTION"))
public class Question implements Serializable {

    @Id
    @GenericGenerator(name = "auto_inc", strategy = "increment")
    @GeneratedValue(generator = "auto_inc")
    @Column(name = ("ID"))
    private Long id;

    @Column(name = ("QUESTION"))
    @NonNull
    private String question;

    @OneToMany(cascade = CascadeType.ALL)
    @JoinTable(name = ("QUESTION_ANSWER"), joinColumns = {@JoinColumn(name = ("QUESTION_ID"))},
            inverseJoinColumns = {@JoinColumn(name = ("ANSWER_ID"))})
    private List<Answer> answers;

}