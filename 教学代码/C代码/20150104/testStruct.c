#include<stdio.h>

    typedef struct employee
    {
        int age;//年龄
        int workExperence;//工作年限
        double salary;//工资
    } EmployeeType;

int main (int argc, const char *argv[])
{
    //声明一个结构体 语法struct tag {成员列表} 变量列表；
    //成员列表以分号隔开
    //变量列表以逗号隔开
    EmployeeType softManager;
    struct 
    {
        int age;//年龄
        int workExperence;//工作年限
        double salary;//工资
    } manager1;

    //注意， 上面两个结构体类型成员列表虽然是一样的， 但是他们是不同的数据类型

    //softManager = manager1;//因为两个变量的数据类型不同， 所以肯定不能这样赋值

   // struct employeeType manager1;
    employeeType manager1;
    manager1.age = 22;
    manager1.workExperence = 3;
    manager1.salary = 13000.00;
    employeeType manager2;


    manager2 = manager1;

    printf("the manager2's info is %d, %d, %.2f",manager2.age,manager2.workExperence,manager2.salary);



    employeeType manager3 = {25,10,20000.00f};

    //下面这样的赋值是不行的， 这里还是需要理解初始化和赋值的不同点
    //employeeType manager4;
    //manager4 = {26,20,40000.00f};


    printf("the manager3's info is %d, %d, %.2f",manager3.age,manager3.workExperence,manager3.salary);
    return 0;
}


void myFunction()
{
    //声明和softManager变量同样的类型的变量
//    struct employee softManager1;    
    EmployeeType softManager1;
}
