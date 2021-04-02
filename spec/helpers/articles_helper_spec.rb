require "rails_helper"

describe ArticlesHelper do
  describe "#raspberry_markdown_to_html" do
    let(:text) { "" }
    let(:subject) { helper.raspberry_markdown_to_html(text) }

    context "text has collapsible markdown" do
      let(:text) do
"""
rawr
--- collapse ---
---
title: What you will learn
---
stuff
--- /collapse ---
rawr
"""
      end

      it "replaces collapsible with html" do
        result =
"""
rawr
<ul class='collapsible'><li><div class='collapsible-header'><i class='material-icons'>Info</i> What you will learn
</div><div class='collapsible-body'><span>
stuff
</span></div></li></ul>
rawr
"""
        expect(subject).to eq(result)
      end
    end

    context "text has target blank attributes" do
      let(:text) { "This project covers [Curriculum](http://rpf.io/curriculum){:target=\"_blank\"}" }
      it "removes target blank attribute" do
        result = "This project covers [Curriculum](http://rpf.io/curriculum)"
        expect(subject).to eq(result)
      end
    end
  end
end
