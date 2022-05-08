require 'rails_helper'
RSpec.describe Mee, type: :model do
  before do
    @mee = FactoryBot.build(:mee)
  end
  describe 'ユーザー新規登録' do
    it 'q_1が空では登録できない' do
      @mee.q_1 = ''  
      @mee.valid?
      expect(@mee.errors.full_messages).to include "Q 1を入力してください"
    end
  end
end