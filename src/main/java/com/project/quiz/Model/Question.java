package com.project.quiz.Model;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Question {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String questionText;
    private String choiceA;
    private String choiceB;
    private String choiceC;
    private String choiceD;
    private String correctAnswer;

    private String chosenAnswer;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getQuestionText() {
		return questionText;
	}

	public void setQuestionText(String questionText) {
		this.questionText = questionText;
	}

	public String getChoiceA() {
		return choiceA;
	}

	public void setChoiceA(String choiceA) {
		this.choiceA = choiceA;
	}

	public String getChoiceB() {
		return choiceB;
	}

	public void setChoiceB(String choiceB) {
		this.choiceB = choiceB;
	}

	public String getChoiceC() {
		return choiceC;
	}

	public void setChoiceC(String choiceC) {
		this.choiceC = choiceC;
	}

	public String getChoiceD() {
		return choiceD;
	}

	public void setChoiceD(String choiceD) {
		this.choiceD = choiceD;
	}

	public String getCorrectAnswer() {
		return correctAnswer;
	}

	public void setCorrectAnswer(String correctAnswer) {
		this.correctAnswer = correctAnswer;
	}

	public String getChosenAnswer() {
		return chosenAnswer;
	}

	public void setChosenAnswer(String chosenAnswer) {
		this.chosenAnswer = chosenAnswer;
	}

	public Question(Long id, String questionText, String choiceA, String choiceB, String choiceC, String choiceD,
			String correctAnswer, String chosenAnswer) {
		super();
		this.id = id;
		this.questionText = questionText;
		this.choiceA = choiceA;
		this.choiceB = choiceB;
		this.choiceC = choiceC;
		this.choiceD = choiceD;
		this.correctAnswer = correctAnswer;
		this.chosenAnswer = chosenAnswer;
	}

	public Question() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Question [id=" + id + ", questionText=" + questionText + ", choiceA=" + choiceA + ", choiceB=" + choiceB
				+ ", choiceC=" + choiceC + ", choiceD=" + choiceD + ", correctAnswer=" + correctAnswer
				+ ", chosenAnswer=" + chosenAnswer + "]";
	}

    
}