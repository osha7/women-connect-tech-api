class JobsController < ApplicationController

    def index
        jobs = Job.all.sort_by{ |job| -job[:id]}
        render json: {
            jobs: jobs
        }
    end

    def show
        @job = Job.find_by(id: params[:id])
    end

    def create
        @job = Job.create(job_params)
    end

    def destroy
        job = Job.find_by(id: params[:id])
        job.destroy
    end

    private

    def job_params
        params.permit(:id, :title, :info, :salary_starting_range, :salary_highest_range, :contact_person, :email, :phone, :saved, :date)
    end

end
