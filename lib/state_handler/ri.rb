class StateHandler::RI < StateHandler::Base
  PHONE_NUMBER = '+18889799939'
  ALLOWED_NUMBER_OF_EBT_CARD_DIGITS = [16]

  def button_sequence(ebt_number)
    "wwwwww1wwww2wwww#{ebt_number}ww"
  end

# FROM README: When you can get the balance coming through with your basic handler, uncomment definition below
  # def transcribe_balance_response(transcription_text, language = :english)
  #   mg = MessageGenerator.new(language)
  #   if transcription_text == nil
  #     return mg.having_trouble_try_again_message
  #   end
  #
  #   # Deal with an invalid card number
  #   if transcription_text.include?("didn't understand")
  #     return mg.card_number_not_found_message
  #   end
  #
  #   # Deal with a successful balance transcription
  #   regex_matches = transcription_text.scan(/(\$\S+)/)
  #   if regex_matches.count > 0
  #     ebt_amount = regex_matches[0][0]
  #     return mg.balance_message(ebt_amount)
  #   end
  #
  #   # Deal with any other transcription (catching weird errors)
  #   # You do not need to change this. :D
  #   return mg.having_trouble_try_again_message
  # end
end
