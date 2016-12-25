Kms::Public::PagesController.class_eval do
  protected

  def eval_externals
    @externals = Hash[Kms::ExternalsRegistry.externals.map { |k, v| [k, v.call(request, self)] }]
    @page = @externals[:page].source
    @template = @page.template
  rescue ActiveRecord::RecordNotFound
    # try to find with first "/" character or without it
    redirect = Kms::Redirect.where("source in (?)", [request.fullpath, request.fullpath.sub('/', '')]).first
    if redirect
      redirect_to URI.join(main_app.root_url, redirect.destination).to_s, status: :moved_permanently
    else
      render file: "#{Rails.root}/public/404.html", layout: false, status: :not_found unless redirect
    end
  end
end
