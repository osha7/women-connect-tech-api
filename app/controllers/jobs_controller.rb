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
        # byebug
        job = Job.create(job_params)
        if job.valid?
            render json: job
        else
            render json: {error: 'Unable to save job'}
        end
    end

    def destroy
        job = Job.find_by(id: params[:id])
        job.destroy
        render json: job
    end

    private

    def job_params
        params.require(:job).permit(:id, :title, :info, :salary_starting_range, :salary_highest_range, :contact_person, :email, :phone, :saved, :date)
    end

end
