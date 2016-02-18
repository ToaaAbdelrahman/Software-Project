class LecturesController < ApplicationController
  def index
    @lectures = Lecture.all
  end

  def new
     @lecture = Lecture.new
  end

  def create
    @lecture = Lecture.new(lecture_params)
    if @lecture.save
       redirect_to lectures_path, notice: "The lecture #{@lecture.name} has been uploaded."
       @id = @lecture.id
       @attachment = @lecture.attachment
       pdf   = Grim.reap("public"+@attachment.url)
       @count = pdf.count
       for i in 0...@count
       png = pdf[i].save("app/assets/images/#{@id}.#{i}.jpg")
       object = Image.new(:pic => "images/#{@id}.#{i}.jpg", :lecture_id => "#{@id}" ,
         :no_Of_Pic => "#{i}")
        object.save
      end
    else
      render "new"
    end
  end

  def destroy
   @lecture = Lecture.find(params[:id])
   @lecture.destroy
   redirect_to lectures_path, notice:  "The lecture #{@lecture.name} has been deleted."
  end

  def show
    @lec = Lecture.find_by(id: params[:id])

  end

  private
  def lecture_params
    params.require(:lecture).permit(:name, :attachment)
  end
end
