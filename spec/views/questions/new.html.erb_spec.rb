require 'spec_helper'

describe "questions/new" do
  before(:each) do
    assign(:question, stub_model(Question,
      :ask_a_question => "MyString",
      :answer_the_question => "MyString"
    ).as_new_record)
  end

  it "renders new question form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", questions_path, "post" do
      assert_select "input#question_ask_a_question[name=?]", "question[ask_a_question]"
      assert_select "input#question_answer_the_question[name=?]", "question[answer_the_question]"
    end
  end
end
