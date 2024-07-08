#include "ls1x.h"
#include "Config.h"
#include "ls1x_gpio.h"
#include "ls1x_latimer.h"
#include "esp8266.h"
#include "ls1c102_interrupt.h"
#include "iic.h"
#include "oled.h"
#include "dht11.h"
#include "BEEP.h"
#include "key.h"
#include "led.h"
#include "queue.h"


#define LED 20

char str[50];
static uint16_t temperature;
static uint16_t humidity;

uint8_t data[8] = {0x55, 0xAA, 0x00, 0x00, 0x00, 0x00, 0x00, 0xBB}; //温湿度数据上云平台    数据包

int main(int arg, char *args[])
{
    SystemClockInit(); // 时钟等系统配置
    GPIOInit();        // io配置
    OLED_Init();
    DHT11_Init();
    EnableInt(); // 开总中断

    Queue_Init(&Circular_queue);
    BEEP_Init();
    Uart0_init(9600); // 串口0初始化，io06 io07   串口初始化需要在开启EnableInt之后

    OLED_Show_Str(20, 3, "温度:     ", 16);     // OLED显示界面
    OLED_Show_Str(20, 6, "湿度:     ", 16);
    while (1)
    {
        DHT11_Read_Data(&temperature, &humidity); // 读取温湿度值

        data[2] = (temperature / 10)/2-6;     //将温湿度数据存放至数据包中
        data[3] = humidity / 10;

        if((temperature / 10) < 28)
        {
            OLED_Show_Str(70, 3, "Low   ", 16);
        }
        else if((temperature / 10) > 35)
        {
            OLED_Show_Str(70, 3, "High  ", 16);
        }
        else
        {
            OLED_Show_Str(70, 3, "Normal", 16);
        }

        if((humidity / 10) < 60)
        {
            OLED_Show_Str(70, 6, "Low   ", 16);
        }
        else
        {
            OLED_Show_Str(70, 6, "Normal", 16);
        }

        if(wifi_connected == 0)
        {
            if(esp8266_check_cmd('T'))     //当收到'T'字符时，表示ESP8266连接成功
            {
                wifi_connected = 1;
                delay_ms(1000);
                delay_ms(500);
                gpio_write_pin(LED, 1);
                BEEP_ON;
                delay_ms(500);
                BEEP_OFF;
            }
        }
        if(wifi_connected == 1)
        {
            delay_ms(1500);
            data[6] = (data[2] + data[3] + data[4] + data[5]) % 256;   //计算校验和
            printf("%s",data);
            UART_SendDataALL(UART0, data, 8);
        }
    }

    return 0;
}
