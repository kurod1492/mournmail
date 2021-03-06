module Textbringer
  CONFIG[:mournmail_directory] = File.expand_path("~/.mournmail")
  CONFIG[:mournmail_accounts] = {}
  CONFIG[:mournmail_charset] = "utf-8"
  CONFIG[:mournmail_save_directory] = "/tmp"
  CONFIG[:mournmail_display_header_fields] = [
    "Subject",
    "Date",
    "From",
    "To",
    "Cc",
    "Reply-To",
    "User-Agent",
    "X-Mailer",
    "Content-Type"
  ]
  CONFIG[:mournmail_quote_header_fields] = [
    "Subject",
    "Date",
    "From",
    "To",
    "Cc"
  ]
  CONFIG[:mournmail_imap_connect_timeout] = 10
  CONFIG[:mournmail_keep_alive_interval] = 60
  case RUBY_PLATFORM
  when /mswin|mingw/
    CONFIG[:mournmail_file_open_comamnd] = "start"
    CONFIG[:mournmail_link_open_comamnd] = "start"
  when /darwin/
    CONFIG[:mournmail_file_open_comamnd] = "open"
    CONFIG[:mournmail_link_open_comamnd] = "open"
  else
    CONFIG[:mournmail_file_open_comamnd] = "xdg-open"
    CONFIG[:mournmail_link_open_comamnd] = "xdg-open"
  end
  CONFIG[:mournmail_addresses_path] = File.expand_path("~/.addresses")
  CONFIG[:mournmail_signature_regexp] = /^\n-- /
end
