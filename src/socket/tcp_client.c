#include <stdio.h>
#include <stdlib.h>

#include <sys/types.h>
#include <sys/socket.h>

#include <netinet/in.h>

int connect() {
	int network_socket;
	network_socket = socket(AF_INET, SOCK_STREAM, 0);

	// specify address
	struct sockaddr_in server_address;
	server_address.sin_family = AF_INET;
	server_address.sin_port = htons(9002);
	server_address.sin_addr.s_addr = INADDR_ANY; // 0.0.0.0

	int connection_status = connect(
		network_socket, 
		(struct sockaddr *) &server_address, 
		sizeof(server_address));

	if ( connection_status == -1 ) printf("error connecting...\n");

	// recieve data from the server
	char server_response[256];
	recv(network_socket, &server_response, sizeof(server_response, 0);

	// print server response
	printf("server returned: %s", server_response);

	close(sock);
	return 0;
}
