module AssemblyWales 
  BASE_URL = 'http://www.assemblywales.org/docs/rop_xml/'
  class Plenary

    attr_accessor :date, :record

    # Public: Retrieve a Plenary record
    def initialize(date)
      @date = date 
      @record = parse_xml(build_url(date))
    end

    private

    def build_url(date)
      BASE_URL + date.strftime('%y%m%d') + '_plenary_bilingual.xml'
    end

    def parse_xml(url)
      Nokogiri::XML(open(url))
    end
  end
end
