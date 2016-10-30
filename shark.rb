class Shark
  attr_accessor :health, :mood, :hunger, :asleep, :intelect, :mana
  def initialize(name)
    @birthday = Time.now
    @time = @birthday
    @name = name
    @health = 10
    @mood = 5
    @hunger = 5
    @asleep = false
    @intelect = 1
    @mana = 10
  end

  def put_to_bed
    puts 'Вы кладете ' + @name + '(а) дрыхнуть.'
    @asleep = true
    puts @name + ' храпит, наполняя аквариум бульбами.'
    passage_of_time
    @asleep = false
    puts @name + ' медленно просыпается.'
  end

  def feed
    puts 'Вы кормите ' + @name + '(а).'
    @hunger = 0
    @mana += 10
    passage_of_time
  end

  def play
    puts 'Вы играете с ' + @name + '(ом). '
    @intelect += 2
    @hunger += 1
    @mood += 10
    passage_of_time
  end

  def hunt
    puts 'Вы охотитесь вместе с ' + @name + '(ом).'
    @hunger = 0
    @mood += 2
    passage_of_time
  end

  def training
    puts 'Вы воспитываете ' + @name + '(а).'
    @mood -= 2
    passage_of_time
  end

  def party
    puts 'Вы отправили ' + @name + '(а) на вечеринку'
    @mood += 5
    passage_of_time
  end

  def fight
    puts 'Вы помагаете' + @name + '(у) , бороться за права акул'
    @health -= 2
    passage_of_time
  end

  def sport
    puts 'Вы занимаетесь спортом с ' + @name + '(ом)'
    @helth += 4
    passage_of_time
  end

  def beaten
    puts 'Вы избили' + @name + '(а)'
    @health -= 6
    @mood -= 2
    passage_of_time
  end

  def doctor
    puts 'Лечите' + @mame + '(а)'
    @health += 4
    @mood += 4
    passage_of_time
  end

  private

  def passage_of_time
    @time += 600
    @hunger += 2
    @mana += 2
    death if @health <= 0
  end

  def death
    puts @name + ' скоропостижно покинул Вас'
  end
end
