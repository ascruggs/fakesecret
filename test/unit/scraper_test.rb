require 'test_helper'
class ScraperTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  def test_hash_return
    parser = Nokogiri::HTML(open("#{Rails.root}/test/data/postsecret.html"))   
    mock(page = Object.new).parser {parser}
    stub.instance_of(Mechanize).get("http://www.postsecret.com/") {page }
    assert_equal Scraper.get_content, {:date=>"5/23/2010", :images=>["./test_files/howsitgoing.jpg", "./test_files/onecoworkerandacup.jpg", "./test_files/2010-08.jpg", "./test_files/keith.jpg", "./test_files/vibrate.jpg", "./test_files/criketreference.jpg", "./test_files/nose2.jpg", "./test_files/liberty.jpg", "./test_files/hotttshit.jpg", "./test_files/thatlie.jpg", "./test_files/postecret_community.gif", "./test_files/RIP.jpg", "./test_files/climaxe.jpg", "./test_files/vortex.jpg", "./test_files/dreamon.jpg", "./test_files/yethappy.jpg", "./test_files/benched.jpg", "./test_files/books_icon.gif", "./test_files/apple.jpg", "./test_files/iwish.jpg", "./test_files/badbeat.jpg", "./test_files/hopkins.jpg", "./test_files/HiMatdog.jpg", "./test_files/twitterBirdPumpkinStencilbw.jpg", "./test_files/polarbear.jpg", "./test_files/breathwishlight.jpg", "./test_files/LOSTRIP.jpg", "./test_files/barcodsticker.jpg", "./test_files/M.jpg", "./test_files/secretring5.jpg", "./test_files/exhibit5.jpg", "./test_files/intern5.jpg"]}
  end
end