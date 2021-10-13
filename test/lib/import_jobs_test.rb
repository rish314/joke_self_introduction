require "test_helper"

class ImportJobsTest < ActiveSupport::TestCase

  test "test true" do
    assert 2 < 3
  end

  test "職業一覧の取得" do
    html = File.read('test/fixtures/files/job_list_of_wikipedia.html')
    text = Tasks::ImportJobs.sanitize(html, '#bodyContent p')
    jobs = Tasks::ImportJobs.get_jobs(text)
    assert_includes jobs, '浮世絵師'

    #　"大学教授 "　のようにあとにスペースが入っていたため
    assert_includes jobs, '大学教授'

    assert_not_includes jobs, '職業教育'
  end
end
