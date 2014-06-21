require 'spec_helper'
require_relative '../../app/models/game'

RSpec.describe Game do
  describe '#result' do
    subject { game.result }

    context 'when sign is Rock' do
      let(:game) { Game.new 'Rock' }

      context 'when result is Rock' do
        before { allow(game).to receive(:throw_result).and_return 'Rock' }
        it { is_expected.to eq 'Draw' }
      end

      context 'when result is Paper' do
        before { allow(game).to receive(:throw_result).and_return 'Paper' }
        it { is_expected.to eq 'Lose' }
      end

      context 'when result is Scissors' do
        before { allow(game).to receive(:throw_result).and_return 'Scissors' }
        it { is_expected.to eq 'Win' }
      end
    end

    context 'when sign in Paper' do
      let(:game) { Game.new 'Paper' }

      context 'when result is Rock' do
        before { allow(game).to receive(:throw_result).and_return 'Rock' }
        it { is_expected.to eq 'Win' }
      end

      context 'when result is Paper' do
        before { allow(game).to receive(:throw_result).and_return 'Paper' }
        it { is_expected.to eq 'Draw' }
      end

      context 'when result is Scissors' do
        before { allow(game).to receive(:throw_result).and_return 'Scissors' }
        it { is_expected.to eq 'Lose' }
      end
    end

    context 'when sign is Scissors' do
      let(:game) { Game.new 'Scissors' }

      context 'when result is Rock' do
        before { allow(game).to receive(:throw_result).and_return 'Rock' }
        it { is_expected.to eq 'Lose' }
      end

      context 'when result is Paper' do
        before { allow(game).to receive(:throw_result).and_return 'Paper' }
        it { is_expected.to eq 'Win' }
      end

      context 'when result is Scissors' do
        before { allow(game).to receive(:throw_result).and_return 'Scissors' }
        it { is_expected.to eq 'Draw' }
      end
    end
  end
end
