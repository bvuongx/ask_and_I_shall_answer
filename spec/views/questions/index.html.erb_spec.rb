require 'spec_helper'

describe "questions/index" do
  before(:each) do
    assign(:questions, [
      stub_model(Question,
        :ask_a_question => "Ask A Question",
        :answer_the_question => "Answer The Question"
      ),
      stub_model(Question,
        :ask_a_question => "Ask A Question",
        :answer_the_question => "Answer The Question"
      )
    ])
  end

  it "renders a list of questions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Ask A Question".to_s, :count => 2
    assert_select "tr>td", :text => "Answer The Question".to_s, :count => 2
  end
end
