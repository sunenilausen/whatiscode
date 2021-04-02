require "rails_helper"

describe ArticlesHelper do
  describe "#raspberry_markdown_to_html" do
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
    let(:subject) { helper.raspberry_markdown_to_html(text) }

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
end
