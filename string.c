
/*Program :

	Accept a string from the user and create appropriate user-defined functions for performing the
	following operations:
	1. Display the length of the string
	2. Show the number of occurrence of a given character within the string
	3. Reverse the string
	4. Check whether the string is palindrome
	5. Create a copy of the string
	6. Concatenate two strings

	Created by : Raj Dhamsaniya
	Created on : November 4 , 2015
*/

#include<stdio.h>
void main()
{
	int iNum , i , ch;

	char str1[100] , str2[100]={0} , str3[200]={0};

	int str_len(char str[]);
	void str_occ(char str1[]);
	void str_rev(char str[]);
	void str_pelin(char str1[] , char str2[]);
	void str_copy(char str1[] , char str2[]);
	void str_concat(char [] , char [] , char []);

	system("clear");

	while(ch)
	{

		printf("Enter The Choice from given Menu: \n\n0.Exit \n1.The length of the string \n2.Show the number of occurrence of a given character within the string \n3.Reverse the string  \n4.Check whether the string is palindrome \n5.Create a copy of the string \n6.Concatenate two strings \n\nCHOICE : "); 	
		scanf("%d",&ch);

		if(ch != 0)
		{
			printf("\nEnter the String : ");
			scanf("%s",str1);
		}


		switch(ch)
		{
			case 0 : 
			{
				break;
			}

			case 1 : //Display the length of the string
			{
				printf("\nstring length is %d" , str_len(str1));
				break;
			}

			case 2 ://Show the number of occurrence of a given character within the string 
			{
				str_occ(str1);
				break;
			}

			case 3 ://Reverse the string 
			{
				str_rev(str1);	
				printf("the reverse string is : %s",str1);	
				break;
			}

			case 4 ://Check whether the string is palindrome 
			{
				str_pelin(str1 , str2);
				break;
			}

			case 5 ://Create a copy of the string
			{
				str_copy(str1 ,  str2);
				printf("\nNew copy of string %s is : %s",str1,str2);
				break;
			}

			case 6 ://Concatenate two strings 
			{
				printf("\nEnter another String : ");
				scanf("%s",str2);

				str_concat(str1,str2,str3);
				printf("\nconcatenate of both string is : %s",str3);
				break;
			}
			default :
			{
				printf("Please , Enter valid choice : ");
			}
		}	

		printf("\n\n");
	}
}


int str_len(char str[])
{
	int i;

	for(i=0 ; str[i] != 0 ; i++);
	
	return(i);
}


void str_occ(char str1[])
{
	int i , iCnt , j; 
	int str_len(char str2[]);
	int len = str_len(str1); 

	for(i=0;i<len;i++)
        {
		iCnt=1;

	        for(j=i+1;j<=len-1;j++)
            	{
	                if(str1[i]==str1[j] && str1[i]!='\0')
	            	{
			        iCnt++;

		            	str1[j]='\0';
	                }

                }

	        if(str1[i]!='\0')
	        {
	                printf("%c occurs %d times in the array.\n",str1[i],iCnt);
                }
	 }	
}



void str_rev(char str_r[])
{
	int i , temp ;

	int str_len(char []);
	int n = (str_len(str_r));


	for(i=0 ; i < n/2 ; i++)
	{
		temp = str_r[i];
		str_r[i] = str_r[n-1-i];
		str_r[n-i-1] = temp;
	}

}



void str_pelin(char str1[] ,char str2[])
{
	int str_len(char str1[]);
	int i , j=0 , len = str_len(str1);

	void str_copy(char str1[] , char str2[]);
	void str_rev(char str_r[]);

	str_copy(str1,str2);
	str_rev(str2);

	for(i=0 ; i< len ; i++)
	{
		str1[i] == str2[i] ? : j++;
	} 
	
	j>0 ? printf("\nString is not Pelindrome \n") : printf("\nString is Pelindrome \n");
}


void str_copy(char str1[] , char str2[])
{
	int str_len(char str1[]);
	int i , len;
	len = str_len(str1);

	for(i=0 ; i<len ; i++)
	str2[i] = str1[i];
}



void str_concat(char str1[], char str2[] , char str3[])
{
	int n1 , n2 , n3 , i ;

	int str_len(char str1[]);
	int str_len(char str2[]);

	n1 = str_len(str1);
	n2 = str_len(str2);

	printf("%d , %d",n1 ,n2);

	n3 = n1 + n2;

	for(i=0 ; n1 > i ; i++ )
	{
		str3[i]=str1[i];
	}

	for(i=n1 ; n2>0 ; n2-- , i ++)
	{
		str3[i]=str2[i-n1];
	}
}
