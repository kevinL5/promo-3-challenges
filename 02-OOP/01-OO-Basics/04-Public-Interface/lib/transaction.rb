require 'time'

# Optional
class Transaction
  def initialize(amount)
    # Initialize amount and date of transaction
    @amount = amount
    @time = Time.now

    to_s
  end

  def to_s
    # Nicely print transaction infos using Time#strftime.
    @time.strftime("#{@amount} on %Y-%d-%m at %H:%M:%S")
  end
end
