# Assembly Wales

Ruby gem to connect to the Assembly Wales XML feed

## Usage

```
    require 'assembly_wales'

    date = Date.parse('2013-02-20')

    record = AssemblyWales::Plenary.new(date)
```

contributions in the date are stored an Array of AssemblyWales::Speech modules

`record.speeches`

Any field from the XML can be called from each speech element

```
  record.speeches.each do |speech|
    speech.contribution_verbatim
  end
```

see [XML feed](http://www.assemblywales.org/docs/rop_xml/130220_plenary_bilingual.xml) for details
