DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': 'blog_db',
        'USER': 'user',
        'PASSWORD': 'password',
        'HOST': 'db',  # El nombre del servicio de la base de datos en docker-compose
        'PORT': '5432',
    }
}
