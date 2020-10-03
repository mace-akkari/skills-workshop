require 'library.rb'

describe Library do
  it 'can find a specific book' do
    expect(subject.find_book('POODR')).to eq ({title: 'POODR', author: 'Sandi Metz', subject: 'OOP'})
  end

  it 'can add a new book' do
    expect(subject.add_book('title')).to include('title')
  end

  it 'can remove a book' do
    expect(subject.remove_book('POODR')).not_to include({title: 'POODR', author: 'Sandi Metz', subject: 'OOP'})
  end

  it 'can list all the books on a specific subject' do
    expect(subject.all_books_by_subject('JS')).to include ({title: 'Eloquent JavaScript', author: 'Marijn Haverbeke', subject: 'JS'}.to_h)
  end
end
