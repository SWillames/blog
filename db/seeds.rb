# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

posts = Post.create(
        [
            {title: 'Manuel Carlos retweetou', 
            content: "Há um cara que eu detesto, abomino o fdp, mas
            que um dia cagou na cabeça do STF"},
            {title: 'Danilo Gentili', 
            content: 'As agressões permitidas são seletivas e seguem 
            um index a ser divulgado no Terça Livre em breve.'},
            {title: 'Mita Guimarães', 
            content: "Como se obriga 'democraticamente'
            um Ministro do STF a respeitar a lei quando ele se nega? Alguém sabe?"}
        ]
    )

comments = Comment.create(
        [
            {name: 'Rivaldo Gomez', 
            comment: 'Você apanha do Diguinho, que nem consegue se movimentar direito',
            post_id: posts[1].id},
            {name: 'Flávio Coelho',
            comment: 'Tivemos Grande Otelo, Chico Anisio, Jô, etc. Hj temos esses talentos... kkkkk',
            post_id: posts[1].id},
            {
              name: 'Leandro Ooo Santos',
              comment: 'Neto está dentro dele agora! Só falta atiar o fogo.',
              post_id: posts.last     
            },
            {
              name: 'Luiza MC',
              comment: 'Acho Stalin mais parecido!!!',
              post_id: posts.last
            }
            ])