require 'spec_helper'

describe "questions/edit" do
  before(:each) do
    @question = assign(:question, stub_model(Question,
      :ask_a_question => "MyString",
      :answer_the_question => "MyString"
    ))
  end

  it "renders the edit question form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", question_path(@question), "post" do
      assert_select "input#question_ask_a_question[name=?]", "question[ask_a_question]"
      assert_select "input#question_answer_the_question[name=?]", "question[answer_the_question]"
    end
  end
end
