class Tasks::ImportJobs < ApplicationRecord

  def self.run
    logger.info "---- START JOB ----"
    uri = URI.parse("https://ja.wikipedia.org/wiki/%E8%81%B7%E6%A5%AD%E4%B8%80%E8%A6%A7")
    response = Net::HTTP.get_response(uri)

    html = response.body # response body
    text = self.sanitize(html, '#bodyContent p')
    jobs = self.get_jobs(text)
    jobs.each do |job|
      Job.create(job_name: job)
    end
    logger.info "---- END JOB ----"
  end

  def self.get_jobs(text)
    # \R で改行で区切る
    jobs = text.split(/\R/).map do |line|
      if line.match(/ \- /)
        line.split(' - ')
      end
    end.flatten.compact.map { |job|
      # 注釈の印（*）を削除、前後の空白削除
      job.gsub(/\*$/, '').strip
    }
  end

  def self.sanitize(html, dom_id)
    Nokogiri::HTML(html).search(dom_id).text
  end

end
