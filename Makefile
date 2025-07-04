#.PHONY: create_project
#create_project:
#	docker-compose run --rm api composer create-project laravel/laravel:^10 . --prefer-dist

.PHONY: run_api
run_api:
	docker-compose exec api bash -c "composer install && php artisan migrate && php artisan serve --host=0.0.0.0 --port=8000"
