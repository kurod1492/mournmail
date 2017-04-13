# frozen_string_literal: true

module Mournmail
  class MailMode < Textbringer::Mode
    MAIL_MODE_MAP = Keymap.new
    MAIL_MODE_MAP.define_key("\C-c\C-c", :mail_send)
    MAIL_MODE_MAP.define_key("\C-c\C-k", :mail_kill)

    def initialize(buffer)
      super(buffer)
      buffer.keymap = MAIL_MODE_MAP
    end
  end
end
