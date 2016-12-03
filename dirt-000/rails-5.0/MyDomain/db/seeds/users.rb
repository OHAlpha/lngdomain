def mkuser(un,em,ps,dn,fn,mn,ln,pc,sc,tc)
    user = Access::User.create do |u|
        cs = SecureRandom.hex(16)
        ss = SecureRandom.hex(32)
        is = 8000 + SecureRandom.random_number( 4001 )
        ch = OpenSSL::PKCS5.pbkdf2_hmac( ps, cs, is, 64, OpenSSL::Digest.new('sha512')).each_byte.map { |b| b.to_s(16) }.join
        sh = OpenSSL::HMAC.hexdigest( OpenSSL::Digest.new('sha512'), Access::User.hmac_key, ch + ss )
        u.unom = un
        u.email = em
        u.client_salt = cs
        u.iterations = is
        u.server_salt = ss
        u.passhash = sh
        u.dnom = dn
        u.fnom = fn
        u.mnoms = mn
        u.lnom = ln
    end
    user.create_pcol color: pc
    user.create_scol color: sc
    user.create_tcol color: tc
    user
end
user = mkuser 'alpha', 'lnugentgibson@gmail.com', 'Creations~900', 'oneWolf', 'Lloyd', 'Nugent', 'Gibson', 'red', 'white', 'black'
fnoms = ['Uno','Dos','Tres','Quatro']
mnoms = ['A','B','C','D']
pcols = ['red','yellow','green','blue']
scols = ['yellow','black','#8ff','white']
tcols = ['black','white','#80f','black']
(0..4).each do |i|
    mkuser "player_00#{i}", "player#{i+1}@email.com", '123', "Player #{i+1}", fnoms[i], mnoms[i], 'Wof', pcols[i], scols[i], tcols[i]
end