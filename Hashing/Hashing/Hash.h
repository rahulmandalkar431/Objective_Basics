struct Record *hash_table[MAX];
struct Employee employee_record;
int count, key, option;
for(count = 0; count <= MAX - 1; count++)
{
    hash_table[count] = NULL;
}
while(1)
{
    printf("1. Insert a Record in Hash Table\n");
    printf("2. Search for a Record\n");
    printf("3. Delete a Record\n");
    printf("4. Show Hash Table\n");
    printf("5. Quit\n");
    printf("Enter your option\n");
    scanf("%d",&option);
    switch(option)
    {
        case 1 :
            printf("Enter the Employee Details\n");
            printf("Employee ID:\t");
            scanf("%d", &employee_record.employee_id);
            printf("Employee Name:\t");
            scanf("%s", employee_record.employee_name);
            printf("Employee Age:\t");
            scanf("%d", &employee_record.employee_age);
            insert(employee_record, hash_table);
            break;
            
        case 2 :
            printf("Enter the element to search:\t");
            scanf("%d", &key);
            count = search_element(key, hash_table);
            if(count == -1)
            {
                printf("Element Not Found\n");
            }
            else
            {
                printf("Element Found in Chain:\t%d\n", count);
            }
            break;
            
        case 3:
            printf("Enter the element to delete:\t");
            scanf("%d", &key);
            remove_record(key, hash_table);
            break;
            
        case 4:
            show(hash_table);
            break;
            
        case 5:
            exit(1);
    }
}
