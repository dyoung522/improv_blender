class User < ActiveRecord::Base
  def first_name
    name_first.capitalize if name_first
  end

  def last_name
    name_last.capitalize if name_last
  end

  def middle_name
    name_middle.capitalize if name_middle
  end

  def middle_initial
    initial_for name_middle
  end

  def full_name
    "#{name_first} #{middle_initial} #{name_last}".split.map(&:capitalize).join(' ')
  end

  def familiar_name
    nickname.nil? ? first_name : nickname.capitalize
  end

  protected

  def initial_for(name)
    "#{name[0].upcase}." unless name.nil?
  end
end
