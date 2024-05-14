package com.project.quiz.Controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.quiz.Model.Question;
import com.project.quiz.Model.QuestionForm;
import com.project.quiz.Model.Result;
import com.project.quiz.Repositary.Question_info;
import com.project.quiz.Repositary.Result_info;

@Controller
public class questionController {
    @Autowired
    Question_info repo;

    @Autowired
    Result_info rrepo;

    @GetMapping("/home1")
    public String home() {
        return "question.jsp";
    }

    @PostMapping("/add1question")
    public String addquestion(@ModelAttribute Question e) {
        System.out.println(e);
        repo.save(e);
        return "dashboard.jsp";
    }

    @RequestMapping("/Quiztest")
    public String quiz(Model m) {
        List<Question> allQues = repo.findAll();
        List<Question> qList = new ArrayList<Question>();

        Random random = new Random();
        for (int i = 0; i < 10; i++) {
            int rand = random.nextInt(allQues.size());
            qList.add(allQues.get(rand));
            allQues.remove(rand);
        }

        QuestionForm questionForm = new QuestionForm();
        questionForm.setQuestions(qList);

        m.addAttribute("qform", questionForm);

        return "Quiz.jsp";
    }

    @PostMapping("/submitQuiz")
    public String submitQuiz(@RequestParam("username") String username, @ModelAttribute QuestionForm qForm, Model model) {
    	 System.out.println("Received QuestionForm: " + qForm);
        List<Question> qList = qForm.getQuestions();
        
        if (qList == null) {
            qList = new ArrayList<>();
        }
        
        System.out.println(qList);
        int totalCorrect = 0;
        for (Question q : qList) {
            if (q.getChosenAnswer() != null && q.getChosenAnswer().equals(q.getCorrectAnswer())) {
                totalCorrect++;
            }
        }

        Result quizResult = new Result();
        quizResult.setUsername(username);
        quizResult.setTotalCorrect(totalCorrect);

        rrepo.save(quizResult);

        model.addAttribute("totalCorrect", totalCorrect);

        return "result.jsp";
    }
    
    @RequestMapping("/score")
    public String getResult(Model m ) {
    	List<Result>a=rrepo.findAll();
    	m.addAttribute("score", a);
    	return "score.jsp";
    	
 }
}