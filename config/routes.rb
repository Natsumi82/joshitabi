Rails.application.routes.draw do
  namespace :admin do
    get 'homes/top'
  end
  namespace :admin do
    get 'posts/edit'
    get 'posts/show'
    get 'posts/index'
  end
  namespace :admin do
    get 'users/edit'
    get 'users/show'
    get 'users/index'
  end
  namespace :public do
    get 'users/edit'
    get 'users/show'
    get 'users/unsubscribe'
    get 'users/withdraw'
  end
  namespace :public do
    get 'searches/search'
  end
  namespace :public do
    get 'schedules/edit'
    get 'schedules/index'
    get 'schedules/new'
    get 'schedules/show'
  end
  namespace :public do
    get 'packings/edit'
    get 'packings/index'
    get 'packings/new'
    get 'packings/show'
  end
  namespace :public do
    get 'homes/about'
    get 'homes/home'
  end
 # ユーザー用
# URL /customers/sign_in ...
devise_for :users,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}


# 管理者用
# URL /admin/sign_in ...
devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}
end
