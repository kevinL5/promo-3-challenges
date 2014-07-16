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
    "#{@amount} at #{@time.strftime("%Y-%d-%m")} #{@time.strftime("%H:%M:%S %Z")}"
  end
end
