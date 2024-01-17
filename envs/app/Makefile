BLUE-DIRECTORY = cd blue
FRONT-DIRECTORY = cd front
BLUE-DIRECTORY-NAME = blue

for-local:
	@${BLUE-DIRECTORY} && \
		ln -fs ../../local_provider.tf ./provider.tf && \
		ln -fs ../local_blue_backend.tf ./backend.tf && \
		ln -fs ../local_remotestate.tf ./remotestate.tf
	@${FRONT-DIRECTORY} && \
		ln -fs ../../local_provider.tf ./provider.tf && \
		ln -fs ../local_front_backend.tf ./backend.tf && \
		ln -fs ../local_infra_app_remotestate.tf ./remotestate.tf
	

for-codebuild:
	@${BLUE-DIRECTORY} && \
		ln -fs ../../provider.tf ./provider.tf && \
		ln -fs ../blue_backend.tf ./backend.tf && \
		ln -fs ../remotestate.tf ./remotestate.tf
	@${FRONT-DIRECTORY} && \
		ln -fs ../../provider.tf ./provider.tf && \
		ln -fs ../front_backend.tf ./backend.tf && \
		ln -fs ../infra_app_remotestate.tf ./remotestate.tf
