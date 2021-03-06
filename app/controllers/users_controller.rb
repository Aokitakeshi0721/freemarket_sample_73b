class UsersController < ApplicationController
  before_action :move_to_index
  before_action :move_to_mypage, except: :complete

  def show
    @user = User.find(params[:id])
    @contents = [
    # {name:"マイページ",path: "/users/#{@user.id}",verb: "GET"},
    # {name: "お知らせ", path:"#", verb: "GET"},
    # {name: "やることリスト", path:"#", verb: "GET"},
    # {name: "いいね！一覧", path:"#", verb: "GET"},
    {name: "出品する", path:"/products/new", verb: "GET"},
    # {name: "下書き一覧", path:"#", verb: "GET"},
    {name: "出品した商品-出品中", path:"#", verb: "GET"},
    # {name: "出品した商品-取引中", path:"#", verb: "GET"},
    {name: "出品した商品-売却済み", path:"#", verb: "GET"},
    # {name: "購入した商品-取引中", path:"#", verb: "GET"},
    {name: "購入した商品-過去の取引", path:"#", verb: "GET"},
    # {name: "ニュース一覧", path:"#", verb: "GET"},
    # {name: "評価一覧", path:"#", verb: "GET"},
    # {name: "ガイド", path:"#", verb: "GET"},
    # {name: "お問い合わせ", path:"#", verb: "GET"}
  ]
    # @furimapays = [
    # {name:"売上・振込申請",path: "#",verb: "GET"},
    # {name:"ポイント",path: "#",verb: "GET"}]
    @settings = [
    # {name:"プロフィール",path: "#",verb: "GET"},
    # {name:"発送元・お届け先住所変更",path: "#",verb: "GET"},
    {name:"支払い方法",path: "/credit_cards/new",verb: "GET"},
    # {name:"メール/パスワード",path: "#",verb: "GET"},
    # {name:"本人情報",path: "#",verb: "GET"},
    # {name:"電話番号の確認",path: "#",verb: "GET"},
    {name:"ログアウト",path: "/users/sign_out",verb: "DELETE"}
  ]
  end

  private
  def move_to_index
    redirect_to root_path unless user_signed_in?
  end

  def move_to_mypage
    @user = User.find(params[:id])
    redirect_to user_path(current_user) if current_user.id != @user.id
  end

end
