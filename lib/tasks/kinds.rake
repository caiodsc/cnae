namespace :kinds do
  desc "TODO"
  task create_kinds: :environment do
    # Gerando os Kinds
    %x(rails db:drop db:create db:migrate)
    ['Débito', 'Juros', 'Financiamento', 'Crédito', 'Empréstimo'].each do |type|
      Kind.create!(:description => type)
    end
  end
end
