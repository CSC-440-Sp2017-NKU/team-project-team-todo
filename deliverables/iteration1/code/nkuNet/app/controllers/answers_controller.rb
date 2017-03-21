class AnswersController < ApplicationController
    def create
        @question = Question.find(params[:question_id])
        @answer = @question.answers.build(answer_params)
        
        if @answer.save
            redirect_to @question, notice: 'Answer was successfully created'
            
        else
            redirect_to @question, alert: 'Error creating answer. ' + @answer.errors.full_messages.to_sentence
        end
    end
    
    private
    
    def answer_params
        params.require(:answer).permit(:author, :body, :email)
    end
    
    def destroy
        @question = Question.find(params[:answer_id])
        @answer = @question.answers.find(param[:id])
        
        @answer.destroy
        respond_to do |format|
            format.html { redirect_to @question }
            format.json { head :no_content }
        end
    end
end
