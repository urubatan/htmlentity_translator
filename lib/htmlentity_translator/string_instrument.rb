class ::String
  def decode_entities
    HtmlentityTranslator::EntityMaper.decode_entities(self)
  end
  def encode_entities
    HtmlentityTranslator::EntityMaper.encode_entities(self)
  end
end