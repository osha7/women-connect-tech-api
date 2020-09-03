# white list certian domains
# credentials

Rails.application.config.middleware.insert_before 0, Rack::Cors do 
    allow do
        origins 'http://localhost:3000'

        resource '*',
            headers: :any,
            methods: [:get, :post, :put, :patch, :delete, :options, :head],
            credentials: true
    end

    allow do
        origins 'http://localhost:3000/sessions'

        resource '*',
            headers: :any,
            methods: [:get, :post, :put, :patch, :delete, :options, :head],
            credentials: true
    end

    allow do
        origins 'http://localhost:3000/users'

        resource '*',
            headers: :any,
            methods: [:get, :post, :put, :patch, :delete, :options, :head],
            credentials: true
    end

    allow do
        origins 'http://localhost:3000/avatars'

        resource '*',
            headers: :any,
            methods: [:get, :post, :put, :patch, :delete, :options, :head],
            credentials: true
    end

    allow do
        origins 'http://localhost:3000/jobs'

        resource '*',
            headers: :any,
            methods: [:get, :post, :put, :patch, :delete, :options, :head],
            credentials: true
    end

    allow do
        origins 'http://localhost:3000/jobs/:id'

        resource '*',
            headers: :any,
            methods: [:get, :post, :put, :patch, :delete, :options, :head],
            credentials: true
    end

    allow do
        origins 'http://localhost:3002'

        resource '*',
            headers: :any,
            methods: [:get, :post, :put, :patch, :delete, :options, :head],
            credentials: true
    end
end