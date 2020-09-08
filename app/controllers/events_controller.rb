class EventsController < ApplicationController
    before_action :set_event, only: [:show, :edit, :update, :destroy]
    
    def index
        events = Event.all.sort_by{ |event| -event[:id] }
        render json: {
            events: events
        }
    end

    def show
        render json: {
            event: @event
        }
    end

    def create
        @event = Event.create(event_params)

        if @event.valid?
            render json: @event
        else
            render json: {error: 'Unable to create event'}
        end
    end

    def edit
    end

    def update
        @event.update(event_params)
        if @event.valid?
            @event.save
            render json: @event
        else
            render json: { error: 'Unable To Save Edit At This Time'}
        end
    end

    def destroy
        @event.destroy
        render json: @event
    end
    
    private

    def set_event
        @event = Event.find_by(id: params[:id])
    end

    def event_params
        params.require(:event).permit(:id, :title, :info, :date, :time, :contact_person, :email, :link, :user_id)
    end

end
