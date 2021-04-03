module ApplicationHelper
  def address_placeholder
    <<-"EOS".strip_heredoc
      福岡県福岡市中央区天神一丁目１番１号
      佐賀ビル１００階
    EOS
  end
end
