class Question
    attr_accessor :prompt, :answer
    def initialize(prompt, answer)
        @prompt = prompt
        @answer = answer
    end
end

q1 = "What is the color of apple?\na - Red\nb - Brown\nc - Pink"
q2 = "What is the color of banana?\na - Green\nb - Yellow\nc - Pink"
q3 = "What is the color of orange?\na - Orange\nb - Red\nc - Green"

question = [
    Question.new(q1, "a"),
    Question.new(q2, "b"),
    Question.new(q3, "a")
]

def run_test(questions)
    answer = ""
    score = 0

    for question in questions do
        puts question.prompt
        answer = gets.chomp()

        if answer == question.answer
            score += 1
        end
    end
    puts "You Got #{score}/#{questions.length()}"
end

run_test(question)