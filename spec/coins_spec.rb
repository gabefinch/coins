require('rspec')
require('coins')

describe('Float#coins') do
  it('produces an array of zeroes for input of 0') do
    expect((0.00).coins()).to(eq([0,0,0,0]))
  end

  it('correctly calculates a single coin return') do
    expect((0.25).coins()).to(eq([1,0,0,0]))
  end

  it('Uses math to figure out the correct number of dimes') do
    expect((0.35).coins()).to(eq([1,1,0,0]))
  end

  it('Returns proper change for a complex scenario') do
    expect((0.99).coins()).to(eq([3,2,0,4]))
  end

end
