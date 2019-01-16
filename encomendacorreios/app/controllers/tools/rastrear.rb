require 'correios-sro-xml'

def rastrear (codigo)
    sro = Correios::SRO::Tracker.new(user:"ECT", password:"SRO")
    object = sro.get(codigo)
end