require 'spec_helper'

describe Coin do

  before { @coin = Coin.new(:name=> "Morgan", :description=> "Morgan Silver Dollar", :startYear=>1890, :endYear=>1921) }

  subject { @coin }

  it { should respond_to(:name) }
  it { should respond_to(:description) }
  it { should respond_to(:startYear) }
  it { should respond_to(:endYear) }
 
end
