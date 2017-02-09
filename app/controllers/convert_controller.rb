class ConvertController < ApplicationController
  def index
  end

  def submit
    uploaded_file = params[:file]

    if uploaded_file.size < 5242880
      if IO.binread(uploaded_file.path, 4) == 'ScsC'
        system("java -jar scsc/scsc.jar #{uploaded_file.path}")
        send_file(uploaded_file.path, :filename => uploaded_file.original_filename)
      else
        render 'convert/error'
      end
    else
      render 'convert/error'
    end
  end

  def error
  end
end
