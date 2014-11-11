module AssemblyWales
  BASE_URL = 'http://www.assembly.wales/Record%20of%20Proceedings%20XML/'
  class Plenary

    attr_accessor :date, :record, :speeches

    # Public: Retrieve a Plenary record
    def initialize(date)
      @date = date
      @record = parse_xml(build_url(date))
      @speeches = parse_speeches
    end

    private

    def build_url(date)
      BASE_URL + date.strftime('%y%m%d') + '_Plenary_Bilingual.xml'
    end

    def parse_xml(url)
      HTTParty.get(url).first[1]["XML_Plenary_Bilingual"]
    end

    def parse_speeches
      collect_speeches = []
      record.each do |raw_speech|
        speech = {}
        raw_speech.each_pair do |k,v|
          speech.merge!(k.downcase => v)
        end
        collect_speeches << AssemblyWales::Speech.new(speech)
      end
      collect_speeches
    end
  end
end
