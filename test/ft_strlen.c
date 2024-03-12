int ft_strlen(char *msg){
	int i = -1;
	while(msg && msg[++i])
		continue;
	return i;
}
